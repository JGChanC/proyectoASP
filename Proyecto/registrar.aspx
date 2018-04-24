<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="Proyecto.registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POST | Registrar</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/registrar.css"/>
</head>
<body>
        <div class="contenedor">
                <form id="registrar" runat="server">
                     <img id="imgLogin" alt="" src="/Imagenes/icono_login.png" /><br />
                     <asp:Label ID="Label1" runat="server" Text="Registrarse"></asp:Label>
                <div id="contodo">
                    <div>
                 
                        <asp:TextBox ID="TxNombre" runat="server" CssClass="txtLog" placeholder="Nombre(s)"></asp:TextBox>
                    </div>

                    <div>
                       
                        <asp:TextBox ID="TxApellido" CssClass="txtLog"  placeholder="Apellido(s)" runat="server"></asp:TextBox>
                    </div>

                    <div>
                       
                        <asp:TextBox ID="TxCorreo" CssClass="txtLog"  placeholder="Correo" runat="server"></asp:TextBox>
                    </div>

                    <div>
                       
                        <asp:TextBox ID="TxtNomUsua" CssClass="txtLog"  placeholder="Nombre de usuario" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        
                        <asp:TextBox ID="TxPass" runat="server" CssClass="txtLog"  placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </div>

                    <div>
                       
                        <asp:TextBox ID="TxPassConf" CssClass="txtLog" runat="server"  placeholder="Confirmar contraseña" TextMode="Password"></asp:TextBox>
                    </div>
                   
                    <asp:CheckBox ID="cbAceptoTermino" runat="server" Text="    Acepto terminos y condiciones." />
                    <br />
                    <asp:Button ID="btnIniciarSesion" runat="server" Text="Registrar" />
    
                </div>
                </form>
            </div>
</body>
</html>
