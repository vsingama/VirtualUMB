<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <link href="css/Divya/Editpage.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style9
        {
            text-align: left;
            width: 346px;
        }
        .style10
        {
            text-align: left;
            width: 346px;
            height: 26px;
        }
        .style11
        {
            text-align: left;
            height: 23px;
            width: 346px;
        }
        .style12
        {
            width: 98%;
            height: 485px;
        }
        .style13
        {
            text-align: left;
            width: 321px;
            height: 21px;
        }
        .style15
        {
        width: 319px;
    }
        .style16
        {
            text-align: center;
            width: 412px;
            height: 369px;
        }
        .style17
        {
            text-align: left;
            width: 346px;
            height: 21px;
        }
        .style18
        {
            text-align: center;
            width: 370px;
            height: 369px;
        }
    .style19
    {
        text-align: left;
        width: 319px;
        height: 21px;
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

 <div class="TitleEditProfile">
    <p style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: #FFFFFF">Edit Profile </p>
    </div>
    <div class="divEditProfile" align="center">
        <table class="table-EditForm" align="center" 
            style="top: 1%; left:50%;height: 516px; margin-left: 0px;" border="0">
            
                <tr>
                    <td align="left" bgcolor="#C4ECFF" class="style18" valign="top" colspan="0">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;<table align="center" class="table-EditprofileData">
                            <tr>
                                <td class="style9" style="color: #000000; font-weight: bold">
                                    Umass Id</td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:TextBox ID="TextBoxUmassId" runat="server" Width="292px" Enabled="False" 
                                        MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9" style="color: #000000; font-weight: bold;">
                                    First&nbsp; Name
                                    <asp:RequiredFieldValidator ID="ValidatorUserName" runat="server" 
                                        ControlToValidate="TextBoxUsername" 
                                        ErrorMessage=" *First Name field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="292px" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style10" style="font-weight: bold; color: #000000">
                                    Last Name<asp:RequiredFieldValidator ID="ValidatorLastName0" runat="server" 
                                        ControlToValidate="TextBoxLastName" 
                                        ErrorMessage=" *Last Name field cannot be Empty" ForeColor="Red" 
                                        Display="static" ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    <asp:TextBox ID="TextBoxLastName" runat="server" Width="292px" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11" style="color: #000000; font-weight: bold">
                                    Email&nbsp;<br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Height="17px" 
                                        ontextchanged="TextBoxEmail_TextChanged" Width="292px" Visible="true" 
                                        Enabled="False" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9" style="color: #000000; font-weight: bold">
                                    Gender
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:TextBox ID="TextBoxGender" runat="server" Width="292px" MaxLength="50" 
                                        Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style17" style="color: #000000; font-weight: bold">
                                    College<br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:TextBox ID="TextBoxCollege" runat="server" Width="292px" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style13" width="100%" 
                                    style="color: #000000; font-weight: bold">
                                    Department</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:TextBox ID="TextBoxDepatment" runat="server" Width="292px" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="ButtonCancel" runat="server" onclick="ButtonCancel_Click" 
                            Text="Cancel" Width="99px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td bgcolor="#C4ECFF" class="style16" valign="top">
                        <table class="style12">
                            <tr>
                                <td class="style15">
                                    <asp:Image ID="ImageEditProfile" runat="server" Height="181px" 
                                        BorderStyle="Double" ImageAlign="Middle" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style15" align="center" valign="middle">
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="204px" 
                                        onclick="FileUpload1_Click"  />
                                </td>
                            </tr>
                            <tr>
                                <td class="style15" align="center" valign="middle" style="color: #3333CC">
                                    <asp:Button ID="ButtonPreview" runat="server" onclick="ButtonPreview_Click" 
                                        Text="Preview" Width="119px" />
                                    <asp:Label ID="LabelPreview" runat="server" ForeColor="Red" 
                                        Text="Please selected to preview" Visible="False"></asp:Label>
&nbsp;<br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&quot;&nbsp;Image file should not exceed 4MB to upload&quot;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style19" style="color: #000000; font-weight: bold">
                                    Major
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style19">
                                    <asp:TextBox ID="TextBoxMajor" runat="server" Width="292px" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style19" style="color: #000000; font-weight: bold">
                                    Description</td>
                            </tr>
                            <tr>
                                <td align="left" class="style15">
                                    <asp:TextBox ID="TextBoxDescription" runat="server" Height="47px" Width="292px" 
                                        MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style15">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="ButtonSave" runat="server" onclick="ButtonSave_Click" 
                            style="text-align: center; margin-top: 13px" Text="Save" Width="99px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>

        </div>

</div>
</asp:Content>

