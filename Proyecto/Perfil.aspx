<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Proyecto.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" /> 
    <link rel="stylesheet" type="text/css" href="css/header_sesion.css"/>
    <script>
        function cerrar() {
            var obj = document.getElementById("lnkbCerrarSesion");
            if (obj) {
                obj.click();
            }
        }
    </script>
    <style>
        #lblNombre{
            color:blue;
            font-size:30px;
        }

    </style>
</head>
<body>
    <!--#include file="headers/header_sesion.aspx"-->
    <form id="form1" runat="server">
    <div class="contenedor">
        <div class="primera_caja">
        	<div class="imagen">
        		&nbsp;&nbsp;&nbsp;
        		<asp:Image src="Imagenes/icono_perfil.png" runat="server" Height="189px" Width="170px" BorderStyle="Dotted" />
                <br />
                <br />
                <br />
            </div>

        	<div class="info">
        		<h1 aria-busy="False">Mi Perfil</h1>
                <br /> 
        		<hr class="arregloss" />
                <br /> 
	            <asp:Label ID="lblNombre" runat="server" Text="Roger Iván Canche Yam"></asp:Label>
                <br />
                <div class="acomodar">
                    <asp:Label CssClass="caja_seg" ID="lblSeg" runat="server" Text="Label">Seguidores:</asp:Label>
                &nbsp;&nbsp
                <asp:Label ID="lblCantSeg" runat="server" Text="Label">0</asp:Label>
                &nbsp;&nbsp
                <asp:Label CssClass="caja_seg" ID="lblSegui" runat="server" Text="Label">Seguidos:</asp:Label>
                 &nbsp;&nbsp
                <asp:Label ID="lblCantSegui" runat="server" Text="Label">0</asp:Label>
                </div>
                
        	</div>
	        
	        <div class="actividad">
                <div class"box_info">
                    <asp:Label ID="Label2" runat="server" Text="Usuario desde:"></asp:Label>
                    &nbsp
                    <asp:Label ID="Label3" runat="server" Text="2017"></asp:Label>
                </div>
                <br /> <br />
	        	<h3>ACTIVIDAD RECIENTE</h3>
                <br /> <br />
                <a href="ver-noticia.aspx">"Como usar Visual Basic"</a> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="hace 1 dia"></asp:Label>
	        </div>
        </div>

        <div class="segunda_caja">
        	<h2>Otras publicaciones</h2>
        </div>
        <br /> <br />
        <div class="mensaje">
            <asp:Label ID="Label1" runat="server" Text="Enviar un mensaje..." ForeColor="#3333CC"></asp:Label>
            <br /> <br /> 
            <asp:TextBox CssClass="cajita" ID="txtmensaje" runat="server" Width="448px" Height="83px" BorderWidth="1px"></asp:TextBox>
            <br /> <br /> 
            <asp:Button CssClass="botonEnviar" ID="btnEnviar" runat="server" Text="Enviar" BorderStyle="Ridge" />
        </div>
    </div>
         <asp:LinkButton ID="lnkbCerrarSesion" runat="server" OnClick="lnkbCerrarSesion_Click"></asp:LinkButton>

    </form>
    <p>
        -</p>
</body>
</html>
