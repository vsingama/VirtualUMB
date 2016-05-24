<%@ Page Title="Browse Designs" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="BrowseDesigns.aspx.cs" Inherits="BrowseDesigns" %>

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

 <b>Select a Category: </b><asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="sds_type" DataTextField="catageory" DataValueField="catageory" 
        AutoPostBack="True"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        AppendDataBoundItems="true">
    <asp:ListItem Value="-1" Text="  select  " />
    </asp:DropDownList>
   
    <asp:SqlDataSource ID="sds_type" runat="server" 
        ConnectionString="<%$ ConnectionStrings:virtualUMBConnection %>" 
        SelectCommand="SELECT DISTINCT [catageory] FROM [Virtual_UMB].[dbo].[Virtual_Upload]"></asp:SqlDataSource>

           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
            CssClass="productTable" >
         <Columns>
             <asp:BoundField DataField="ModelId" HeaderText="ModelId" ItemStyle-Width="30" Visible="false"  />
            <asp:ImageField  runat="server"  DataImageUrlField = "Image"  ControlStyle-Width = "150" ControlStyle-Height = "150" HeaderText = "Preview Image" ItemStyle-Width="200" />    
            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150"  />
            <asp:BoundField DataField="Likes" HeaderText="Likes" ItemStyle-Width="50" ItemStyle-HorizontalAlign="Left"  />
            <asp:BoundField DataField="Views" HeaderText="Views" ItemStyle-Width="50" ItemStyle-HorizontalAlign="Left"  />
            <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Left" />
            <asp:HyperLinkField Text="View 3D Model" DataNavigateUrlFormatString="~/{0}" DataNavigateUrlFields="ModelId" />
        </Columns>
    </asp:GridView>

</div>
</asp:Content>

