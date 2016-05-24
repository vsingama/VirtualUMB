<%@ Page Title="Registered Users" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="ViewUsers" %>

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
    
<p class="links"><a href="modelview.aspx"><b>Click to View all uploaded models</b></a></p>
<br />
<br />
    <p>
        &nbsp;<b>List of Registered Users :</b></p> <br />


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="10"
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="sdsUsers" GridLines="Vertical" Width="1000px" 
        DataKeyNames="Umass_ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Umass_ID" HeaderText="Umass_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Umass_ID" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="name" />
            <asp:BoundField DataField="last_Name" HeaderText="last_Name" 
                SortExpression="password" />
            <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
            <asp:BoundField DataField="user_type" HeaderText="User_Type" 
                SortExpression="User_Type" />
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
    <asp:SqlDataSource ID="sdsUsers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VirtualUMBConnectionString2 %>" 
        DeleteCommand="DELETE FROM [Virtual_Registration] WHERE [Umass_ID] = @Umass_ID" 
        InsertCommand="INSERT INTO [Virtual_Registration] ([Umass_ID],[Email_ID],[First_Name],[last_Name],[User_Type]) VALUES (@name, @password, @email, @user_type)" 
        SelectCommand="SELECT [Umass_ID],[Email_ID],[First_Name],[last_Name],[User_Type] FROM [Virtual_Registration]" 
        
        UpdateCommand="UPDATE [Virtual_Registration] SET [First_Name] = @First_Name, [last_Name] = @last_Name, [Email_ID] = @Email_ID, [User_Type] = @User_Type WHERE [Umass_ID] = @Umass_ID" >
        <DeleteParameters>
            <asp:Parameter Name="Umass_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email_ID" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="last_Name" Type="String" />          
            <asp:Parameter Name="User_Type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email_ID" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="last_Name" Type="String" />          
            <asp:Parameter Name="User_Type" Type="String" />
            <asp:Parameter Name="Umass_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br /> <br /> <br /> <br />
    </div>

</asp:Content>

