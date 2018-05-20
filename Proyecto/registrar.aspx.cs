using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Librerias para consultas BD
using System.Data;
using System.Data.SqlClient;

namespace Proyecto
{
    public partial class registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TxNombre_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VENombre"] = TxNombre.Text;
        }

        protected void TxApellido_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VEApellido"] = TxApellido.Text;
        }

        protected void TxtNomUsua_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VENomUsuario"] = TxtNomUsua.Text;
        }

        protected void TxPass_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VEPass"] = TxPass.Text;
        }

        protected void TxPassConf_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VEPassConf"] = TxPassConf.Text;
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            //GUARDA EN VARIABLES DE SESION LOS DATOS DEL USUARIO QUE SE CREA

            SqlConnection Conn;
            String OrderSql;
            Conn = new SqlConnection();
            Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Roger\\Documentos\\VisualStudio\\proyectoASP\\BD_proyecto_post.mdf;Integrated Security=True;Connect Timeout=30";

            try
            {
                Conn.Open();
                OrderSql = String.Format("INSERT INTO Usuarios(nombre, apellido, correo, nombreusuario, contrsenia) VALUES('{0}','{1}','{2}','{3}','{4}')", this.ViewState["VENombre"], this.ViewState["VEApellido"], this.ViewState["VECorreo"], this.ViewState["VENomUsuario"], this.ViewState["VEPass"]);
                SqlCommand cmd = new SqlCommand(OrderSql, Conn);
                cmd.ExecuteNonQuery();
              
                Conn.Close();

                string script = "alert(\"El usuario se registro con éxito\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);

                this.Session["VSNombre"] = this.ViewState["VENombre"] + " " + this.ViewState["VEApellido"];
                this.Session["VSUsuario"] = this.ViewState["VENomUsuario"];
                HttpCookie ckUser = new HttpCookie("User", "" + this.Session["VSUsuario"]);
                ckUser.Expires = DateTime.Now.AddMinutes(5);
                this.Response.Cookies.Add(ckUser);
                this.Response.Redirect("Login.aspx");

            }
            catch (Exception ex1)
            {
               string script = "alert(\"Error: al crear la cuenta\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
               
            }
            
        }

        protected void TxCorreo_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VECorreo"] = TxCorreo.Text;
        }
    }
}