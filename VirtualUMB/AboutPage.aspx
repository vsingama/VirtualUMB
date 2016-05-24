<%@ Page Title="About US" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="AboutPage.aspx.cs" Inherits="AboutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <link href="css/Divya/Aboutuspage.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var image1 = new Image()
        image1.src = "Images/TeamMember-1.png"
        var image2 = new Image()
        image2.src = "Images/TeamMember-2.png"
        var image3 = new Image()
        image3.src = "Images/TeamMember-3.png"
        var image4 = new Image()
        image4.src = "Images/TeamMember-4.png"
        var image5 = new Image()
        image5.src = "Images/TeamMember-5.png"
    </script>
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
    <p style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: #FFFFFF">About Us</p>
    </div>
    <table style="width:100%; height:10%; right: auto; left: auto; clip: rect(auto, auto, auto, auto); vertical-align: middle;" align="center" 
            class="TopContent">
    <tr>
     <td class="tdrole-content" width="2%"  height="10%" align="left">
     <table>
     <tr>
     <td>
     K
     </td>
     </tr>
      <tr>
     <td>
     E
     </td>
     </tr>
      <tr>
     <td>
     Y
     </td>
     </tr>
      <tr>
     <td>
     
     </td>
     </tr>
      <tr>
     <td>
     P
     </td>
     </tr>
      <tr>
     <td>
     E
     </td>
     </tr>
      <tr>
     <td>
     R
     </td>
     </tr>
      <tr>
     <td>
     S
     </td>
     </tr>
      <tr>
     <td>
     O
     </td>
     </tr>
      <tr>
     <td>
     N
     </td>
     </tr>

     </table>
 </td>
    <td class="tdcenter-content" width="80%"  height="10%" align="center">
 <table class="tablecenter-content" border="0" width="80%"  height="30%" align="center" style="left: auto; right: auto">
 <tr>
 <td class="tdcenter-content" width="40%"  height="10%" align="justify">
 <p>
 I am an assistant professor at the Department of Computer Science at the University of Massachusetts Boston. I received my Ph.D. degree in Computer Science in 2013 from UCLA, where I was advised by Demetri Terzopoulos. I was a postdoctoral scholar affiliated with the SUTD-MIT International Design Center, working with Sai-Kit Yeung, and a visiting scholar at the Computer Graphics Lab at Stanford University. I also interned at the Internet Graphics Group at Microsoft Research Asia, where I was advised by Steve Lin.

My research interest is in computer graphics and vision, particularly on functionality modeling and reasoning. Currently, I am working on the topics of 3D content creation and visual computing.


 </p>

 </td>
 <td style="width:20%;" class="tdcenter-image" width="20%" align="center">
 <img id="img1" src="Images/craigyu.png" alt="pic not found" width="250" height="250"/>

 </td>
 </tr>
 
 
 </table>
 </td>
 </tr>
  
  </table>

   <br />
   <br />




<table style="width:70%; height:10%; vertical-align: middle; margin-right: auto; margin-left: auto;" 
            align="center" class="TopContent">
    <tr>
     <td class="tdrole-content" width="2%"  height="10%" align="left">
     <table>
     <tr>
     <td>
     O
     </td>
     </tr>
      <tr>
     <td>
     U
     </td>
     </tr>
      <tr>
     <td>
     R
     </td>
     </tr>
      <tr>
     <td>
     
     </td>
     </tr>
      <tr>
     <td>
     T
     </td>
     </tr>
      <tr>
     <td>
     E
     </td>
     </tr>
      <tr>
     <td>
     A
     </td>
     </tr>
      <tr>
     <td>
     M
     </td>
     </tr>
     
     </table>
 </td>
    <td class="tdcenter-content" width="90%"  height="10%" align="center">
    <div class="caraousel">
 <img src="Images/craigyu.png" name="slide" height="279" alt="placeholder" 
            style="width: 1000px" />  
<script type="text/javascript">

    var step = 1
    function slideit() {
        document.images.slide.src = eval("image" + step + ".src")
        if (step < 5)
            step++
        else
            step = 1
        setTimeout("slideit()", 2500)
    }
    slideit()

</script>
   </div>
  </td>
 </tr>
  
  </table>

</div>
</asp:Content>

