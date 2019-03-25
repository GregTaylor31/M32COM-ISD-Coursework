<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditMembers.aspx.cs" Inherits="EditMembers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Edit Team Members with the table below</h1>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [Members] WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL)) AND (([TeamName] = @original_TeamName) OR ([TeamName] IS NULL AND @original_TeamName IS NULL)) AND (([CrewAllocationId] = @original_CrewAllocationId) OR ([CrewAllocationId] IS NULL AND @original_CrewAllocationId IS NULL))" InsertCommand="INSERT INTO [Members] ([FirstName], [LastName], [TeamId], [TeamName], [CrewAllocationId]) VALUES (@FirstName, @LastName, @TeamId, @TeamName, @CrewAllocationId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Members]" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [TeamId] = @TeamId, [TeamName] = @TeamName, [CrewAllocationId] = @CrewAllocationId WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL)) AND (([TeamName] = @original_TeamName) OR ([TeamName] IS NULL AND @original_TeamName IS NULL)) AND (([CrewAllocationId] = @original_CrewAllocationId) OR ([CrewAllocationId] IS NULL AND @original_CrewAllocationId IS NULL))">
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MemberId" DataSourceID="SqlDataSource1" Height="213px" Width="734px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="MemberId" HeaderText="MemberId" InsertVisible="False" ReadOnly="True" SortExpression="MemberId" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="TeamId" HeaderText="Team Id" SortExpression="TeamId" />
                <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                <asp:BoundField DataField="CrewAllocationId" HeaderText="Crew Allocation Id" SortExpression="CrewAllocationId" />
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
    </form>
</body>
</html>
