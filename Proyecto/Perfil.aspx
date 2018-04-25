<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Proyecto.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="contenedor">
        <div class="primera_caja">
        	<div class="imagen">
        		&nbsp;&nbsp;&nbsp;
        		<asp:Image src="Imagenes/icono_perfil.png" runat="server" Height="189px" Width="170px" />
                <br />
                <br />
                <br />
            </div>

        	<div class="info">
        		<h1>Mi Perfil</h1>
        		<hr />
	            <h2>Roger Iván Canche Yam</h2>
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
	        	<h3>ACTIVIDAD RECIENTE</h3>
                <br /> <br />
                <a href="#">"Como usar Visual Basic"</a>
                &nbsp  &nbsp  &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="hace 1 dia"></asp:Label>
	        </div>
        </div>

        <div class="segunda_caja">
        	<h2>Otras publicaciones</h2>
        </div>
        <br /> <br />
        <div class="mensaje">
            <asp:Label ID="Label1" runat="server" Text="Label">Enviar un mensaje...</asp:Label>
            <br /> <br /> 
            <asp:TextBox ID="TextBox1" runat="server" Width="448px" Height="122px"></asp:TextBox>
            <br /> <br /> 
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
        </div>
    </div>
    </form>
    <p>
        -</p>
</body>
</html>
