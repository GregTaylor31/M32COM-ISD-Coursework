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

<body style="height: 457px">
    <form id="form1" runat="server">
        <h1>Edit
        Teams</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>"
            SelectCommand="SELECT * FROM [Members]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Members] WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL))" InsertCommand="INSERT INTO [Members] ([FirstName], [LastName], [TeamId]) VALUES (@FirstName, @LastName, @TeamId)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [TeamId] = @TeamId WHERE [MemberId] = @original_MemberId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([TeamId] = @original_TeamId) OR ([TeamId] IS NULL AND @original_TeamId IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MemberId" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_TeamId" Type="Int64" />
                <asp:Parameter Name="original_TeamName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="TeamId" Type="Int64" />
                <asp:Parameter Name="TeamName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="TeamId" Type="Int64" />
                <asp:Parameter Name="TeamName" Type="String" />
                <asp:Parameter Name="original_MemberId" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_TeamId" Type="Int64" />
                <asp:Parameter Name="original_TeamName" Type="String" />

            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="364px" Width="648px" AllowSorting="True" DataKeyNames="MemberId" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <%--<asp:BoundField DataField="MemberId" HeaderText="MemberId" SortExpression="MemberId" InsertVisible="False" ReadOnly="True" />--%>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MemberId" HeaderText="MemberId" SortExpression="MemberId" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
             <%--   <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />--%>
                <asp:TemplateField HeaderText="TeamName" SortExpression="TeamName">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="False" DataSourceID="SqlDataSource1" DataTextField="TeamName" DataValueField="TeamName">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT DISTINCT [TeamName] FROM [Members]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TeamName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
