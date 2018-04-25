<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPost.aspx.cs" Inherits="Proyecto.ListaPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
         body{
            width: 980px;
            margin:auto;
	        font-family: helvetica;
            background-image: url(Imagenes/background_perfil.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            padding-top: 50px;

        }
        #contenedor {
            text-align:center;
            margin-top: 300px;
            margin:auto;
            padding: 50px 20px;
            border: 1px black solid;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, .7)
        }
        #lblTituloPost{
            text-align:center;
            font-size:22px;
            /*margin-left:50px;*/
        }
        .lista_post{
           padding:10px;
            /*border:1px black solid;*/
            text-align:left;
            clear:both;
            height:100px;
        }
        .lista_post:hover{
            border:1px black solid;
        }
        .links_post{
            
            text-decoration:none;
            color:#2F8BA4;
            margin-bottom:5px;
            
        }
        .links_post:hover{
            text-decoration:underline;
            
        }
        .izquierda{
            width:79%;
            float:left;
        }
        .derecha{
            width:19%;
            float:right;
        }
        p{
            margin:0px;
            padding:0px;
            text-align:center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="contenedor">
        
        <asp:Label ID="lblTituloPost" runat="server" Text="Todos los Post"></asp:Label>
        <div class="lista_post">
            <div class="izquierda">
                 <asp:LinkButton CssClass="links_post" ID="lnkbProgramacionWeb" runat="server">Programacion Web</asp:LinkButton>
            
                <br />
                <asp:Label ID="lblPost1" runat="server">Desarrollo web es un término que define la creación de sitios web para Internet o una intranet. 
                    Para conseguirlo se hace uso de tecnologías de software del lado del servidor y del cliente que involucran una combinación de procesos 
                    de base de datos con el uso de un navegador web a fin de realizar determinadas tareas o mostrar información.</asp:Label>
            </div>
            <div class="derecha">
                <p style="margin-bottom:5px;">Likes</p>
                <p>4</p>
                <p style="margin-bottom:5px;">Comentarios</p>
                <p>3</p>
            </div>
               
            
        </div>
        <div class="lista_post">
            <asp:LinkButton CssClass="links_post" ID="lnkbPoo" runat="server">Programacion Orientada a Objetos</asp:LinkButton>
            <br />
            <div class="izquierda">
               <asp:Label ID="lblPost2" runat="server">Desarrollo web es un término que define la creación de sitios web para Internet o una intranet. 
                Para conseguirlo se hace uso de tecnologías de software del lado del servidor y del cliente que involucran una combinación de 
                procesos de base de datos con el uso de un navegador web a fin de realizar determinadas tareas o mostrar información.</asp:Label>
            </div>
            
            <div class="derecha">
                <p style="margin-bottom:5px;">Likes</p>
                <p>7</p>
                <p style="margin-bottom:5px;">Comentarios</p>
                <p>7</p>
            </div>
        </div>
         <div class="lista_post">
             <div class="izquierda">
                 <asp:LinkButton CssClass="links_post" ID="lnkbJS" runat="server">JavaScript</asp:LinkButton>
             <br />
             <asp:Label ID="lblPost3" runat="server">Desarrollo web es un término que define la creación de sitios web para Internet o una intranet. 
                    Para conseguirlo se hace uso de tecnologías de software del lado del servidor y del cliente que involucran una combinación de procesos 
                    de base de datos con el uso de un navegador web a fin de realizar determinadas tareas o mostrar información.</asp:Label>
             </div>
             <div class="derecha">
                <p style="margin-bottom:5px;">Likes</p>
                <p>75</p>
                <p style="margin-bottom:5px;">Comentarios</p>
                <p>10</p>
            </div>
            
        </div>
         <div class="lista_post">
             <div class="izquierda">
                 <asp:LinkButton CssClass="links_post" ID="lnkbJQ" runat="server">JQuery</asp:LinkButton><br/>
             <asp:Label ID="lblPost4" runat="server"> jQuery es una biblioteca multiplataforma de JavaScript, creada inicialmente por John Resig, 
                 que permite simplificar la manera de interactuar con los documentos HTML, manipular el árbol DOM, manejar eventos, desarrollar 
                 animaciones y agregar interacción con la técnica AJAX a páginas web. Fue presentada el 14 de enero de 2006 en el BarCamp NYC. 
                 jQuery es la biblioteca de JavaScript más utilizada.</asp:Label>
             </div>
            
             <div class="derecha">
                <p style="margin-bottom:5px;">Likes</p>
                <p>7</p>
                <p style="margin-bottom:5px;">Comentarios</p>
                <p>30</p>
            </div>
        </div>
         <div class="lista_post">
             <div class="izquierda">
                 <asp:LinkButton CssClass="links_post" ID="lnkbASP" runat="server">ASP.NET</asp:LinkButton><br/>
             <asp:Label ID="lblPost5" runat="server">ASP.NET es un entorno para aplicaciones web desarrollado y comercializado por Microsoft.
                  Es usado por programadores y diseñadores para construir sitios web dinámicos, aplicaciones web y servicios web XML. 
                 Apareció en enero de 2002 con la versión 1.0 del .NET Framework, y es la tecnología sucesora de la tecnología Active Server 
                 Pages (ASP). </asp:Label>
             </div>
           
             <div class="derecha">
                <p style="margin-bottom:5px;">Likes</p>
                <p>1000</p>
                <p style="margin-bottom:5px;">Comentarios</p>
                <p>50</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
