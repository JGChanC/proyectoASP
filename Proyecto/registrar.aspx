<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="Proyecto.registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>POST | Registrar</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
     <link rel="stylesheet" type="text/css" href="css/header_principal.css"/>
    <link rel="stylesheet" type="text/css" href="css/registrar.css"/>
   <script src="scripts/jquery-3.2.1.js"></script>
    <appSettings>
        <add key="ValidationSettings:UnobtrusiveValidationMode" value="None"></add>
    </appSettings>

    <script language="javascript">

       function validaNombreTamanio(sender,args){
            if(args.Value.length<=150){
                
                args.IsValid=true;
            
            }else{
                args.IsValid=false;
            }
       }

       function validaContraTamanio(sender, args) {
           if (args.Value.length >= 8 && args.Value.length <= 20) {

               args.IsValid = true;

           } else {
               args.IsValid = false;
           }
       }


        function validaUsuaTamanio(sender, args) {
           if (args.Value.length >= 8 && args.Value.length <= 20) {

               args.IsValid = true;

           } else {
               args.IsValid = false;
           }
       }

    
       function habilitarButton() {

           if (!$("#cbAceptoTermino").is(':checked')) {
               $('#btnIniciarSesion').attr('disabled', 'disabled');
               $('#btnIniciarSesion').removeClass('enabled');
               $('#btnIniciarSesion').addClass('disabled');
           } else {
               $('#btnIniciarSesion').removeAttr('disabled');
               $('#btnIniciarSesion').removeClass('disabled');
               $('#btnIniciarSesion').addClass('enabled');
               
           }

       }
       

    </script>

  
   <style>

       .enabled {
       
           cursor:pointer;
       
       }

       .disabled {
            cursor:not-allowed;
       }
        #registrar {
            border: 1px #000 solid;
              border-radius: 10px;
        }

         .txtLog{
            border: 1px black solid;
        }

           img#imgLogin {
            width:100px;
            margin-left:-3.5em;
            margin-top:-6em;
           }

     .contenedor {
          padding-top:20px;
          border:0;

    }
   </style>
   
