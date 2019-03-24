<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
   
    <style type="text/css">
        .auto-style4 {
            left: 20px;
            top: 0px;
            width: 1537px;
            height: 582px;
            position: absolute;
            z-index: 1;
           
        }

      
        .auto-style6 {
            margin-left: 80px;
        }
        .auto-style7 {
            position: relative;
            left: 750px;
            top: -201px;
            width: 472px;
            height: 622px;
            text-align: center;
            margin-right: 5px;
        }
               
body {
  background-image: url("https://unleashthebot.com/wp-content/uploads/2016/06/Best-RC-Boats-on-the-market.jpg");
  
}

        .auto-style9 {
            height: 45px;
            text-align: left;
        }
        .auto-style11 {
            color: #000000;
        }
        .auto-style12 {
            height: 35px;
            text-align: left;
        }
        .auto-style13 {
            height: 73px;
            width: 624px;
        }
        .auto-style15 {
            width: 467px;
            height: 45px;
            text-align: right;
            margin-left: 5px;
        }

        .auto-style16 {
            width: 479px;
            height: 41px;
            text-align: right;
        }

        .auto-style17 {
            color: #3333FF;
        }

        .auto-style18 {
            font-size: xx-large;
            color: #0066FF;
        }
        .auto-style19 {
            font-size: x-large;
            color: #003300;
        }
        .auto-style20 {
            font-size: large;
            color: #000099;
        }
        
        .auto-style21 {
            font-size: xx-large;
            color: #FF0000;
        }
        .auto-style22 {
            text-align: right;
            height: 25px;
        }
        .auto-style23 {
            text-align: right;
            height: 21px;
        }
        .auto-style24 {
            text-align: left;
            height: 40px;
        }
        
    </style>
</head>
<body style="height: 85px" background="bgimage.jpg">
    

      <nav class ="auto-style4">
          
        <a href ="Home.aspx" class ="navbar-brand">Home</a>
        <a href ="Teams.aspx" class ="navbar-brand">Teams</a>
          <a href ="Calendar.aspx" class ="navbar-brand">Race Calendar</a>
          <a href ="#" class ="navbar-brand">Locations</a>
          <a href ="#" class ="navbar-brand">League Table</a>
          <a href ="membership.aspx" class ="navbar-brand">Membership</a>
          <ul class ="navbar-nav"> 

<body>
    
    <form id="lbl" runat="server">
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
        <div id="date2" style="margin-top: -310px;" class="auto-style7" >
            <h1 class="auto-style13"><em>
                <strong>
                <asp:Label ID="lblRaceInformation" runat="server" Text="Race Information" CssClass="auto-style11"></asp:Label>
                </strong>
                </em></h1>
            <h2 class="auto-style12">
                <asp:Label ID="LblLakeName" runat="server" Font-Size="XX-Large"></asp:Label>
            </h2>
            <div class="text-left">
               
                <div class="auto-style24">
               
                <asp:Label ID="lblLocation" runat="server" Text="Label" Font-Size="X-Large"></asp:Label>
           
                  
                </div>
           
                  
                <p class="auto-style9">
            <asp:Label ID="lblCountry" runat="server" Font-Size="X-Large"></asp:Label>
                </p>
                   <p class="auto-style23">
            <asp:Label ID="lblWindSpeed" runat="server" CssClass="auto-style20" Font-Size="X-Large"></asp:Label>

           
                </p>
                <h1 class="auto-style15">
            <asp:Label ID="lblTemp" runat="server" CssClass="auto-style17" Font-Size="X-Large"></asp:Label>
           
                </h1>
               
             
                <p class="auto-style22">
            <asp:Label ID="lblMinTemp" runat="server" Font-Bold="False" Font-Size="X-Large" CssClass="auto-style18"></asp:Label>
                </p>
                <div class="text-right">
            <asp:Label ID="lblMaxTemp" runat="server" Font-Bold="False" Font-Size="X-Large" CssClass="auto-style21"></asp:Label>
                     <p class="auto-style16">
            <asp:Label ID="lblHumididty" runat="server" CssClass="auto-style19" Font-Size="X-Large"></asp:Label>
                </p>
           
                </div>

           
            </div>

</div>  
              </nav>
             
    </form>
</body>
</html>
