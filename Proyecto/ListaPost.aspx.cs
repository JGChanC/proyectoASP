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
    public partial class ListaPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["VSUsuario"]==null)
            {
                this.Response.Redirect("Login.aspx");
            }

            // Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Mario\Documents\Aplicaciones_NET\U4\conn_bd\BD_proyecto_post.mdf; Integrated Security = True; Connect Timeout = 30
            SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\Mario\\Documents\\Aplicaciones_NET\\U4\\conn_bd\\BD_proyecto_post.mdf; Integrated Security = True; Connect Timeout = 30");
            conn.Open();
            SqlCommand command = new SqlCommand("SELECT *, (SELECT COUNT(*) FROM Likes WHERE id_noticia = id) As Likes, (SELECT COUNT(*) FROM Comentarios WHERE id_noticia = id) As Comentario  FROM Noticias;", conn);
            //SqlCommand command = new SqlCommand("SELECT id, Titulo, Cuerpo, (SELECT COUNT(*) FROM Likes WHERE id_noticia = id) As Likes  FROM Noticias;", conn);
            Int16 contador = 1;

           /* //OBTENGO EL NUMERO DE LIKES
            SqlCommand command2 = new SqlCommand("SELECT COUNT(*) FROM Likes WHERE id_noticia=" + reader["id"], conn2);
            using (SqlDataReader reader2 = command2.ExecuteReader())
            {
                if (reader2.Read())
                {
                    Likes = Convert.ToInt16(reader2["COUNT"]);
                }
            }*/

            using (SqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    
                       
                        //INSERTA EL CODIGO HTML CON LA INFO DE LAS NOTICIAS
                        contenedor.Controls.Add(new Label()
                    {
                        Text = "<div class=\"lista_post\">" +
               "<div class=\"izquierda\">" +
               "<a class=\"links_post\" id=\"lnkbPoo2\" runat=\"server\" href=\"ver-noticia.aspx?id=" + reader["id"] + "\">" + reader["Titulo"] + "</a> <br /> <br /> " +
               " <asp:Label ID=\"lblPost1\" runat=\"server\">" + reader["Cuerpo"]+
               "</asp:Label>" +
               "</div>" +
               "<div class=\"derecha\">" +
               " <div class=\"like\" >" +
               "   <p style=\"margin - bottom:5px; \">Likes</p>" +
               "    <p>"+reader["Likes"]+"</p>" +
               " </div>" +
               " <div class=\"coment\">" +
               "   <p style=\"margin - bottom:5px; \">Comentarios</p>" +
               "   <p>"+reader["Comentario"]+"</p>" +
               " </div>" +
               " </div>" +
               "</div>"
                    });

                    contador++;

                }
            }
            conn.Close();

           
           

            //INSERTAR EL CODIGO HTML DE LAS NOTICIAS
            /* contenedor.Controls.Add(new Label()
                 {
                     Text = "<div class=\"lista_post\">" +
                 "<div class=\"izquierda\">" +
                 "<a class=\"links_post\" id=\"lnkbPoo2\" runat=\"server\" href=\"ver-noticia.aspx\">Programacion Orientada a Objetos</a> <br /> <br /> " +
                 " <asp:Label ID=\"lblPost1\" runat=\"server\">Desarrollo web es un término que define la creación de sitios web para Internet o una intranet. " +
                 "Para conseguirlo se hace uso de tecnologías de software del lado del servidor y del cliente que involucran una combinación de procesos " +
                 "de base de datos con el uso de un navegador web a fin de realizar determinadas tareas o mostrar información.</asp:Label>" +
                 "</div>" +
                 "<div class=\"derecha\">" +
                 " <div class=\"like\">" +
                 "   <p style=\"margin - bottom:5px; \">Likes</p>" +
                 "    <p>7</p>"+
                 " </div>"+
                 " <div class=\"coment\">" +
                 "   <p style=\"margin - bottom:5px; \">Comentarios</p>" +
                 "   <p>7</p>"+
                 " </div>"+
                 " </div>" +
                 "</div>"
                 });*/




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