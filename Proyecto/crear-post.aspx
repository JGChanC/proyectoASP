<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crear-post.aspx.cs" Inherits="Proyecto.crear_post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POST | publicar </title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" href="plugins/trumbowyg/ui/trumbowyg.css">
    
</head>
<body>
    <div class="contenedor">
    <form id="form1" runat="server">
        <div class="contenido-post">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Nombre de la noticia:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>

            <div>

                <textarea id="cuerpo_noticia" runat="server"></textarea>   

            </div>
            <div>
                <asp:CheckBox Text="Hacer visible la noticia" runat="server" />
            </div>
            <asp:Button Text="Guardar" runat="server" />
        </div>
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
