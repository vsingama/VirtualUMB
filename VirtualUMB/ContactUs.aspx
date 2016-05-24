<%@ Page Title="Contact US" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
      <style type="text/css">
        .style2
        {
            width: 15px;
        }
        .style4
        {
            width: 15px;
            height: 35px;
        }
        .style9
        {
            height: 35px;
        }
        .style10
        {
            width: 4px;
            height: 35px;
        }
        .style11
        {
            width: 4px;
        }
        .style12
        {
            width: 15px;
            height: 36px;
        }
        .style13
        {
            width: 4px;
            height: 36px;
        }
        .style14
        {
            height: 36px;
        }
        .style15
        {
            height: 37px;
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

    <div style = "font-family:Arial" align="center">
    <fieldset style="width:400px">
    <legend style = "color:Blue"><b>
        <asp:Image ID="Image1" runat="server" Height="70px" 
            ImageUrl="~/Images/email.jpg" style="margin-left: 0px" Width="114px" 
            BorderColor="#3399FF" />
        </b></legend>

    <table>
    <tr>
    <td class="style4">
    <b style="font-size: medium">Name:</b>

    </td>
    <td class="style10">
    <asp:TextBox ID="txtName" width = "250px" runat="server"></asp:TextBox>

    </td>
        
    <td class="style9">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="Your Name is a Mandatory" ControlToValidate = "txtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>

    <tr>
    <td class="style4">
    <b style="font-size: medium">Email:</b>

    </td>
    <td class="style10">
    <asp:TextBox ID="txtEmail" width = "250px" runat="server"></asp:TextBox>

    </td>
        
    <td class="style9">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="Your Mail ID is a Mandatory" ControlToValidate = "txtEmail" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtEmail" 
            ErrorMessage="Dont act smart,Enter valid email id." ForeColor="Red" 
            Display="Dynamic" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </td>
    </tr>



    <tr>
    <td class="style12">
    <b style="font-size: medium">Subject:</b>

    </td>
    <td class="style13">
    <asp:TextBox ID="txtSubject" width = "250px" runat="server"></asp:TextBox>

    </td>
        
    <td class="style14">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ErrorMessage="Subject is a Mandatory" ControlToValidate = "txtSubject" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>



    <tr>
    <td style="vertical-align:top" class="style2">
    <b style="font-size: medium">Comments:</b>

    </td>
    <td style="vertical-align:top" class="style11">
    <asp:TextBox ID="txtComment" width = "250px" runat="server" Rows="5" 
            TextMode="MultiLine"></asp:TextBox>

    </td>
        
    <td style="vertical-align:top">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
    ErrorMessage="Comments are Mandatory" ControlToValidate = "txtComment" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>

    <tr>
    <td colspan="3" class="style15">
    
    <asp:ValidationSummary   HeaderText= "You have the following errors" 
            ForeColor="Red" ID="ValidationSummary1" runat="server" 
            style="font-style: italic" Width="375px" />
    </td>
    </tr>
        
        <tr>
        <td colspan="3" class="style14">
            <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" ForeColor = "Green"></asp:Label>


        
            
        </td>
        </tr>


        <tr>
        <td colspan="3">
            
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                BackColor="#33CCFF" BorderColor="Black" BorderStyle="Solid" 
                ForeColor="Black" Height="58px" Width="76px" />

        
        
        </td>
        </tr>

    </table>
    </fieldset>
    </div>

    <div style = "font-family:Arial">
    &nbsp;</div>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>

</div>


</asp:Content>

