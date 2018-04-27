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
        String a; //Donde guarda el msj del comentario
        protected void Page_Load(object sender, EventArgs e)
        {
            //SI SE SELECCIONO UNA NOTICIA EN UNA VENTANA ANTERIOR SE DESPLIEGA LA INFORMACION
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