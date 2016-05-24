<%@ Page Title="" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="Privacy.aspx.cs" Inherits="Privacy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="box shadow-effect" style="font-size: small">

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
       <table id="table-image" class="style2">
           <tr>
               <td>
                   <asp:Image ID="Image1" runat="server" Height="110px" 
                       ImageUrl="~/privacypolicy.png" Width="100%" />
               </td>
           </tr>
       </table>
       <br />
       <table id="table-privacycontent" class="style2" 
           style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: normal; font-style: normal; font-variant: normal; color: #800000; background-color: #CEE7FF">
           <tr>
               <td>
                   <ul>
                       <li>We give you the power to share as part of our mission to make the world more 
                           open and connected. This policy describes what information we collect and how it 
                           is used and shared. You can find additional tools and information. </li>
                   </ul>
                   <p>
                       &nbsp;</p>
                   <ul>
                       <li>We may access, preserve and share your information in response to a legal 
                               request (like a search warrant, court order or subpoena) if we have a good faith 
                               belief that the law requires us to do so.<br /> </li>
                           <br />
                           <li>This may include responding to legal requests from jurisdictions outside of the 
                               United States where we have a good faith belief that the response is required by 
                               law in that jurisdiction, affects users in that jurisdiction, and is consistent 
                               with internationally recognized standards.<br /></li><br />
                       <li>
                           We may also access, preserve and share information when we have a good faith 
                               belief it is necessary to: detect, prevent and address fraud and other illegal 
                               activity; to protect ourselves, you and others, including as part of 
                               investigations; or to prevent death or imminent bodily harm. For example, we may 
                               provide information to third-party partners about the reliability of your 
                               account to prevent fraud and abuse on and off of our Services.
                               <br /></li> <br />
                       <li>
                           Information we receive about you, including financial transaction data related 
                               to purchases made with Facebook, may be accessed, processed and retained for an 
                               extended period of time when it is the subject of a legal request or obligation, 
                               governmental investigation, or investigations concerning possible violations of 
                               our terms or policies, or otherwise to prevent harm. We also may retain 
                               information from accounts disabled for violations of our terms for at least a 
                               year to prevent repeat abuse or other violations of our terms.
                               </li>
                   </ul>
               </td>
           </tr>
       </table>
</div>
</asp:Content>

