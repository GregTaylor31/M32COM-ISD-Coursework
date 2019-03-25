<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeagueTable.aspx.cs" Inherits="LeagueTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"></head>
<body>

    <form id="form1" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
   
    <style type="text/css">
        .auto-style4 {
            left: 4px;
            top: -4px;
         
        }
        body {
  background-image: url("http://clipart-library.com/images/BTgKM8bEc.gif");
  
}
        .auto-style6 {
            
        }
        </style>
</head>
<body style="height: 81px">
  

      <nav class ="auto-style4">
          
        <a href ="Home.aspx" class ="navbar-brand">Home</a>
        <a href ="Teams.aspx" class ="navbar-brand">Teams</a>
          <a href ="Calendar.aspx" class ="navbar-brand">Race Calendar</a>
          <a href ="#" class ="navbar-brand">Locations</a>
          <a href ="BoatInfo.aspx" class ="navbar-brand">Boat Info</a>
          <a href ="#" class ="navbar-brand">League Table</a>
          <a href ="membership.aspx" class ="navbar-brand">Membership</a>
          <h1><span class="auto-style6">League Table</span></h1>
      </nav>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="select LeagueTable.Points, LeagueTable.GamesPlayed, Team.TeamName, boats.BoatName, boats.BoatDescription from leaguetable inner join team on team.LeagueId = LeagueTable.LeagueId inner join boats on boats.BoatId = team.BoatId"></asp:SqlDataSource>
      <div class="text-center">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="322px" Width="1163px">
          <Columns>
              <asp:BoundField DataField="BoatDescription" HeaderText="Boat Class" SortExpression="BoatDescription" />
              <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
              <asp:BoundField DataField="BoatName" HeaderText="Boat Name" SortExpression="BoatName" />
              <asp:BoundField DataField="Points" HeaderText="Points" SortExpression="Points" />
              <asp:BoundField DataField="GamesPlayed" HeaderText="Games Played" SortExpression="GamesPlayed" />
          </Columns>
          <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
          <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
          <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
          <RowStyle BackColor="White" ForeColor="#003399" />
          <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
          <SortedAscendingCellStyle BackColor="#EDF6F6" />
          <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
          <SortedDescendingCellStyle BackColor="#D6DFDF" />
          <SortedDescendingHeaderStyle BackColor="#002876" />
      </asp:GridView>
        </div>
        </form>
</body>
</html>
