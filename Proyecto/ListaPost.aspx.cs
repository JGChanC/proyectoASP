using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class ListaPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["VSUsuario"]==null)
            {
                this.Response.Redirect("Login.aspx");
            }
        }

        protected void lnkbProgramacionWeb_Click(object sender, EventArgs e)
        {
            this.Session["VSTexto"] = lblPost1.Text;
            this.Session["VSTitulo"] = lnkbProgramacionWeb.Text;
            this.Response.Redirect("ver-noticia.aspx");
        }
        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            
        }

        protected void lnkbCerrarSesion_Click(object sender, EventArgs e)
        {
            this.Session.Abandon();
            this.Response.Redirect("Login.aspx");
        }


        protected void lnkbJQ_Click(object sender, EventArgs e)
        {
            this.Session["VSTexto"] = lblPost4.Text;
            this.Session["VSTitulo"] = lnkbJQ.Text;
            this.Response.Redirect("ver-noticia.aspx");
        }

        protected void lnkbJS_Click(object sender, EventArgs e)
        {
            this.Session["VSTexto"] = lblPost3.Text;
            this.Session["VSTitulo"] = lnkbJS.Text;
            this.Response.Redirect("ver-noticia.aspx");
        }

        protected void lnkbPoo_Click1(object sender, EventArgs e)
        {
            this.Session["VSTexto"] = lblPost2.Text;
            this.Session["VSTitulo"] = lnkbPoo.Text;
            this.Response.Redirect("ver-noticia.aspx");
        }

        protected void lnkbASP_Click(object sender, EventArgs e)
        {
            this.Session["VSTexto"] = lblPost5.Text;
            this.Session["VSTitulo"] = lnkbASP.Text;
            this.Response.Redirect("ver-noticia.aspx");
        }
    }
}