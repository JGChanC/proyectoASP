<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ver-noticia.aspx.cs" Inherits="Proyecto.ver_noticia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POST  | Ver noticia</title>
    <link href="css/style.css" rel="stylesheet" /> 
    <style>
        hr{
            width:700px;
            background-color:darkslategray;
        }

        #lblTitulo{
            color:blue;
            font-family:'Comic Sans MS';
            font-size:30px;
            
        }

        .texto{
            clear:both;
            float:right;
            width:750px;
            margin-top:25px;
        }

        .Titulo{
            padding:10px;
            height:auto;
            box-sizing:border-box;
        }
        .imagen_mini{
            padding:10px;
            float:left;
            margin-left:20px;
        }

        .autor{
            float:right;
            margin-top:-90px;
        }

        body {
            font-family:Arial, Helvetica, sans-serif;
        }

         .contenedor {
            margin-top:80px;
            border:1px black solid;
            background-color: rgba(255,255,255,.7);
            border-radius: 5px;
        }

    </style>
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
    </script>
</head>
<body>
     <!--#include file="headers/header_sesion.aspx"-->
    <form id="form1" runat="server">
    <div class="contenedor">
        <div class="Titulo">
            <div class"imagen_mini>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" src="Imagenes/icono_perfil.png" Height="80px" Width="89px" BorderStyle="Dashed"/>
            </div>
            
            <div class="autor">
                <asp:Label ID="lblTitulo" runat="server" Text="Como Usar Visual Basic"></asp:Label>
                <hr />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Por"></asp:Label>    
            &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Roger Canche" Font-Bold="True"></asp:Label>
                 &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="-Ayer" Font-Italic="True"></asp:Label>
                  
            </div>

            <div class="texto">
                <asp:Label ID="lblTexto" runat="server" Text="Aprender a usar este sistemas es muy faicl. Lo primero que tenemos que hacer es..." Font-Size="18pt" Font-Strikeout="False"></asp:Label>
            </div>

              <div class="mensaje">
            <asp:Label ID="Label5" runat="server" Text="Comentarios" ForeColor="#3333CC"></asp:Label>
            <br /> <br /> 
            <asp:TextBox CssClass="cajita" ID="txtmensaje" runat="server" Width="448px" Height="83px" BorderWidth="1px" OnTextChanged="txtmensaje_TextChanged"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RFrequireComenta" runat="server" ControlToValidate="txtmensaje" Display="None" ErrorMessage="No ingresó comentario"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CVtamanioComentario" runat="server" ClientValidationFunction="tamanioComentario" ControlToValidate="txtmensaje" Display="None" ErrorMessage="El comentario no debe excederse de 140 caracteres"></asp:CustomValidator>
            <asp:RegularExpressionValidator ID="REexpresionComentario" runat="server" ControlToValidate="txtmensaje" Display="None" ErrorMessage="El comentario no puede contener caracteres especiales" ValidationExpression="([0-9A-ZÁÉÍÓÚa-zñáéíóú]+[\s]*)+"></asp:RegularExpressionValidator>
            <br /> <br /> 
            <asp:Button CssClass="botonEnviar" ID="btnEnviar" runat="server" Text="Enviar" BorderStyle="Ridge" OnClick="btnEnviar_Click" />
                  <asp:ValidationSummary ID="VResumenComentario" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
                  <br />
                  <asp:Label ID="lblComentario" runat="server" Text="."></asp:Label>
                  <br />
                  <br />
        </div>
        </div>

        
    </div>
         <asp:LinkButton ID="lnkbCerrarSesion" runat="server" OnClick="lnkbCerrarSesion_Click" CausesValidation="false"></asp:LinkButton>
    </form>
</body>
</html>
