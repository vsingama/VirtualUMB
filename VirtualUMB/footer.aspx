<%@ Page Language="C#" AutoEventWireup="true" CodeFile="footer.aspx.cs" Inherits="footer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Footer</title>
    <link href="css/Footer/footer.css" rel="stylesheet" type="text/css" />
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 262px;
            color: #FFFFFF;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1400px; margin: 0 auto;" class="container1">
    <div id="footer-wrap">
	<footer>
		<div class="about">
			<table>
            <tr>
            <td>
            <img src="Images/logo.jpg" style="height: 100px; width: 100px;" />
            </td>


            <td>
                  <div class="links">
            <div class="center" style="font-size: 20px;">
			<ul>
				<li>100 Morrissey Blvd.</li>
				<li>Boston, MA 02125-3393</li>
                <li>                     </li>
                <li style="font-size:15px">© Copyright 2014 UMass Boston</li>
			</ul>
		</div>
        </div>
        </td>

            <td class="style1">
            <div class="center" style="font-size: 20px;">
			<ul>
				<li><a href="ContactUs.aspx">Contact US</a></li>
				<li><a href="AboutPage.aspx">About Us</a></li>
				<li><a href="footer.aspx">Privacy policy</a></li>
                <li><a href="ContactUs.aspx">index</a></li>
				<li><a href="faq.aspx">FAQ's</a></li>
			</ul>
		</div>
      
       
            </td>
            <td>
            <div class="container">
<img src="Images/SocialNetwork/socialnetwork.png" alt="Social Network" width="200" height="150" align="center" />
<div class="textbox">
<p  class="text" style="background-color:#91B5FF;">

<img class="changeHoverEffect" src="Images/SocialNetwork/facebook.png" alt="facebook" width="50" height="50" style="margin:auto;"/>
<img class="changeHoverEffect" src="Images/SocialNetwork/twitter.png" alt="twitter" width="50" height="50" style="margin:auto;"/>
<img class="changeHoverEffect" src="Images/SocialNetwork/google.png" alt="google" width="50" height="50" style="margin:auto;"/>
</p>

</div>
</div>
</td>
</tr>
 </table>
		</div>
    
		
	</footer>
</div>
</div>
    </form>
</body>
</html>
