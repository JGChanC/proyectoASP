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
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["VSUsuario"] == null)
            {
                this.Response.Redirect("Login.aspx");
            }
            if (this.Session["VSNombre"] != null)
            {
                lblNombre.Text =(String) this.Session["VSNombre"];
            }
            String user= "";
            if (Request.QueryString["user"]==null)
            {
                user = this.Session["VSUsuario"].ToString();
            }else
            {
                user = Request.QueryString["user"];
            }

            this.ViewState["VEUser"]=user;

            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\VS2015\\U_3\\ProyectoU4\\conn_bd\\BD_proyecto_post.mdf;Integrated Security=True;Connect Timeout=30");
            conn.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM Usuarios WHERE nombreusuario='" + user+ "';", conn);
            String id = "", nombre = "", apellido = "";
            String titulo = "", idNoticia=""; 
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    id = reader["id"].ToString();
                    nombre = reader["nombre"].ToString();
                    apellido = reader["apellido"].ToString();
                    this.ViewState["VEID_User"] = id;
                    lblNombre.Text =nombre.ToUpper()+" "+apellido.ToUpper();
                }
            }
            conn.Close();

            SqlCommand command2 = new SqlCommand("SELECT * FROM Noticias WHERE id_usuario=" + id + ";", conn);
            conn.Open();
            using (SqlDataReader reader = command2.ExecuteReader())
            {
                while (reader.Read())
                {
                    segunda_caja.Controls.Add(new Label(){

                        Text = "</br><a style=\"paddind-left:10px; color:white; \" runat=\"server\" href=\"ver-noticia.aspx?id=" + reader["id"]+"\">"+reader["titulo"]+" </a></br>"
                        
                    });
                    idNoticia = reader["id"].ToString();
                    titulo = reader["titulo"].ToString();
                }
            }
            conn.Close();

            if (!idNoticia.Equals(""))
            {
                lblActividad_Reciente.Text = "<a style=\"paddind-left:10px; /*color:white;*/ \" runat=\"server\" href=\"ver-noticia.aspx?id=" + idNoticia + "\">" + titulo + " </a>"+ "Hace 1 dia </br>";
            }

            SqlCommand command3 = new SqlCommand("SELECT * , (SELECT nombreusuario FROM Usuarios WHERE id = id_usuario) As Nombre  FROM Comentarios WHERE id_perfil=" + id + ";", conn);
            conn.Open();
            using (SqlDataReader reader = command3.ExecuteReader())
            {
                while (reader.Read())
                {
                    cont_mensaje.Controls.Add(new Label()
                    {
                        Text = "</br></br>" + reader["Nombre"].ToString()+": "+reader["comentario"].ToString()
                    }
               );
                }
            }
            conn.Close();
        }

        protected void lnkbCerrarSesion_Click(object sender, EventArgs e)
        {
            this.Session.Abandon();
            this.Response.Redirect("Login.aspx");
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            String user = (String)this.ViewState["VEUser"];
            String id = (String)this.ViewState["VEID_User"];
            String user_actual = this.Session["VSUsuario"].ToString();
            String id_actual = "";
            String OrdenSql;

            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\VS2015\\U_3\\ProyectoU4\\conn_bd\\BD_proyecto_post.mdf;Integrated Security=True;Connect Timeout=30");
            conn.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM Usuarios WHERE nombreusuario='" + user_actual + "';", conn);
           
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    id_actual = reader["id"].ToString();
                }
            }
            conn.Close();
         

            try
            {
                conn.Open();
                OrdenSql = String.Format("INSERT INTO Comentarios(id_usuario,id_perfil,comentario)VALUES({0},'{1}','{2}')", id_actual,id,txtmensaje.Value.ToString());
                SqlCommand cmd = new SqlCommand(OrdenSql, conn);
                cmd.ExecuteNonQuery();
                //lblMensaje.Text = "Se inserto datos";
                conn.Close();
            }
            catch (Exception ex)
            {
                //lblMensaje.Text = "Error de Inserccion" + ex.Message;
            }

            cont_mensaje.Controls.Add(new Label()
            {
                Text =user_actual+": "+ txtmensaje.Value
            }
                );

            txtmensaje.Value = "";


        }
    }
}