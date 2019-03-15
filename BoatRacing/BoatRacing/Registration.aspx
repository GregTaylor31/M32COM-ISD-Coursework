﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 233px;
        }
        .auto-style3 {
            font-size: larger;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 840px;
        }
        .auto-style8 {
            width: 109px;
            font-size: medium;
        }
        .auto-style15 {
            width: 233px;
            text-align: right;
            height: 34px;
        }
        .auto-style16 {
            width: 840px;
            height: 34px;
        }
        .auto-style18 {
            text-align: left;
            width: 840px;
        }
        .auto-style19 {
            width: 233px;
            text-align: right;
            height: 34px;
            font-size: large;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style22 {
            font-size: medium;
        }
    </style>
</head>
<body style="width: 829px; height: 398px">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <h1 class="auto-style6">Welcome to the boat racing website!</h1>
            <p class="auto-style6">
                Please register with the form below.</p>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">Username:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TxtBoxUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldUsername" runat="server" ControlToValidate="TxtBoxUserName" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><span class="auto-style20">Password</span>:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TxtBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ControlToValidate="TxtBoxPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><span class="auto-style20">Confirm</span> <span class="auto-style20">Password</span>:</td>
                <asp:Image ID="Image1" runat="server" />
                <td class="auto-style16">
                    <asp:TextBox ID="TxtBoxConfirmPassword" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldConfirmPassword" runat="server" ControlToValidate="TxtBoxConfirmPassword" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style15"><span class="auto-style20">Email</span>:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TxtBoxEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldEmail" runat="server" ControlToValidate="TxtBoxEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style18">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtBoxEmail" ErrorMessage="Not a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style18">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtBoxPassword" ControlToValidate="TxtBoxConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="BtnRegister" runat="server" CssClass="auto-style22" Text="Register" OnClick="BtnRegister_Click" />
                    <input id="Reset1" class="auto-style8" type="reset" value="Reset" /></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>