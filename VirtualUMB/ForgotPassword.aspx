<%@ Page Title="" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

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
    <div>
        <asp:ScriptManager ID="SM1" runat="server">
        </asp:ScriptManager>
        <table style="border: solid 2px #A9D0F5; padding: 20px; position: relative; top: 15px;"
            align="center">
            <tr>
                <td>
                    Email ID :
                </td>
                <td>
                    <asp:TextBox ID="txtEmailID" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEmailID" ErrorMessage="  **Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmailID" ErrorMessage="  **Invalid Email ID" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password :
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="  **Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password :
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtConfirmPassword" ErrorMessage="  **Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                        ErrorMessage="  **Both Passwords Should Match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Enter Below Code :
                </td>
                <td>
                    <asp:TextBox ID="txtCaptcha" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtCaptcha" ErrorMessage="  **Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblLabel" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td valign="middle">
                    <asp:UpdatePanel ID="UP1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="height: 50px; width:100px;">
                                        <asp:Image ID="imgCaptcha" runat="server" />
                                    </td>
                                    <td valign="middle">
                                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnRegiser" runat="server" Text="Update Password" OnClick="btnRegister_Click" />
                &nbsp;<br />
                    <br />
                    <asp:Label ID="lblMessage" runat="server" ForeColor="#0099FF" Font-Bold="True"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="#33CC33" Font-Italic="True"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>

