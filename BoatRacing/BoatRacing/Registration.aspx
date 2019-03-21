<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>





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
        </style>


    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/logincss.css" rel="stylesheet"/>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    




</head>
<body>
    <form id="form2" runat="server">
  
    <div class="sidenav">
         <div class="login-main-text">
        <h1>Welcome to the boat racing website!</h1>
             <asp:image id="Image2" runat="server" imageurl="https://media1.giphy.com/media/3oz8xRQiRlaS1XwnPW/giphy.gif?cid=3640f6095c919484716c7a5a7388135d" xmlns:asp="#unknown" Height="262px" Width="403px"/>
        
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
           <h1>Please Register Here:</h1>
                </div>
                  <div class="form-group">
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
            </div>
         </div>
      </div>




        
    </form>
</body>
</html>





