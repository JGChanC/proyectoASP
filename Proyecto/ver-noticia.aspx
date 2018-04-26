<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ver-noticia.aspx.cs" Inherits="Proyecto.ver_noticia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            height:500px;
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
    </style>
    <link rel="stylesheet" type="text/css" href="../css/header_sesion.css"/>
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
        </div>

        
    </div>
         <asp:LinkButton ID="lnkbCerrarSesion" runat="server" OnClick="lnkbCerrarSesion_Click"></asp:LinkButton>
    </form>
</body>
</html>
