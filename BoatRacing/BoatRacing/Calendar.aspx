<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
   
    <style type="text/css">
        .auto-style4 {
            left: 0px;
            top: 0px;
            width: 1308px;
            height: 537px;
            position: absolute;
        }
        .auto-style5 {
            color: #6699FF;
        }
        .auto-style6 {
            margin-left: 80px;
        }
    </style>
</head>
<body style="height: 116px">

      <nav class ="auto-style4" style="z-index: 1">
          
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
            <h1><strong class="auto-style6"><em>Racing Calendar</em></strong></h1>
        </div>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" Font-Names="Verdana" Font-Size="12pt" ForeColor="#003399" Height="447px" Width="566px" OnSelectionChanged="Calendar1_SelectionChanged" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" OnDayRender="Calendar1_DayRender">
            <DayHeaderStyle ForeColor="#336666" Height="1px" BackColor="#99CCCC" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="19pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <div id="date2" style="position: relative; left: 900px; margin-top: -310px;">
    <asp:Textbox ID="txtboxRaceInfo" runat="server" Height="300px" Width="410px" CssClass="auto-style5"></asp:TextBox>
</div>
               
    </form>
</body>
</html>
