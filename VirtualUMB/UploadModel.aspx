<%@ Page Title="" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="UploadModel.aspx.cs" Inherits="UploadModel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <title>Upload 3D Model</title>
    <style type="text/css">
        .style1
        {
            width: 50%;
            height: 275px;
           margin-left:40%;
            margin-top:-26%;
        }
        .style5
        {
            width: 232px;
            height: 50px;
        }
        .style7
        {
            width: 232px;
            height: 67px;
        }
        .style8
        {
            height: 67px;
        }
        .style10
        {
            width: 232px;
            height: 95px;
        }
        .style11
        {
            height: 95px;
        }
        .style12
        {
            width: 232px;
            height: 52px;
        }
        .style13
        {
            height: 52px;
        }
        .style14
        {
            height: 50px;
        }
        .style15
        {
            width: 280px;
            height: 270px;
            margin-left: 5px;
            margin-top:5%;
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
<div style="height: 523px; width: 993px">
    
        <img alt="image" class="style15" src="Images/Upload%20main.png" /><table class="style1" align="center" bgcolor="White">
            <tr>
                <td class="style5">
                    <b>Upload 3D Model :</b><br /><br />
                    
                    <b>Upload 2D Image :</b></td>
                <td class="style14">
                    <asp:FileUpload ID="FileUpload2" runat="server"  Height="25px" Width="218px" 
                        BackColor="White" BorderStyle="None" ForeColor="Black" /> <br />

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3DModel" runat="server" 
                    ErrorMessage="3D Model Format Error" ValidationExpression="^.+\.((obj)|(OBJ))$" 
                    ControlToValidate="FileUpload2" ForeColor="Red"></asp:RegularExpressionValidator>
                    
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="218px" 
                        BackColor="White" BorderStyle="None" ForeColor="Black" />

                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="Image Format Error." 
                        ForeColor="Red" 
                       ValidationExpression="^.+\.((jpg)|(JPG)|(gif)|(GIF)|(jpeg)|(JPEG)|(png)|(PNG)|(bmp)|(BMP))$" 
                        EnableTheming="True"></asp:RegularExpressionValidator>


                </td>
            </tr>
            <tr>
                <td class="style12">
                <b>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b> <br /><br />
                    <b>Category :</b>
                    
                    </td>
                <td class="style13">
                <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="227px"></asp:TextBox><br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="230px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Buildings</asp:ListItem>
                        <asp:ListItem>Transport</asp:ListItem>
                        <asp:ListItem>Accessories </asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
            </tr>
            <tr>
                <td class="style10">
                   <b> Description :</b></td>
                <td class="style11">
                    <asp:TextBox ID="TextBox1" runat="server" Rows="5" TextMode="MultiLine" 
                        Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <em>
                    <asp:Label ID="Label1" runat="server" style="color: " ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                        ForeColor="#00CC00"></asp:Label>
                    </em>
                </td>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" BorderStyle="Solid" 
                        ForeColor="Black" Height="58px" onclick="Button1_Click" Text="Upload" 
                        Width="83px" />
                    <b><em>
                    
                    </em></b>

                    <br />
                    <b><em>
                    
                    </em></b>
                </td>
            </tr>
        </table>
    
        </div>
        </div>
</asp:Content>

