<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
   
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            height: 72px;
            text-align: left;
            width: 1142px;
        }
        .auto-style2 {
            height: 48px;
            width: 155px;
        }
        .auto-style3 {
            font-size: small;
            margin-left: 29;
        }
        .auto-style4 {
            left: 4px;
            top: -4px;
        }
    </style>
</head>
<body style="height: 116px">

      <nav class ="auto-style4">
          
        <a href ="Home.aspx" class ="navbar-brand">Home</a>
        <a href ="Teams.aspx" class ="navbar-brand">Teams</a>
          <a href ="Calendar.aspx" class ="navbar-brand">Race Calendar</a>
          <a href ="#" class ="navbar-brand">Locations</a>
          <a href ="#" class ="navbar-brand">League Table</a>
          <a href ="membership.aspx" class ="navbar-brand">Membership</a>
          <ul class ="navbar-nav"> 

    <form id="form1" runat="server" class="auto-style2">
        <div>
            <h1 class="auto-style1">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnLogout" runat="server" Text="Logout" Height="38px" OnClick="BtnLogout_Click" Width="106px" CssClass="auto-style3" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h1>
        </div>
        <asp:Label ID="LblWelcome" runat="server" Text="Welcome "></asp:Label>
        <p>
            &nbsp;</p>
    </form>
    
  

   </nav>
</body>&nbsp; 
      <p>
          &nbsp;</p>
</html>


