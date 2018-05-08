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

              
            for (Int16 c = 0;c<2;c++)
            {
                contenedor.Controls.Add(new Label()
                {
                    Text = "<div class=\"lista_post\">" +
                "<div class=\"izquierda\">" +
                "<a class=\"links_post\" id=\"lnkbPoo2\" runat=\"server\" href=\"ver-noticia.aspx\">Programacion Orientada a Objetos</a> <br /> <br /> " +
                " <asp:Label ID=\"lblPost1\" runat=\"server\">Desarrollo web es un término que define la creación de sitios web para Internet o una intranet. " +
                "Para conseguirlo se hace uso de tecnologías de software del lado del servidor y del cliente que involucran una combinación de procesos " +
                "de base de datos con el uso de un navegador web a fin de realizar determinadas tareas o mostrar información.</asp:Label>" +
                "</div>" +
                "</div>"
                });
            
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


       
    }
}