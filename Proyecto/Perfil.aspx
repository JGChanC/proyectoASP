﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Proyecto.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POST | Perfil</title>
    <link href="css/style.css" rel="stylesheet"  type="text/css"/> 
    <link rel="stylesheet" type="text/css" href="css/header_sesion.css"/>
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

            function tamanioComentario(sender, args) {
                if (args.Value.length <= 140) {

                    args.IsValid = true;

                } else {
                    args.IsValid = false;
                }
            }

        }
    </script>
    <style>
        body {
            font-family:Arial, Helvetica, sans-serif;
        }

        #lblNombre{
            color:white;
            font-size:30px;
        }

        .contenedor {
            margin-top:80px;
            border:1px black solid;
            background-color: rgba(255,255,255,.7);
            border-radius: 5px;
        }

        .cajita {
        
                width:60%;
                padding 10px 20px;
                height:200px;
                resize:none;
        }

        .imagen {
        
              display: flex;
              align-items: center;
              justify-content: center;  

        }

    </style>
</head>
<body>
    <!--#include file="headers/header_sesion.aspx"-->
    <form id="form1" runat="server">
    <div class="contenedor">
        <div class="primera_caja">
        	<div class="imagen">
        		
        		<asp:Image src="Imagenes/icono_perfil.png" runat="server" Height="150px" Width="150px" BorderStyle="Dotted" />
            </div>

        	<div class="info">
        		<h1 aria-busy="False" style="font-weight:normal;">Mi Perfil</h1>
                <br /> 
        		<hr class="arregloss" />
                <br /> 
	            <asp:Label ID="lblNombre" runat="server" Text="Roger Iván Canche Yam"></asp:Label>
                <br />
                <div class="acomodar">
                    <asp:Label CssClass="caja_seg" ID="lblSeg" runat="server" Text="Label">Seguidores:</asp:Label>
                &nbsp;&nbsp
                <asp:Label ID="lblCantSeg" runat="server" Text="0" ForeColor="White"></asp:Label>
                &nbsp;&nbsp
                <asp:Label CssClass="caja_seg" ID="lblSegui" runat="server" Text="Label">Seguidos:</asp:Label>
                 &nbsp;&nbsp
                <asp:Label ID="lblCantSegui" runat="server" Text="0" ForeColor="White"></asp:Label>
                </div>
                
        	</div>
	        
	        <div class="actividad">
                <div class="box_info">
                    <asp:Label ID="Label2" runat="server" Text="Usuario desde:" Font-Italic="True"></asp:Label>
                    &nbsp
                    <asp:Label ID="Label3" runat="server" Text="2017" Font-Italic="True"></asp:Label>
                </div>
                <br /> <br />
	        	<h3>ACTIVIDAD RECIENTE</h3>
                <br /> <br />
                <asp:Label ID="lblActividad_Reciente" runat="server" Text=""></asp:Label>
	        </div>
        </div>

        <div class="segunda_caja" id="segunda_caja" runat="server">
        	<h2>Otras publicaciones</h2>
        </div>
        <br /> <br />
        <div class="mensaje" id="cont_mensaje" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Enviar un mensaje..." ForeColor="Blue"></asp:Label>
            <br /> <br /> 
            <textarea id="txtmensaje" class="cajita" runat="server" width="448px" height="83px" border="1px"></textarea>
            <asp:RequiredFieldValidator ID="RFrequireComenta" runat="server" ControlToValidate="txtmensaje" Display="None" ErrorMessage="No ingresó comentario"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CVtamanioComentario" runat="server" ClientValidationFunction="tamanioComentario" ControlToValidate="txtmensaje" Display="None" ErrorMessage="El comentario no debe excederse de 140 caracteres"></asp:CustomValidator>
            <asp:RegularExpressionValidator ID="REexpresionComentario" runat="server" ControlToValidate="txtmensaje" Display="None" ErrorMessage="El comentario no puede contener caracteres especiales" ValidationExpression="([0-9A-ZÁÉÍÓÚa-zñáéíóú]+[\s]*)+"></asp:RegularExpressionValidator>
            <br /> <br /> 
            <asp:Button CssClass="botonEnviar" ID="btnEnviar" runat="server" Text="Enviar" BorderStyle="Ridge" OnClick="btnEnviar_Click" />
            <asp:ValidationSummary ID="VRresumenComenta" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
            <br /><br />
            <asp:Label ID="Label4" runat="server" Text="Comentarios:"></asp:Label>
        </div>
    </div>
         <asp:LinkButton ID="lnkbCerrarSesion" runat="server" OnClick="lnkbCerrarSesion_Click" CausesValidation="False"></asp:LinkButton>

    </form>
    <p>
        -</p>
</body>
</html>
