<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
   
    <style type="text/css">
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




<body>
    <form id="form1" runat="server">
        <div>
            <h1>Race Calendar</h1>
        </div>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="358px" NextPrevFormat="ShortMonth" Width="701px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
