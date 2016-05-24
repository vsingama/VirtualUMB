<%@ Page Title="My Models" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="ViewMyDesign.aspx.cs" Inherits="ViewMyDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <link href="css/venkat/venkat.css" rel="stylesheet" type="text/css" />
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

<div class="newdivstyle">

    <asp:Label ID="UserLabel" runat="server" Text="Label" Font-Size="XX-Large" BorderStyle="None"  CssClass="MyDesignHeadingCss"></asp:Label>
    
    <asp:Label ID="MessageLbl" runat="server" BorderStyle="None" EnableViewState="false" Font-Size="X-Large"></asp:Label>
       
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        EnableViewState="False" CssClass="MyDesignCss" 
        OnRowDeleting="DeleteModel"   
        OnRowEditing = "GridView1_RowEditing"
        OnRowCancelingEdit = "GridView1_RowCancelingEdit"
        OnRowUpdating = "GridView1_RowUpdating"
        DataKeyNames="ModelId" 
        BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
    <asp:BoundField  DataField="ModelId" HeaderText="ModelId" Visible="false" ReadOnly="true">
        <ItemStyle Wrap="False" />
        </asp:BoundField>

        <asp:ImageField DataImageUrlField="ModelImage" DataAlternateTextFormatString="ModelImage" nulldisplaytext="No image on file." Headertext="MODEL PHOTO" readonly="true">
            <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" />
            <ItemStyle BorderStyle="None" HorizontalAlign="Center" Width="25px" 
                BackColor="#C6C6FF" />
        </asp:ImageField>
              
        <asp:TemplateField HeaderText = "MODEL NAME">
            <ItemTemplate>
                <asp:Label ID="ModelName" Text='<%# Bind("ModelName") %>' runat="server" >
                </asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="ModelName1" Text='<%# Bind("ModelName") %>' runat="server" Width="120px" Wrap="true">
                </asp:TextBox>
            </EditItemTemplate>
            <HeaderStyle BorderStyle="None" Font-Bold="True" HorizontalAlign="Center" 
                BackColor="#3333FF" />
            <ItemStyle BorderStyle="None" HorizontalAlign="Center" Width="120px" 
                VerticalAlign="Middle" />
        </asp:TemplateField>
              
        <asp:TemplateField HeaderText = "MODEL CATEGORY">
            <ItemTemplate>
                <asp:Label ID="ModelCategory" Text='<%# Bind("ModelCategory") %>' runat="server" >
                </asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="ModelCategory1" Text='<%# Bind("ModelCategory") %>' runat="server" Width="93px" Wrap="true">
                </asp:TextBox>
            </EditItemTemplate>
            <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <ItemStyle BorderStyle="None" HorizontalAlign="Center" VerticalAlign="Middle" 
                BackColor="#C6C6FF" />
        </asp:TemplateField>

        <asp:TemplateField HeaderText = "MODEL DESCRIPTION">
            <ItemTemplate>
                <asp:Label ID="ModelDescription" Text='<%# Bind("ModelDescription") %>' runat="server" >
                </asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="ModelDescription1" Text='<%# Bind("ModelDescription") %>' runat="server" Width="105px" Wrap="true">
                </asp:TextBox>
            </EditItemTemplate>
            <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <ItemStyle BorderStyle="None" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
             
        <asp:BoundField DataField="OwnerName" HeaderText="OWNER NAME" ReadOnly="true" >
        <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" />
        <ItemStyle BorderStyle="None" HorizontalAlign="Center" 
            Width="115px" Wrap="False" VerticalAlign="Middle" BackColor="#C6C6FF" />
        </asp:BoundField>

        <asp:HyperLinkField  DataNavigateUrlFields="3DModelImage" DataNavigateUrlFormatString="{0}" DataTextField="3DModelImage" ItemStyle-Width="100px" ItemStyle-Wrap="true" 
            DataTextFormatString="SaveFiletoYourMachine" HeaderText="DOWNLOAD 3D MODEL" Target="_blank" >
        <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" />
        <ItemStyle Wrap="True" Width="125px" BorderStyle="None" HorizontalAlign="Center"></ItemStyle>
        </asp:HyperLinkField>

        <asp:HyperLinkField Text="View" DataNavigateUrlFormatString="~/{0}" HeaderText="VIEW MODEL"
            DataNavigateUrlFields="ModelId">

        <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" 
            VerticalAlign="Middle" />

        <ItemStyle HorizontalAlign="Center" BorderStyle="None" Width="105px" 
            BackColor="#C6C6FF"></ItemStyle>
        </asp:HyperLinkField>

       <asp:CommandField ShowEditButton="True" HeaderText="EDIT MODEL" >
            
                          
            <ControlStyle BorderStyle="None" Width="50px" />
        <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <ItemStyle BorderStyle="None" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:CommandField>
            
                          
            <asp:TemplateField HeaderText="DELETE YOUR MODEL">
                <ItemTemplate>
                    <span title="Permanently delete your Model" onclick="return confirm('Are you sure to delete?')">
                    <asp:LinkButton ID="delete" runat="server" CommandName="Delete" ForeColor="Red" CssClass="MyDesignButtonCss" Text="Delete" Width="30%"></asp:LinkButton></span>
                </ItemTemplate>
                <ControlStyle BackColor="#CCCCCC" BorderStyle="Inset" />
                <HeaderStyle BackColor="#3333FF" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None" 
                    BackColor="#C6C6FF" />
            </asp:TemplateField>

    </Columns>
        
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" Width="1px" 
            HorizontalAlign="Center"/>
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
        
    </asp:GridView>
            
    &nbsp;&nbsp;&nbsp;&nbsp;
        
    <asp:Button ID="B1" runat="server" Text="Add New Model" OnClick="AddModel" CssClass="MyDesignButtonCss" />     
</div>
</div>         
           
</asp:Content>

