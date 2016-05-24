<%@ Page Title="" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <link href="css/Divya/Editpage.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style10
        {
            width: 565px;
        }
        .style11
        {
            width: 99%;
            height: 270px;
        }
        .menutext:hover 
{
    color: #FFFFFF;
	background-color: blue;
	border-radius:15px;
	margin-left:auto;
	margin-right:auto;
	padding:4px;
	


} 
.menutext 
{
      font-family: Gabriola;
            font-size: x-large;
            font-variant: normal;
            font-style: normal;
            font-weight: 600;
            color:#CC3300;
            padding:2px;
 }
 .active
{
            font-family: Gabriola;
            font-size: x-large;
            font-variant: normal;
            font-style: normal;
            font-weight: 600;
            color:#CC3300;
	border: thin solid #CC3300;
	border-radius:15px;
	margin-left:auto;
	margin-right:auto;
	padding:4px;
 }

.changeHoverEffect:hover {
border-radius:50%; box-shadow: 0 10px 6px -6px grey;
}
 .changeHovereffect {
-webkit-transition: all 0.7s ease; transition: all 0.7s ease;
}

        .style12
        {
            height: 21px;
        }
        .curve
{
border-radius:7px;
border-style:solid;
border-width:1px;
margin-top:3%;
margin-bottom:3%;
margin-left:5%;
margin-right:5%;
text-align:center;
border-color:#DBDBCA;
background-color:#ABCC6A;
box-shadow: 0 10px 6px -6px #777;

} 
        .style13
        {
            height: 22px;
        }
        .style14
        {
            text-align: justify;
        }
        .style15
        {
            height: 1px;
        }
        .style16
        {
            width: 99%;
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
    <br />
    <br />
</nav>

    <table class="Main_Table" width="70%">
        <tr>
            <td class="style10">
                <table class="style11" id="table-desc">
                    <tr>
                        <td class="Table_Content-td1" 
                            
                            style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #0000FF; text-decoration: underline; font-weight: bold;">
                            Edit Profile</td>
                    </tr>
                    <tr>
                        <td class="Table_Content-td2">
                        <div class="curve">
<p style="background-color: #DBDBCA; color: #808080;" class="style14">In this Edit 
    Profile page, user can&nbsp; edit his details like First Name, Last Name,&nbsp; Major, 
    Department, Description. Also you can upload his 
    profile image.&nbsp;&nbsp;   </p>
                            <p style="background-color: #DBDBCA; color: #808080;" class="style14">Need to add 
                                more .......</p>
                            <p style="background-color: #DBDBCA; color: #808080;" class="style14">&nbsp;</p>
                            <p style="background-color: #DBDBCA; color: #808080;" class="style14">&nbsp;</p>
</div>

                            </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            </td>
                    </tr>
                    <tr>
                        <td class="style13" 
                            style="font-family: 'Times New Roman', Times, serif; color: #0000FF; font-size: large; font-weight: bold; text-decoration: underline;">
                            My 3D Design</td>
                    </tr>
                    <tr>
                        <td class="Table_Content-td2">
                        <div class="curve">
<p style="background-color: #DBDBCA; color: #808080;" class="style14">You can View 
    and edit his&nbsp; 3D designs details and also you can delete his uploade 
    design. Need&nbsp;&nbsp; to add more details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   </p>
                            <p style="background-color: #DBDBCA; color: #808080;" class="style14">&nbsp;&nbsp; &nbsp;</p>
</div>

                            </td>
                    </tr>
                    <tr>
                        <td class="Table_Content-td6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="Table_Content-td7" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF; text-decoration: underline">
                            Upload 3D Deisgn</td>
                    </tr>
                    <tr>
                        <td class="Table_Content-td2">
                        <div class="curve">
<p style="background-color: #DBDBCA; color: #808080;">You can upload his design 
    through Upload page.&nbsp; Need to add more details</p>
</div>

                            </td>
                    </tr>
                </table>
            </td>
            <td bgcolor="#C4ECFF" width="30%" valign="top">
                <table class="style11" id="Menu-myaccount">
                    <tr>
                        <td class="Table-Menu1" align="center" 
                            style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: #C0C0C0; background-color: #000080">
                            My Account</td>
                    </tr>
                    <tr>
                        <td class="Table-Menu1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="Table-Menu2 menutext">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <a class="menutext" id="home" runat="server" 
                                style="text-decoration:none; font-family: 'Times New Roman', Times, serif; font-size: medium;" 
                                href="EditProfile.aspx"> 
                            <asp:Image ID="ImageEditProfile" runat="server" Height="37px" Width="37px" 
                                ImageUrl="~/MyAccount_Images/EditProfile.png" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edit Profile
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            </td>
                    </tr>
                    <tr>
                        <td class="Table-Menu4 menutext">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="menutext" id="A1" runat="server" 
                                style="text-decoration:none; font-family: 'Times New Roman', Times, serif; font-size: medium;" 
                                href="ViewMyDesign.aspx"> 

                            <asp:Image ID="ImageMyDesign" runat="server" Height="36px" Width="36px" 
                                ImageUrl="~/MyAccount_Images/MyDesign.png" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            My 3D - Design
                            </a>
                        </td>
                    </tr>
                    <tr>
                      <td>
                            </td>
                    </tr>
                    <tr>
                        <td class="Table-Menu5 menutext" style="height: 60px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="menutext" id="A2" runat="server" 
                                style="text-decoration:none; font-family: 'Times New Roman', Times, serif; font-size: medium;" 
                                href="UploadModel.aspx"> 

                            <asp:Image ID="ImageUpload" runat="server" Height="34px" Width="40px" 
                                ImageUrl="~/MyAccount_Images/Upload.png" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Upload  3D - Design
                            </a>
                        </td>
                    </tr>
                    </table>
                &nbsp;<table id="table-admin" cellpadding="5" cellspacing="3" class="style16" 
                    style="vertical-align: bottom">
                    <tr>
                        <td align="center">
                <asp:Label ID="LabelAdmin" runat="server" BackColor="#0000CC" BorderColor="#99CCFF" 
                    ForeColor="#FF9900" Text="Admin -  Access" Font-Bold="True" 
                                Font-Names="Times New Roman" Font-Size="Large" Height="39px" Width="100%" 
                                Visible="True"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center"> <br /> 
                            <asp:HyperLink ID="HyperLinkViewUser" runat="server" Font-Size="Large" 
                                NavigateUrl="~/ViewUsers.aspx" Font-Bold="True" ForeColor="#00CC00">View Registered Users</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style12">
                            <asp:HyperLink ID="HyperLinkModelView" runat="server" 
                                NavigateUrl="~/modelview.aspx" Font-Bold="True" ForeColor="#00CC00">View Model View</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>

</div>

</asp:Content>

