<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body {
            font-family: helvetica;
            background-image: url(Imagenes/background_login.jpg);
            background-repeat: no-repeat;
            background-size:cover;
        }
        .contenedor{
            width: 980px;
            margin:auto;
            padding-top: 50px;

        }
        #login {
            margin-top: 300px;
            width: 40%;
            text-align: center;
            margin:auto;
            padding-top: 50px;
            padding-bottom: 20px;
            border: 1px black solid;
            border-radius: 10px;
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
              display:inline-block;
            vertical-align:middle;
            margin-left:150px;
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
        #chbxRecuerdame {
            display:inline-block;
            vertical-align:middle;
        }
        #lnkbRegistrar{
            font-size:10px;
            color: #2F8BA4;
        }

        #imgLogin {
            width:100px;
            margin-left:-3em;
            margin-top:-5.7em;
            position:absolute;
        }

    </style>
    <link rel="stylesheet" type="text/css" href="../css/header_principal.css"/>
</head>
     
<body>
    <!--#include file="headers/header_login.aspx"-->
    <form id="form1" runat="server">
    <div class="contenedor">
    
        <div id="login" >
            <img id="imgLogin" alt="" src="/Imagenes/icono_login.png" /><br />
            <asp:Label ID="Label1" runat="server" Text="Iniciar Sesion"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtUsuario"  CssClass="txtLog" runat="server" placeholder="Usuario" ></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtPassword" CssClass="txtLog" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar" OnClick="btnIniciarSesion_Click"  />
            <br />
            <br />
            <div id="Contenedor2">

            <asp:CheckBox ID="chbxRecuerdame" runat="server" Text="Recuerdame" Font-Size="X-Small" ForeColor="Gray" />

               
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
