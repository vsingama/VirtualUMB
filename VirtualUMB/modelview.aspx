<%@ Page Title="View Models" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="modelview.aspx.cs" Inherits="modelview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="box shadow-effect">

<nav>
  <ul>
<li><a href="index.aspx">HOME PAGE</a></li>
<li><a href="MyAccount.aspx">MY ACCOUNT</a></li>
    <li><a href="BrowseDesigns.aspx">BROWSE DESIGN</a></li>
    <li><a href="ViewMap.aspx">COLLEGE MAP</a></li>
    <li><a href="CollegeMap.aspx">COLLEGE MODEL</a></li>
    <li><a href="AboutPage.aspx">ABOUT US</a></li>
  </ul>
</nav>

<p>
        &nbsp;</p> 
        <p class="links"><a href="ViewUsers.aspx"><b>Click to View all registered Users</b></a></p>
<br />
<br />

    <p>
        &nbsp;<b>List of Available Models :</b></p> <br />

         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="10"
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Model_ID" DataSourceID="sds_product" Width="1000px" 
             ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Model_ID" HeaderText="Model_ID" 
                    SortExpression="Model_ID" InsertVisible="False" ReadOnly="True" />
                 <asp:BoundField DataField="Name" HeaderText="Name" 
                     SortExpression="Name" />
                 <asp:BoundField DataField="Catageory" HeaderText="Catageory" 
                     SortExpression="Catageory" />
                 <asp:BoundField DataField="Model_Description" HeaderText="Model_Description" 
                     SortExpression="Model_Description" />
                 <asp:BoundField DataField="Likes_Count" HeaderText="Likes_Count" 
                     SortExpression="Likes_Count" />
                 <asp:BoundField DataField="Views_Count" HeaderText="Views_Count" 
                     SortExpression="Views_Count" />
                <asp:BoundField DataField="Creation_Date" HeaderText="Creation_Date" 
                    SortExpression="Creation_Date" />
            </Columns>
             <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource ID="sds_product" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VirtualUMBConnectionString %>" 
        DeleteCommand="DELETE FROM [Virtual_Upload] WHERE [Model_ID] = @Model_ID" 
        InsertCommand="INSERT INTO [Virtual_Upload] ([Name], [Catageory], [Model_Description], [Likes_Count], [Views_Count], [Creation_Date]) VALUES (@Name, @Catageory, @Model_Description, @Likes_Count, @Views_Count, @Creation_Date)" 
        SelectCommand="SELECT [Model_ID], [Name], [Catageory], [Model_Description], [Likes_Count], [Views_Count], [Creation_Date] FROM [Virtual_Upload]"
        
             
        UpdateCommand="UPDATE [Virtual_Upload] SET [Name] = @Name, [Catageory] = @Catageory, [Model_Description] = @Model_Description, [Likes_Count] = @Likes_Count, [Views_Count] = @Views_Count, [Creation_Date] = @Creation_Date WHERE [Model_ID] = @Model_ID">
        <DeleteParameters>
                <asp:Parameter Name="Model_ID" Type="Int32" />
            </DeleteParameters>
          <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Catageory" Type="String" />
                <asp:Parameter Name="Model_Description" Type="String" />
                <asp:Parameter Name="Likes_Count" Type="Int32" />
                <asp:Parameter Name="Views_Count" Type="Int32" />
                <asp:Parameter Name="Creation_Date" Type="String" />
            </InsertParameters>
        <UpdateParameters>
                 <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Catageory" Type="String" />
                <asp:Parameter Name="Model_Description" Type="String" />
                <asp:Parameter Name="Likes_Count" Type="Int32" />
                 <asp:Parameter Name="Views_Count" Type="Int32" />
                 <asp:Parameter Name="Creation_Date" Type="String" />
                 <asp:Parameter Name="Model_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    
    </div>
</asp:Content>

