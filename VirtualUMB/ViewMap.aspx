<%@ Page Title="" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="ViewMap.aspx.cs" Inherits="ViewMap" %>

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
<div style="margin:0 auto; border:thin groove Black;">
    
    <table>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Width="100%" Height="400px" 
                ImageUrl="Images/umass-boston1.jpg" AlternateText="umass-boston2.jpg"/>
            </td>
         </tr>
         <tr>
            <td>
                <h2>University of Massachusetts Boston</h2>
                <h3>History :</h3>
                <p style="caption-side:bottom; margin-left:50px; display:block;">The University of Massachusetts Boston, also known as UMass Boston, is an urban public research university and the third-largest campus in the five-campus University of Massachusetts system. 
The university is located on 177 acres (0.72 km2) on what used to be known as the Columbia Point peninsula in the City of Boston,Massachusetts, United States, but became known as Harbor Point in the 1980s after development. UMass Boston is the only public university in Boston.Students are primarily from Massachusetts but some are from other parts of the United States or foreign countries.
</p>
            </td>
         </tr>
     </table>

    </div>
    
    </div>


</asp:Content>

