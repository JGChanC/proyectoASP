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
                <div>
                    <div>
                        <label class="letreroLabel" for="TxNombre">Nombre(s)</label>
                        <asp:TextBox ID="TxNombre" runat="server" CssClass="txtLog" placeholder="Nombre"></asp:TextBox>
                    </div>

                    <div>
                        <label class="letreroLabel" for="TxApellido">Apellido(s)</label>
                        <asp:TextBox ID="TxApellido" CssClass="txtLog" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <label class="letreroLabel" for="TxCorreo">Correo</label>
                        <asp:TextBox ID="TxCorreo" CssClass="txtLog" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <label class="letreroLabel" for="TxtNomUsua">Nombre de Usuario</label>
                        <asp:TextBox ID="TxtNomUsua" CssClass="txtLog" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <label class="letreroLabel" for="TxPass">Contraseña</label>
                        <asp:TextBox ID="TxPass" runat="server" CssClass="txtLog" TextMode="Password"></asp:TextBox>
                    </div>

                    <div>
                        <label class="letreroLabel" for="TxPassConf">Confirmar Contraseña</label>
                        <asp:TextBox ID="TxPassConf" CssClass="txtLog" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                   
                    <asp:CheckBox ID="cbAceptoTermino" runat="server" Text="    Acepto terminos y condiciones." />
                    <br />
                    <asp:Button ID="btnIniciarSesion" runat="server" Text="Button" />
    
                </div>
                </form>
            </div>
</body>
</html>
