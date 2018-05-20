<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPost.aspx.cs" Inherits="Proyecto.ListaPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>POST | Inicio</title>
    <script>
        function cerrar() {
            var obj = document.getElementById("lnkbCerrarSesion");
            if (obj) {
                obj.click();
            }
        }
    </script>
    <style>
         body{
            margin:auto;
	        font-family: helvetica;
            background-image: url(Imagenes/background_login.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            /*padding-top: 50px;*/

        }
        #contenedor {
            width:80%;
            text-align:center;
            margin-top: 300px;
            margin:auto;
            padding: 50px 20px;
            border: 1px black solid;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, .7)
        }
        #lblTituloPost{
            text-align:center;
            font-size:22px;
            /*margin-left:50px;*/
        }
        .lista_post{
           padding:10px;
            /*border:1px black solid;*/
            text-align:left;
            clear:both;
            height:110px;
        }
        .lista_post:hover{
            border:1px black solid;
        }
        .links_post{
            
            text-decoration:none;
            color:#2F8BA4;
            margin-bottom:5px;
            
        }
        .links_post:hover{
            text-decoration:underline;
            
        }
        .izquierda{
            width:79%;
            float:left;
        }
        .derecha{
            width:19%;
            float:right;
        }
        p{
            margin:0px;
            padding:0px;
            text-align:center;
        }
        .like{
            background-color: black;
            color:white;
            border-radius:5px;
            padding-top:5px;
            padding-bottom:5px;
            border-bottom-left-radius:0px;
            border-bottom-right-radius:0px;
        }
        .coment{
            background-color:#2F8BA4;
            color:white;
            border-radius:5px;
            border-top-left-radius:0px;
            border-top-right-radius:0px;
            padding-top:5px;
            padding-bottom:5px;
        }

    </style>
     <link rel="stylesheet" type="text/css" href="../css/header_sesion.css"/>
</head>
<body>
     <form id="form1" runat="server">
     <!--#include file="headers/header_sesion.aspx"-->
    <div id="contenedor" runat="server">
        
        <asp:Label ID="lblTituloPost" runat="server" Text="Todos los Post"></asp:Label>
        
       

    </div>

         <asp:LinkButton ID="lnkbCerrarSesion" runat="server" OnClick="lnkbCerrarSesion_Click"></asp:LinkButton>
     </form>
</body>
</html>
