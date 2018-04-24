<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="Proyecto.registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <div>
                <form id="form1" runat="server">
                <div>
                    <div>
                        <label for="TxNombre">Nombre(s)</label>
                        <asp:TextBox ID="TxNombre" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <label for="TxApellido">Nombre(s)</label>
                        <asp:TextBox ID="TxApellido" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <label for="TxCorreo">Correo</label>
                        <asp:TextBox ID="TxCorreo" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <label for="TxtNomUsua">Nombre de Usuario</label>
                        <asp:TextBox ID="TxtNomUsua" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <label for="TxPass">Contraseña</label>
                        <asp:TextBox ID="TxPass" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div>
                        <label for="TxPassConf">Confirmar Contraseña</label>
                        <asp:TextBox ID="TxPassConf" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                   
                    <asp:CheckBox ID="cbAceptoTermino" runat="server" Text="    Acepto terminos y condiciones." />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Button" />
    
                </div>
                </form>
            </div>
</body>
</html>
