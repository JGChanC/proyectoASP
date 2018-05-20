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

            /*
             * 
             * 
             * 
             */

            String id = Convert.ToString(Request.QueryString["id"]);
            this.ViewState["VEID"] = id; 
            String idUsuario = "";
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Roger\\Documentos\\VisualStudio\\proyectoASP\\BD_proyecto_post.mdf;Integrated Security=True;Connect Timeout=30");
            conn.Open();
            //OPTENGO LA INFORMACION DE LA NOTICIA
            SqlCommand command = new SqlCommand("SELECT * FROM Noticias WHERE id="+id+";", conn);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    //LA PONGO EN LO LABELS
                    lblTitulo.Text = reader["Titulo"].ToString();
                    lblTexto.Text = reader["Cuerpo"].ToString();
                    //OPTENGO LA ID DEL CREADOR DE LA NOTICIA
                    idUsuario = reader["id_usuario"].ToString();
                }
            }
            conn.Close();

            conn.Open();
            //BUSCO SU NOMBRE DE USUARIO POR MEDIO DE SU ID
            SqlCommand command2 = new SqlCommand("SELECT * FROM Usuarios WHERE id=" + idUsuario + ";", conn);
            using (SqlDataReader reader = command2.ExecuteReader())
            {
                if (reader.Read())
                {

                    lblUsuario.Text = "<a runat=\"server\" href=\"Perfil.aspx?user="+reader["NombreUsuario"].ToString()+"\">"+ reader["NombreUsuario"].ToString()+"</a>";
                }
            }
            conn.Close();

            conn.Open();
            //BUSCO LOS COMENTARIOS RELACIONADOS A LA NOTICIA JUNTO CON QUIEN LOS ESCRIBIO
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
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Roger\\Documentos\\VisualStudio\\proyectoASP\\BD_proyecto_post.mdf;Integrated Security=True;Connect Timeout=30");

            String user =""+this.Session["VSUsuario"];
            String id = "";
            conn.Open();
            SqlCommand command3 = new SqlCommand("SELECT id From Usuarios WHERE nombreusuario='"+user+"';", conn);
            
            using (SqlDataReader reader = command3.ExecuteReader())
            {
                if (reader.Read())
                {
                    //OPTENEMOS EL ID DEL QUE SE ENCUENTRA EN SESION PARA PODER LIGAR SU COMENTARIO A LA NOTICIA
                    id = reader["id"].ToString();
                    lblComentario.Controls.Add(new Label()
                    {
                        //AGREGAMOS EL COMENTARIO A LA PAGINA
                        Text = "</br>"+this.Session["VSUsuario"]+": "+txtmensaje.Text
                    }
                        );

                }
            }
            conn.Close();

            //SIN CONEXION
            SqlDataAdapter adp = null;
            String OrderSql;
            DataSet ds;

                conn.Open();
                OrderSql = String.Format("SELECT * FROM Comentarios;");
                ds = new DataSet();
                adp = new SqlDataAdapter(OrderSql, conn);
                adp.Fill(ds, "CopiaTabla");
                DataRow dr;
                dr = ds.Tables["CopiaTabla"].NewRow();
                SqlCommand cmd = new SqlCommand(OrderSql, conn);

                //AGREGAMOS EL COMENTARIO A LA BD
                dr["id_usuario"] = Convert.ToInt16(id);
                dr["id_noticia"] =Convert.ToInt16( this.ViewState["VEID"].ToString());
                dr["comentario"] = (string)txtmensaje.Text;
                ds.Tables["CopiaTabla"].Rows.Add(dr);

                SqlCommandBuilder cb;
                cb = new SqlCommandBuilder(adp);
                adp.Update(ds.Tables["CopiaTabla"]);
                cmd.ExecuteNonQuery();
                conn.Close();
         
            txtmensaje.Text = "";

        }

        protected void txtmensaje_TextChanged(object sender, EventArgs e)
        {
            //SETEO del msj a una variable de estado
            a = txtmensaje.Text;
            this.ViewState["comentario"] = a;
        }

        protected void btnMegusta_Click(object sender, EventArgs e)
        {
            //Enviar Mensaje a guardar
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Roger\\Documentos\\VisualStudio\\proyectoASP\\BD_proyecto_post.mdf;Integrated Security=True;Connect Timeout=30");

            String user = "" + this.Session["VSUsuario"];
            String id = "",idNoticia="";
            idNoticia = this.ViewState["VEID"].ToString();
            conn.Open();
            SqlCommand command3 = new SqlCommand("SELECT id From Usuarios WHERE nombreusuario='" + user + "';", conn);

            using (SqlDataReader reader = command3.ExecuteReader())
            {
                if (reader.Read())
                {
                    //OPTENEMOS EL ID DEL QUE SE ENCUENTRA EN SESION PARA PODER LIGAR SU LIKE A LA NOTICIA
                    id = reader["id"].ToString();
                }
            }

            String OrderSql;
            SqlParameter sp;
            OrderSql=String.Format("HizoLike");
            SqlCommand cmd = new SqlCommand(OrderSql, conn);
            //Definir el procedimiento almacenado
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "HizoLike";
            //Agregar los parametros de entrada
            cmd.Parameters.Add(new SqlParameter("@idUsuario", int.Parse(id)));
            cmd.Parameters.Add(new SqlParameter("@idNoticia", int.Parse(idNoticia)));

            sp = new SqlParameter();
            sp.ParameterName = "@Result";
            sp.SqlDbType = SqlDbType.Int;
            sp.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(sp);
            cmd.ExecuteNonQuery();

            if (int.Parse(sp.Value.ToString()) > 0)
            {
                string script = "alert(\"Ya habias dado me gusta a la noticia\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {


                try
                {
                   
                    OrderSql = String.Format("INSERT INTO Likes(id_usuario, id_noticia) VALUES({0},{1})", id,idNoticia);
                    cmd = new SqlCommand(OrderSql, conn);
                    cmd.ExecuteNonQuery();

                  

                    string script = "alert(\"Le diste me gusta a la noticia\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);

                }
                catch (Exception ex1)
                {
                      string script = "alert(\"Error: al dar me gusta\");";
                      ScriptManager.RegisterStartupScript(this, GetType(),
                                            "ServerControlScript", script, true);
                                            
                    //txtmensaje.Text = "Error: "+ ex1;
                }

            }
            conn.Close();
        }
    }
}