using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Insertar librerias para BD
using System.Data;
using System.Data.SqlClient;


namespace Proyecto
{
    public partial class crear_post : System.Web.UI.Page
    {
        //Boolean Visible = false;
        String noticias1, noticias;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["VSUsuario"] == null)
            {
                this.Response.Redirect("Login.aspx");

            }
        }

        protected void lnkbCerrarSesion_Click(object sender, EventArgs e)
        {
            this.Session.Abandon();
            this.Response.Redirect("Login.aspx");
        }

        protected void txtNombreNoticia_TextChanged(object sender, EventArgs e)
        {
            //this.ViewState["VENombreNoticia"] = txtNombreNoticia.Text;
            noticias = txtNombreNoticia.Text;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            /*this.ViewState["VECuerpo"] = this.Request.Form["cuerpo_noticia"];
            this.Session["VSTexto"] = this.ViewState["VECuerpo"];
            this.Session["VSTitulo"] = this.ViewState["VENombreNoticia"];*/
            noticias1 = this.Request.Form["cuerpo_noticia"];
            SqlConnection Conn;
            String OrdenSql;
            String ID="";
            String visible = "FALSE";
            Conn = new SqlConnection();
            Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Roger\\Documentos\\VisualStudio\\proyectoASP\\BD_proyecto_post.mdf;Integrated Security=True;Connect Timeout=30";

            SqlCommand command = new SqlCommand("SELECT * FROM Usuarios WHERE nombreusuario='"+ this.Session["VSUsuario"].ToString()+ "';", Conn);
            Conn.Open();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    ID = reader["id"].ToString();
                }
            }
            Conn.Close();

            if (cbvisible.Checked)
            {
                visible = "TRUE";
            }

            try
            {
                Conn.Open();
                OrdenSql = String.Format("INSERT INTO Noticias(id_usuario,titulo,cuerpo,visible)VALUES({0},'{1}','{2}','{3}')",ID ,noticias, noticias1, visible);
                SqlCommand cmd = new SqlCommand(OrdenSql, Conn);
                cmd.ExecuteNonQuery();
                //lblMensaje.Text = "Se inserto datos";
                Conn.Close();
            }
            catch (Exception ex)
            {
                //lblMensaje.Text = "Error de Inserccion" + ex.Message;
            }
        
                this.Response.Redirect("ListaPost.aspx");          
        }


    }
}