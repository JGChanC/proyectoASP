using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            this.Session["VSNombre"] = this.ViewState["VENombre"]+" "+this.ViewState["VEApellido"];
            this.Session["VSUsuario"] = this.ViewState["VENombre"];
            this.Response.Redirect("ListaPost.aspx");
        }
    }
}