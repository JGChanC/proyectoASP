<%@ Page ValidateRequest="false" Language="C#" AutoEventWireup="true" CodeBehind="crear-post.aspx.cs" Inherits="Proyecto.crear_post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POST | publicar </title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" href="plugins/trumbowyg/ui/trumbowyg.css">
    <link rel="stylesheet" type="text/css" href="css/crearpost.css"/>
    <link rel="stylesheet" type="text/css" href="../css/header_sesion.css"/>
    <script src="scripts/jquery-3.2.1.js"></script>
    <appSettings>
        <add key="ValidationSettings:UnobtrusiveValidationMode" value="None"></add>
    </appSettings>

    <script>
        function cerrar() {
            var obj = document.getElementById("lnkbCerrarSesion");
            if (obj) {
                obj.click();
            }
        }

        function validaNombreTamanio(sender, args) {
            if (args.Value.length <= 200) {

                args.IsValid = true;

            } else {
                args.IsValid = false;
            }
        }

        function validaContenidoTamanio(sender, args) {
            if (args.Value.length <= 1000) {

                args.IsValid = true;

            } else {
                args.IsValid = false;
            }
        }
    </script>

    <style>
         .contenedor {
            margin-top:80px;
            border:0;
        }
    </style>
</head>
<body>
    <!--#include file="headers/header_sesion.aspx"-->
    <div class="contenedor">
        <div class="contenido-post">
           <form id="form1" runat="server">
                <h1>Crear noticia</h1>
            <div>
                <asp:RequiredFieldValidator ID="RFrequireNombreNot" runat="server" ControlToValidate="txtNombreNoticia" Display="None" ErrorMessage="No ingresó el nombre de la noticia"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CVTamanio" runat="server" ControlToValidate="txtNombreNoticia" Display="None" ErrorMessage="EL nombre de la noticia no debe exceder de 200 caracteres" ClientValidationFunction="validaNombreTamanio"></asp:CustomValidator>
                <asp:RegularExpressionValidator ID="REespresionNombreNot" runat="server" ControlToValidate="txtNombreNoticia" Display="None" ErrorMessage="El nombre de la noticia no tiene un formato válido" ValidationExpression="([0-9A-ZÁÉÍÓÚa-zñáéíóú]+[\s]*)+"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtNombreNoticia" placeholder="Nombre de la noticia" runat="server" OnTextChanged="txtNombreNoticia_TextChanged"></asp:TextBox>
            </div>

            <div>

                <textarea id="cuerpo_noticia" runat="server"></textarea>
                <asp:RequiredFieldValidator ID="RFrequireContenido" runat="server" ControlToValidate="cuerpo_noticia" Display="None" ErrorMessage="No ingresó el contenido de la noticia"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CVTamanioContenido" runat="server" ControlToValidate="txtNombreNoticia" Display="None" ErrorMessage="EL contenido de la noticia no debe exceder de 1000 caracteres" ClientValidationFunction="validaContenidoTamanio"></asp:CustomValidator>
             

            </div>
            <div>
                <asp:CheckBox  CssClass="theme-check" Text=" Hacer visible la noticia" runat="server" />
            </div>
            <asp:Button ID="btnEnviar" Text="Guardar" runat="server" OnClick="btnEnviar_Click" />
                <asp:ValidationSummary ID="VResumenCrearNoticia" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
        </div>
        <asp:LinkButton ID="lnkbCerrarSesion" runat="server" OnClick="lnkbCerrarSesion_Click" CausesValidation="False"></asp:LinkButton>
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
