<%@ Page Title="Login User" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
<style type="text/css">
        .style31
        {
            width: 77px;
        }
        .style33
        {
            width: 80px;
            font-weight: bold;
        }
    .style41
    {
        font-weight: normal;
    }
    </style>
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

<div class="loginTable" style="width:600px 0 auto; left:300px;">
    <br />
    <p class="center1"> <b>Welcome User..!! We are glad you are back <br /> Please Login to continue</b></p>
    <br /><br />
   <table>
    <tr> <td>
        </td><td></td>
        <td class="style33"> EmailID:</td>
        <td class="style31">  
            <asp:TextBox ID="txtemail" runat="server" Width="223px" Height="23px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="  ** Email ID is required" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr><td></td><td></td>
        <td class="style33">  Password:</td>
        <td class="style31">  
            <asp:TextBox ID="txtPassword" type="password" runat="server" Width="221px" Height="21px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="  ** Password is Required" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td></td><td></td>
    <td class="style32"></td>
    
    <td>
        <br />
       <asp:Button ID="btnLogin" runat="server" Text="Login" Width="96px"  
        left="50px" onclick="btnLogin_Click" BackColor="#0066FF" BorderColor="#0066FF" 
            BorderStyle="Solid" ForeColor="White"/>
        <asp:Button ID="Button1" runat="server" Text="Forgot Password" Width="110px"  
        left="50px" onclick="Button1_Click" BackColor="#0066FF" BorderColor="#0066FF" 
            BorderStyle="Solid" ForeColor="White" />
        <br />
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    <tr>
    <td class="style32"></td>
    <td></td>
    <td></td><td></td>
     <td>
         <img src="./Images/login1.jpg"  alt="pic not found" />
    </td>
    </tr>
    </table>
    <br /> <br />
    </div>
    <br />
    <br /><br /> <br />
    </div>

</asp:Content>

