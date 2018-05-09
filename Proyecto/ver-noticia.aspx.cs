using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto
{
    public partial class ver_noticia : System.Web.UI.Page
    {
        String a; //Donde guarda el msj del comentario
        protected void Page_Load(object sender, EventArgs e)
        {
            //SI SE SELECCIONO UNA NOTICIA EN UNA VENTANA ANTERIOR SE DESPLIEGA LA INFORMACION
            if (this.Session["VSUsuario"] == null)
            {
                this.Response.Redirect("Login.aspx");
            }
           /* if (this.Session["VSTitulo"] != null)
            {
                lblTitulo.Text = (String) this.Session["VSTitulo"];
                lblTexto.Text = (String)this.Session["VSTexto"];
                
            }*/
            String id = Convert.ToString(Request.QueryString["id"]);
            String idUsuario = "";
            SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\Mario\\Documents\\Aplicaciones_NET\\U4\\conn_bd\\BD_proyecto_post.mdf; Integrated Security = True; Connect Timeout = 30");
            conn.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM Noticias WHERE id="+id+";", conn);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {

                    lblTitulo.Text = reader["Titulo"].ToString();
                    lblTexto.Text = reader["Cuerpo"].ToString();
                    idUsuario = reader["id_usuario"].ToString();
                }
            }
            conn.Close();
            conn.Open();
            SqlCommand command2 = new SqlCommand("SELECT * FROM Usuarios WHERE id=" + idUsuario + ";", conn);
            using (SqlDataReader reader = command2.ExecuteReader())
            {
                if (reader.Read())
                {

                    lblUsuario.Text = reader["NombreUsuario"].ToString();
                }
            }
            conn.Close();

            conn.Open();
            SqlCommand command3 = new SqlCommand("SELECT *  , (SELECT nombreusuario FROM Usuarios WHERE id = id_usuario) As Nombre FROM Comentarios WHERE id_noticia=" + id+ ";", conn);
            using (SqlDataReader reader = command3.ExecuteReader())
            {
               while (reader.Read())
                {
                    lblComentario.Controls.Add(new Label() {
                        Text ="</br>"+reader["Nombre"]+": "+ reader["comentario"].ToString()+"</br>"
                        }
                        );
                   
                }
            }
            conn.Close();

        }

        protected void lnkbCerrarSesion_Click(object sender, EventArgs e)
        {
            //TERMINA LA SESION CREADA
            this.Session.Abandon();
            this.Response.Redirect("Login.aspx");
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //Enviar Mensaje a guardar
            txtmensaje.Text = "";
            lblComentario.Text = (String)this.ViewState["comentario"];
            string script = "alert(\"Comentario enviado correctamente\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }

        protected void txtmensaje_TextChanged(object sender, EventArgs e)
        {
            //SETEO del msj a una variable de estado
            a = txtmensaje.Text;
            this.ViewState["comentario"] = a;
        }
    }
}