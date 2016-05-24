<%@ Page Title="Register a User" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style4
        {
            width: 496px;
            height: 31px;
        }
        .style32
        {
            width: 149px;
            height: 31px;
            margin-left: 0px;
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

<div class="loginTable1" style="width:600px 0 auto; left:300px;">
<br />
    <p class="center1"> <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hello 
        User..!! Welcome to Virtual UMB <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please create an account</b></p>
   <p> <img src="Images/users.png" alt="pic not found" 
           style="height: 101px; width: 149px" /> </p>
    <p> &nbsp;</p>

<table style="width: 900px;">
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>First Name:</b></td>
        <td class="style4">
            <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtName" ErrorMessage="  ** Required"  ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Last Name:</b></td>
        <td class="style4">
            <asp:TextBox ID="txtLast" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtLast" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Password:</b></td>
        <td class="style4">
            <asp:TextBox ID="txtPassword" TextMode="Password"  runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtPassword" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Confirm Password: </b></td>
        <td class="style4">
            <asp:TextBox ID="txtPassConfirm" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtPassConfirm" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtPassConfirm" 
                ErrorMessage="** Both Pass Should Match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Email ID: </b></td>
        <td class="style4">
            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="**Invalid Email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Confirm Email ID: </b></td>
        <td class="style4">
            <asp:TextBox ID="txtEmailConfirm" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtEmailConfirm" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtEmailConfirm" ErrorMessage="**Invalid Email" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ControlToCompare="txtEmail" ControlToValidate="txtEmailConfirm" 
                ErrorMessage="**Both Email ID should match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Gender: </b></td>
        <td class="style4">
            <asp:RadioButton ID="txtRadio1" runat="server" Text="Male" />
            <asp:RadioButton ID="txtRadio2" runat="server" Text="Female" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Degree: </b></td>
        <td class="style4">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select Your Degree</asp:ListItem>
                <asp:ListItem>Masters</asp:ListItem>
                <asp:ListItem>Under Grad</asp:ListItem>
                <asp:ListItem>PHD</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="DropDownList1" InitialValue="Select Your Degree"
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>Department:</b></td>
        <td class="style4">
            <asp:TextBox ID="txtDepartment" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtDepartment" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>College:</b></td>
        <td class="style4">
            <asp:TextBox ID="txtCollege" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtCollege" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"><b>About You:</b></td>
        <td class="style4">
            <asp:TextBox ID="txtDescription" runat="server" Height="100px" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ErrorMessage="  **Required" ControlToValidate="txtDescription" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="style34">
        <img src="Images/register.png" alt="Pic not found" 
            style="height: 83px; width: 180px" /></td>
    </tr>
    <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>                              
        <td class="style32"></td>
        <td class="style4">  
            <asp:Button ID="btnRegister" runat="server" BackColor="#0066FF" 
                BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" ForeColor="White" 
                Text="Register"  onclick="btnRegister_Click" />
            <br />
            <asp:Label ID="lblLabel" runat="server" ForeColor="#00CC00" Font-Bold="True"></asp:Label>
        
            <br />
            <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="#66CCFF"></asp:Label>
        
        </td>
    
    </tr>
</table>

</div>
   
</div>
</asp:Content>

