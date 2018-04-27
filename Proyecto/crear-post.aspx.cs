using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class crear_post : System.Web.UI.Page
    {
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
            this.ViewState["VENombreNoticia"] = txtNombreNoticia.Text;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {

                this.ViewState["VECuerpo"] = this.Request.Form["cuerpo_noticia"];
                this.Session["VSTexto"] = this.ViewState["VECuerpo"];
                this.Session["VSTitulo"] = this.ViewState["VENombreNoticia"];
                this.Response.Redirect("ver-noticia.aspx");
            
           
           
        }


    }
}