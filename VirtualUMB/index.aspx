<%@ Page Title="Welcome to Virtual UMB" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <script src="JavaScript/timer.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<body onload= "startTime();">
    <div class="box shadow-effect">

 <div id="border1">
   	<marquee onmouseover="stop();" onmouseout="start();" scrollAmount="30" scrollDelay="350" direction="side" width="100%"  style="margin-top: 0px">
   <a href="BrowseDesigns.aspx" class="new1">	Please Contribute 3D models to UMB Virutal Website &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Bulding (Campus center) is added - Click here to check
   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Designed by Craig Yu </a> </marquee>
 	</div>

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

<table class="center">
<tr>
 <td style="width:70%;">
 <canvas id="cv"  width="720" height="400">
It seems you are using an outdated browser that does not support canvas :-(
</canvas>
        <script type="text/javascript" src="jsc3d.js"></script>
        <script type="text/javascript" src="jsc3d.touch.js"></script>
        <script type="text/javascript">

            
                var viewer = new JSC3D.Viewer(document.getElementById('cv'));
                viewer.setParameter('SceneUrl', 'palm_tree.obj');
                viewer.setParameter('ModelColor', '#CAA618');
                viewer.setParameter('BackgroundColor1', '#E5D7BA');
                viewer.setParameter('BackgroundColor2', '#383840');
                viewer.setParameter('RenderMode', 'flat');
                viewer.init();
                viewer.update();
            
        </script>
  <!--<a href="index.aspx" class="new"> <img id="img1" src="Images/img1.jpg" alt="pic not found" width="85%" height="375"/></a> -->
   </td>
   </tr>
   </table>

   <br />
   <br />
<hr />
<br /><br />
<p> <b> Insights of Wesbite </b> </p> <br />
<div class="center">
<video width="720" height="400" controls>
  <source src="Video/objects.mp4" type="video/mp4">
  <source src="Video/objects.ogg" type="video/ogg">
Your browser does not support the video tag.
</video>
</div>
</div>
</body>
</asp:Content>

