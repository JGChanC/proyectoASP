﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto.Login" %>

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
            background-image: url(Imagenes/background_login.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            padding-top: 50px;

        }
        #login {
            margin-top: 10px;
            width: 30%;
            text-align: center;
            margin:auto;
            padding-top: 20px;
            padding-bottom: 20px;
            border: 1px black solid;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, .5)
        }
        .txtLog{
            padding: 10px 15px;
            border-radius: 5px;
            border: 1px black solid;
        }
        #btnIniciarSesion{
            color:white;
            background-color: #2F8BA4;
            padding: 5px 75px;
            font-size: 18px;
            font-weight: normal;
            border-radius: 5px;
        }
        #Contenedor2{
            text-align:left;
            padding-left: 20px;
        }
        #lnkbRecuperar{
            font-size: 10px;
            text-decoration: none;
            color: #808080;
        }
        #Contenedor3{
            width: 30%;
            margin:auto;
            border-top: 3px white solid;
            margin-top:50px;
            padding-top:15px;
            text-align: center;
        }
        #lblCuenta{
            color: #808080;
        }
        #lnkbRegistrar{
            font-size 10px;
            color: #2F8BA4;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div id="login" >
            <img id="imgLogin" alt="" src="/Imagenes/icono_login.png" width="25%" /><br />
            <asp:Label ID="Label1" runat="server" Text="Iniciar Sesion"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtUsuario"  CssClass="txtLog" runat="server" placeholder="Usuario" ></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtPassword" CssClass="txtLog" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar"  />
            <br />
            <br />
            <div id="Contenedor2">

            <asp:CheckBox ID="chbxRecuerdame" runat="server" Text="Recuerdame" Font-Size="X-Small" ForeColor="Gray" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbRecuperar" runat="server">¿Olvidaste tu contraseña?</asp:LinkButton>

            </div>
        </div>
        
           <div id="Contenedor3">

               <asp:Label ID="lblCuenta" runat="server" Font-Size="Small" Text="¿No tienes cuenta?  "></asp:Label>

               <asp:LinkButton ID="lnkbRegistrar" runat="server" Font-Size="Small">Registrate Aqui</asp:LinkButton>

           </div>
    </div>
    </form>
</body>
</html>
