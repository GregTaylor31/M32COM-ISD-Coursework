<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BoatInfo.aspx.vb" Inherits="BoatInfo" %>

<!DOCTYPE html>

<head runat="server">
    <title>Boar Information</title>
</head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
<style type="text/css">
        .auto-style4 {
            left: 4px;
            top: -4px;
         
        }
        body {
  /*background-image: url("https://dronesgator.com/wp-content/uploads/2018/04/rc-sailboat-white.jpg");*/
  background-color: lightgray;
  
}
        </style>
   
    
</head>
<body style="height: 116px">

      <nav class ="auto-style4">
          
        <a href ="Home.aspx" class ="navbar-brand">Home</a>
        <a href ="Teams.aspx" class ="navbar-brand">Teams</a>
          <a href ="Calendar.aspx" class ="navbar-brand">Race Calendar</a>
          <a href ="#" class ="navbar-brand">Locations</a>
          <a href ="BoatInfo.aspx" class ="navbar-brand">Boat Info</a>
          <a href ="LeagueTable.aspx" class ="navbar-brand">League Table</a>
          <a href ="membership.aspx" class ="navbar-brand">Membership</a>
          <ul class ="navbar-nav"> 

<body>
    <form id="form1" runat="server">
        <div>
        <h1>Boat Information</h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [Members] WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL)) AND (([TeamName] = @original_TeamName) OR ([TeamName] IS NULL AND @original_TeamName IS NULL)) AND (([CrewAllocationId] = @original_CrewAllocationId) OR ([CrewAllocationId] IS NULL AND @original_CrewAllocationId IS NULL))" InsertCommand="INSERT INTO [Members] ([FirstName], [LastName], [TeamId], [TeamName], [CrewAllocationId]) VALUES (@FirstName, @LastName, @TeamId, @TeamName, @CrewAllocationId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT 
	Team.TeamName,
	Boats.BoatName,
	Boats.BoatDescription,
	Team.HomeLocation

FROM	
	Boats

INNER JOIN Team On Boats.BoatId = Team.BoatId" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [TeamId] = @TeamId, [TeamName] = @TeamName, [CrewAllocationId] = @CrewAllocationId WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL)) AND (([TeamName] = @original_TeamName) OR ([TeamName] IS NULL AND @original_TeamName IS NULL)) AND (([CrewAllocationId] = @original_CrewAllocationId) OR ([CrewAllocationId] IS NULL AND @original_CrewAllocationId IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MemberId" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_TeamId" Type="Int64" />
                    <asp:Parameter Name="original_TeamName" Type="String" />
                    <asp:Parameter Name="original_CrewAllocationId" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="TeamId" Type="Int64" />
                    <asp:Parameter Name="TeamName" Type="String" />
                    <asp:Parameter Name="CrewAllocationId" Type="Int64" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="TeamId" Type="Int64" />
                    <asp:Parameter Name="TeamName" Type="String" />
                    <asp:Parameter Name="CrewAllocationId" Type="Int64" />
                    <asp:Parameter Name="original_MemberId" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_TeamId" Type="Int64" />
                    <asp:Parameter Name="original_TeamName" Type="String" />
                    <asp:Parameter Name="original_CrewAllocationId" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="327px" Width="1289px">
                <Columns>
                    <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                    <asp:BoundField DataField="BoatName" HeaderText="Boat Name" SortExpression="BoatName" />
                    <asp:BoundField DataField="BoatDescription" HeaderText="Boat Description" SortExpression="BoatDescription" />
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
        </div>
    </form>
</body>
</html>
