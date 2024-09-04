<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="Tp3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            text-align: center;
        }
        #form1 {
            text-align: left;
            z-index: 1;
            left: 10px;
            top: 15px;
            height: 352px;
            width: 999px;
        }
        .auto-style2 {
            width: 218px;
        }
        .auto-style4 {
            width: 218px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style1 {
            width: 100%;
            height: 250px;
        }
        .auto-style6 {
            width: 218px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            height: 447px;
        }
        .auto-style9 {
            position: absolute;
            top: 318px;
            left: 288px;
            z-index: 1;
            width: 173px;
            height: 18px;
        }
        .auto-style10 {
            width: 52px;
        }
        .auto-style11 {
            width: 52px;
            height: 23px;
        }
        .auto-style12 {
            width: 52px;
            height: 26px;
        }
        .auto-style13 {
            position: absolute;
            top: 40px;
            left: 510px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style15 {
            position: absolute;
            top: 90px;
            z-index: 1;
            left: 512px;
            height: 20px;
        }
        .auto-style16 {
            width: 52px;
            height: 24px;
        }
        .auto-style17 {
            width: 218px;
            height: 24px;
        }
        .auto-style18 {
            height: 24px;
        }
        .auto-style19 {
            position: absolute;
            top: 59px;
            left: 510px;
            z-index: 1;
            height: 20px;
            bottom: 450px;
        }
        .auto-style20 {
            position: absolute;
            top: 188px;
            left: 511px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style21 {
            position: absolute;
            top: 216px;
            left: 512px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style22 {
            position: absolute;
            top: 293px;
            left: 514px;
            z-index: 1;
            height: 19px;
            margin-bottom: 0px;
        }
        .auto-style23 {
            position: absolute;
            top: 321px;
            left: 517px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style24 {
            position: absolute;
            top: 240px;
            left: 512px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 268px;
            left: 514px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style26 {
            position: absolute;
            top: 264px;
            left: 515px;
            z-index: 1;
            height: 20px;
            bottom: 245px;
        }
        .auto-style27 {
            position: absolute;
            top: 298px;
            left: 515px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 377px;
            left: 516px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style8">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblLoc" runat="server" Font-Bold="True" Font-Size="Large" Text="Localidades"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblNomLocalidad" runat="server" Text="Nombre de Localidad:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLocalidad" runat="server" Height="16px" ValidationGroup="Grupo1" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" CssClass="auto-style22" ValidationGroup="Grupo2">Ingrese codigo postal</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revLocalidades" runat="server" ControlToValidate="txtLocalidad" CssClass="auto-style19" ValidationExpression="^[a-zA-Z0-9 ]+$" ValidationGroup="Grupo1">Ingrese una localidad valida</asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtMail" CssClass="auto-style26" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Grupo1">Ingrese un correo electronico valido</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnGuardaLoc" runat="server" Height="19px" OnClick="btnGuardaLoc_Click" Text="Guardar Localidad" ValidationGroup="Grupo1" Width="130px" />
                    <asp:Label ID="lblGuardadoLocalidad" runat="server" CssClass="auto-style15"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:Label ID="lblUsuario" runat="server" Font-Bold="True" Font-Size="Large" Text="Usuarios"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblNomUs" runat="server" Text="Nombre usuario:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server" Height="16px" style="z-index: 1" ValidationGroup="Grupo2" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" CssClass="auto-style13" ValidationGroup="Grupo1">Ingrese Localidad</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña1" CssClass="auto-style21" ValidationGroup="Grupo2">Ingrese contraseña</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" CssClass="auto-style20" ValidationGroup="Grupo2">Ingrese usuario</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblContraseña" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtContraseña1" runat="server" Height="16px" TextMode="Password" ValidationGroup="Grupo2" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblContraseña2" runat="server" Text="Repetir contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtContraseña2" runat="server" Height="16px" TextMode="Password" ValidationGroup="Grupo2" Width="175px"></asp:TextBox>
                    <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña1" ControlToValidate="txtContraseña2" CssClass="auto-style24" ValidationGroup="Grupo2">Contraseña incorrecta</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblMail" runat="server" Text="Correo electronico:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" Height="16px" ValidationGroup="Grupo2" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMail" runat="server" ControlToValidate="txtMail" CssClass="auto-style25" ValidationGroup="Grupo2">Ingrese correo electronico</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="lblCP" runat="server" Text="CP:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtCP" runat="server" CssClass="nuevoEstilo1" Height="16px" ValidationGroup="Grupo2" Width="175px"></asp:TextBox>
                    <asp:CustomValidator ID="cvCP" runat="server" ControlToValidate="txtCP" CssClass="auto-style27" OnServerValidate="cvCP_ServerValidate" ValidationGroup="Grupo2">El codigo postal debe contener 4 digitos</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="lblLocalidades" runat="server" Text="Localidades:"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlLocalidades" runat="server" CssClass="auto-style9" ValidationGroup="Grupo2">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="ddlLocalidades" CssClass="auto-style23" ValidationGroup="Grupo2">Elija una Localidad</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnGuardarUs" runat="server" Height="19px" OnClick="btnGuardarUs_Click" Text="Guardar Usuario" ValidationGroup="Grupo2" Width="113px" />
                    <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style28" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="btnIrA" runat="server" Height="19px" OnClick="btnIrA_Click" Text="Ir a Inicio.aspx" Width="113px" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
