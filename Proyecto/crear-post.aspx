<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crear-post.aspx.cs" Inherits="Proyecto.crear_post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POST | publicar </title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" href="plugins/trumbowyg/ui/trumbowyg.css">
    <link rel="stylesheet" type="text/css" href="css/crearpost.css"/>
    <link rel="stylesheet" type="text/css" href="../css/header_sesion.css"/>
    <script>
        function cerrar() {
            var obj = document.getElementById("lnkbCerrarSesion");
            if (obj) {
                obj.click();
            }
        }
    </script>
</head>
<body>
    <!--#include file="headers/header_sesion.aspx"-->
    <div class="contenedor">
        <div class="contenido-post">
                <h1>Crear noticia</h1>
           <form id="form1" runat="server">
            <div>
                <asp:TextBox ID="txtNombreNoticia" placeholder="Nombre de la noticia" runat="server"></asp:TextBox>
            </div>

            <div>

                <textarea id="cuerpo_noticia" runat="server"></textarea>   

            </div>
            <div>
                <asp:CheckBox  CssClass="theme-check" Text=" Hacer visible la noticia" runat="server" />
            </div>
            <asp:Button ID="btnEnviar" Text="Guardar" runat="server" />
        </div>
        <asp:LinkButton ID="lnkbCerrarSesion" runat="server" OnClick="lnkbCerrarSesion_Click"></asp:LinkButton>
    </form>
        
    </div>
     <script src="scripts/jquery-3.2.1.js"></script>
      <script src="plugins/trumbowyg/trumbowyg.js" ></script>
	  <script src="plugins/Trumbowyg/langs/es.min.js"></script>
    
    <script>
        $('#cuerpo_noticia').trumbowyg();
</script>
</body>
</html>
