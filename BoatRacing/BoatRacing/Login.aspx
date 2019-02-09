<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 195px;
        }
        .auto-style3 {
            width: 195px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Welcome to the boat racing website!</h1>
        <p>Please Login here:</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Username:</td>
                <td>
                    <asp:TextBox ID="TxtBoxLoginUsername" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username required" ForeColor="Red" ControlToValidate="TxtBoxLoginUsername"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td>
                    <asp:TextBox ID="TxtBoxLoginPassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required" ForeColor="Red" ControlToValidate="TxtBoxLoginPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" Width="165px" />
                    <asp:HyperLink ID="HyplnkRegister" runat="server" ForeColor="Blue" NavigateUrl="~/Registration.aspx">No account? No problem, create one here!</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
