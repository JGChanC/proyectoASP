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
        		<asp:Image ID="Image1" runat="server" Height="189px" Width="170px" />
&nbsp;</div>

        	<div class="info">
        		<h1>Mi Perfil</h1>
        		<hr>
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
	        	<h3>ACTIVIDAD RECIENTE</h3>
	        </div>
        </div>

        <div class="segunda_caja">
        	<h2>Otras publicaciones</h2>
        </div>
    </div>
    </form>
    <p>
        -</p>
</body>
</html>
