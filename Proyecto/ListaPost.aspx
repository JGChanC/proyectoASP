<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPost.aspx.cs" Inherits="Proyecto.ListaPost" %>

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
            background-image: url(Imagenes/background_perfil.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            padding-top: 50px;

        }
        #contenedor {
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
            /*margin-left:50px;*/
        }
        .lista_post{
           padding:5px;
            /*border:1px black solid;*/
        }
        .lista_post:hover{
            border:1px black solid;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="contenedor">
        
        <asp:Label ID="lblTituloPost" runat="server" Text="Todos los Post"></asp:Label>
        <div class="lista_post">
            <h3>Prueba</h3>
        </div>
        <div class="lista_post">
            <h3>Prueba</h3>
        </div>
         <div class="lista_post">
            <h3>Prueba</h3>
        </div>
         <div class="lista_post">
            <h3>Prueba</h3>
        </div>
         <div class="lista_post">
           <h3>Prueba</h3>
        </div>
    </div>
    </form>
</body>
</html>
