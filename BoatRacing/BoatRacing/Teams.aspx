<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teams.aspx.cs" Inherits="TEST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teams</title>
</head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
   
    <style type="text/css">
        .auto-style4 {
            left: 4px;
            top: -4px;
        }
        .auto-style5 {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            padding-left: 0;
            margin-bottom: 2;
            list-style: none;
            height: 54px;
        }
        .auto-style6 {
            height: 54px;
        }
    </style>
</head>
<body style="height: 81px">

      <nav class ="auto-style4">
          
        <a href ="Home.aspx" class ="navbar-brand">Home</a>
        <a href ="Teams.aspx" class ="navbar-brand">Teams</a>
          <a href ="Calendar.aspx" class ="navbar-brand">Race Calendar</a>
          
          <a href ="BoatInfo.aspx" class ="navbar-brand">Boat Info</a>
          <a href ="LeagueTable.aspx" class ="navbar-brand">League Table</a>
          <a href ="membership.aspx" class ="navbar-brand">Membership</a>
          <ul class ="auto-style5"> 

<body style="height: 81px">
    <form id="form1" runat="server" class="auto-style6">
        <h1>Edit
        Teams</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>"
            SelectCommand="SELECT 
	members.firstname, 
	members.lastname,
	CrewAllocation.RoleDescription,
	members.TeamName, 
	Boats.BoatName,
	team.HomeLocation

FROM members
INNER join team on team.TeamId = Members.TeamId
INNER Join CrewAllocation on Members.CrewAllocationId = CrewAllocation.CrewAllocationId
INNER JOIN Boats on Team.BoatId = Boats.BoatId" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Members] WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL))" InsertCommand="INSERT INTO [Members] ([FirstName], [LastName], [TeamId]) VALUES (@FirstName, @LastName, @TeamId)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [TeamId] = @TeamId WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MemberId" />
                <asp:Parameter Name="original_FirstName" />
                <asp:Parameter Name="original_LastName" />
                <asp:Parameter Name="original_TeamId" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" />
                <asp:Parameter Name="LastName" />
                <asp:Parameter Name="TeamId" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" />
                <asp:Parameter Name="LastName" />
                <asp:Parameter Name="TeamId" />
                <asp:Parameter Name="original_MemberId" />
                <asp:Parameter Name="original_FirstName" />
                <asp:Parameter Name="original_LastName" />
                <asp:Parameter Name="original_TeamId" />
            </UpdateParameters>
            
        </asp:SqlDataSource>
              </nav>
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="400px" Width="1336px">
                  <Columns>
                      <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                      <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                      <asp:BoundField DataField="RoleDescription" HeaderText="Role" SortExpression="RoleDescription" />
                      <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                      <asp:BoundField DataField="BoatName" HeaderText="Boat Name" SortExpression="BoatName" />
                      <asp:BoundField DataField="HomeLocation" HeaderText="Home Location" SortExpression="HomeLocation" />
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
   
    
              <asp:Button ID="BtnEditTeams" runat="server" OnClick="BtnEditTeams_Click" Text="Edit Teams" />
              <br />
     </form>
        
</body>
</html>
