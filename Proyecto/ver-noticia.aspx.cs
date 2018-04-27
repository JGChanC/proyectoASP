using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class ver_noticia : System.Web.UI.Page
    {
        String a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["VSUsuario"] == null)
            {
                this.Response.Redirect("Login.aspx");
            }
            if (this.Session["VSTitulo"] != null)
            {
                lblTitulo.Text = (String) this.Session["VSTitulo"];
                lblTexto.Text = (String)this.Session["VSTexto"];
                
            }
        }

        protected void lnkbCerrarSesion_Click(object sender, EventArgs e)
        {
            this.Session.Abandon();
            this.Response.Redirect("Login.aspx");
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            txtmensaje.Text = "";
            lblComentario.Text = (String)this.ViewState["comentario"];
        }

        protected void txtmensaje_TextChanged(object sender, EventArgs e)
        {
            a = txtmensaje.Text;
            this.ViewState["comentario"] = a;
        }
    }
}