</head>
<body>
    <!--#include file="headers/header_login.aspx"-->
        <div class="contenedor">
                <form id="registrar" runat="server">
                     <img id="imgLogin" alt="" src="/Imagenes/icono_login.png" /><asp:RequiredFieldValidator ID="RFrequireNombre" runat="server" ControlToValidate="TxNombre" Display="None" ErrorMessage="No ingresó su(s) nombre(s)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="CVtamanioNombre" runat="server" ControlToValidate="TxNombre" Display="None" ErrorMessage="El nombre debe contener menos de 150 caracteres" ClientValidationFunction="validaNombreTamanio"></asp:CustomValidator>
                     <asp:RegularExpressionValidator ID="REexpresionNombre" runat="server" ControlToValidate="TxNombre" Display="None" ErrorMessage="El nombre no cumple con formato valido" SetFocusOnError="True" ValidationExpression="([A-ZÁÉÍÓÚa-zñáéíóú]+[\s]*)+"></asp:RegularExpressionValidator>
                     <br />
                     <asp:Label ID="Label1" runat="server" Text="Registrarse"></asp:Label>
                <div id="contodo">
                    <div>
                 
                        <asp:TextBox ID="TxNombre" runat="server" CssClass="txtLog" placeholder="Nombre(s)" OnTextChanged="TxNombre_TextChanged"></asp:TextBox>
                       
                          </div>

                    <div>
                       
                        <asp:TextBox ID="TxApellido" CssClass="txtLog"  placeholder="Apellido(s)" runat="server" OnTextChanged="TxApellido_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFrequireApellido" runat="server" ControlToValidate="TxApellido" Display="None" ErrorMessage="No ingresó su(s) apellido(s)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="CVtamanioApellido" runat="server" ControlToValidate="TxApellido" Display="None" ErrorMessage="El correo debe contener menos de 150 caracteres" ClientValidationFunction="validaNombreTamanio"></asp:CustomValidator>
                     <asp:RegularExpressionValidator ID="REexpresionApellido" runat="server" ControlToValidate="TxApellido" Display="None" ErrorMessage="El apellido no cumple con formato válido" SetFocusOnError="True" ValidationExpression="([A-Za-zñáéíóú]+[\s]*)+"></asp:RegularExpressionValidator>
                     <br />
                    </div>

                    <div>
                       
                        <asp:TextBox ID="TxCorreo" CssClass="txtLog"  placeholder="Correo" runat="server" OnTextChanged="TxCorreo_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFrequireCorreo" runat="server" ControlToValidate="TxCorreo" Display="None" ErrorMessage="No ingresó su correo" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="CVtamanioCorreo" runat="server" ControlToValidate="TxCorreo" Display="None" ErrorMessage="El correo debe contener menos de 150 caracteres" ClientValidationFunction="validaNombreTamanio"></asp:CustomValidator>
                     <asp:RegularExpressionValidator ID="REexpresionCorreo" runat="server" ControlToValidate="TxCorreo" Display="None" ErrorMessage="El correo no cumple con formato válido" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9.!#$%&amp;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"></asp:RegularExpressionValidator>
                    </div>

                    <div>
                       
                        <asp:TextBox ID="TxtNomUsua" CssClass="txtLog"  placeholder="Nombre de usuario" runat="server" OnTextChanged="TxtNomUsua_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFrequireNomUsua" runat="server" ControlToValidate="TxtNomUsua" Display="None" ErrorMessage="No ingresó su nombre de usuario" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="CVtamanioNomUsua" runat="server" ControlToValidate="TxtNomUsua" Display="None" ErrorMessage="El nombre de usuario debe contener menos de 20 y mas de 8 caracteres" ClientValidationFunction="validaUsuaTamanio"></asp:CustomValidator>
                     <asp:RegularExpressionValidator ID="REexpresionNomUsua" runat="server" ControlToValidate="TxtNomUsua" Display="None" ErrorMessage="El nombre de usuario no cumple con formato válido" SetFocusOnError="True" ValidationExpression="[0-9A-Za-z]+"></asp:RegularExpressionValidator>
                    </div>

                    <div>
                        
                        <asp:TextBox ID="TxPass" runat="server" CssClass="txtLog"  placeholder="Contraseña" TextMode="Password" OnTextChanged="TxPass_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFrequirePass" runat="server" ControlToValidate="TxPass" Display="None" ErrorMessage="No ingresó su contraseña" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="CVtamanioContra" runat="server" ControlToValidate="TxPass" Display="None" ErrorMessage="La contraseña debe contener menos de 20 y mas de 8 caracteres" ClientValidationFunction="validaContraTamanio"></asp:CustomValidator>
                     <asp:RegularExpressionValidator ID="REexpresionContra" runat="server" ControlToValidate="TxPass" Display="None" ErrorMessage="la contraseña no cumple con formato válido" SetFocusOnError="True" ValidationExpression="[0-9A-Za-z]+"></asp:RegularExpressionValidator>
                    </div>

                    <div>
                       
                        <asp:TextBox ID="TxPassConf" CssClass="txtLog" runat="server"  placeholder="Confirmar contraseña" TextMode="Password" OnTextChanged="TxPassConf_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFrequireComPass" runat="server" ControlToValidate="TxPassConf" Display="None" ErrorMessage="No ingresó comparar contraseña" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="CVtamanioComPass" runat="server" ControlToValidate="TxPassConf" Display="None" ErrorMessage="Su contraseña repetida debe contener menos de 20 y mas de 8 caracteres" ClientValidationFunction="validaContraTamanio"></asp:CustomValidator>
                        <asp:CompareValidator ID="CVConfPass" runat="server" ControlToCompare="TxPass" ControlToValidate="TxPassConf" Display="None" ErrorMessage="La confirmación de contraseña es incorrecta"></asp:CompareValidator>
                    </div>
                   
                    <asp:ValidationSummary ID="VRresumenRegistrar" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
                   
                    <asp:CheckBox ID="cbAceptoTermino" CssClass="lnkbRecuperar"   runat="server"  onClick="habilitarButton()"  Text ="    Acepto terminos y condiciones." />
                    <br />
                    <asp:Button ID="btnIniciarSesion" runat="server"  CssClass="disabled" disabled="disabled" Text="Registrar" OnClick="btnIniciarSesion_Click" />
    
                </div>
                </form>
            </div>
</body>
</html>
