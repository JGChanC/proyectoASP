using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            HttpCookie ck,ck2;
            if (this.Session["VSUsuario"] != null)//SI TIENE SESION INCIADA TE MANDA A LISTA POST
            {
                this.Response.Redirect("ListaPost.aspx");
            }
            ck = this.Request.Cookies["User"];
            if (ck != null)
            {
                txtUsuario.Text = ck.Value;
                this.ViewState["VEUsuario"] = txtUsuario.Text;
            }
            ck2 = this.Request.Cookies["Pass"];
            if (ck2 != null)
            {
                txtPassword.Text = ck2.Value;
                
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            this.Session["VSUsuario"] = this.ViewState["VEUsuario"];
            this.Session["VSPass"] = this.ViewState["VEPass"]; 
            /* string script = "alert(\""+ this.Session["VSUsuario"]+" "+ this.Session["VSPass"]+"\");";
             ScriptManager.RegisterStartupScript(this, GetType(),
                                   "ServerControlScript", script, true);*/
            if (chbxRecuerdame.Checked)
            {
                HttpCookie ckUser = new HttpCookie("User", ""+this.Session["VSUsuario"]);
                ckUser.Expires = DateTime.Now.AddMinutes(2);
                this.Response.Cookies.Add(ckUser);
                HttpCookie ckPass = new HttpCookie("Pass", "" + this.Session["VSPass"]);
                ckPass.Expires = DateTime.Now.AddMinutes(2);
                this.Response.Cookies.Add(ckPass);

            }
            this.Response.Redirect("ListaPost.aspx");

        }

        protected void txtUsuario_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VEUsuario"] = txtUsuario.Text;
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["VEPass"] = txtPassword.Text;
        }
    }
}