<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ver-noticia.aspx.cs" Inherits="Proyecto.ver_noticia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" /> 
    <style>
        .Titulo{
            border:1px red solid;
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
            margin-top:-70px;
            margin-right:270px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="contenedor">
        <div class="Titulo">
            <div class"imagen_mini>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" src="Imagenes/icono_perfil.png" Height="80px" Width="89px"/>
            </div>
            
            <div class="autor">
                <asp:Label ID="Label1" runat="server" Text="Como Usar Visual Basic"></asp:Label>
                <hr />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Por"></asp:Label>    
            &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Roger Canche"></asp:Label>
                 &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="-Ayer"></asp:Label>
                  
            </div>
        &nbsp;</div>
    </div>
    </form>
</body>
</html>
