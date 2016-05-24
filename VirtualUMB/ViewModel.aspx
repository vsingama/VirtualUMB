<%@ Page Title="View Model Description" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="ViewModel.aspx.cs" Inherits="ViewModel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <link href="css/niti/Site.css" rel="stylesheet" type="text/css" />
    <link href="css/niti/StyleSheet.css" rel="stylesheet" type="text/css" />
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
<div class="name">
<asp:Label ID="lblModel" runat="server" Visible="False" />
<br />
University of Massachusetts Boston
</div>
<canvas id="cv" height=400 style="margin-left: 14%;margin-top:3%;position:relative;" 
Width=800 BorderColor="#0099CC" BorderStyle="Solid">
It seems you are using an outdated browser that does not support canvas :-(
</canvas>
        <script type="text/javascript" src="jsc3d.js"></script>
        <script type="text/javascript" src="jsc3d.touch.js"></script>
        <script type="text/javascript">

            function setNewUrl(filename) {
                var viewer = new JSC3D.Viewer(document.getElementById('cv'));
                viewer.setParameter('SceneUrl', filename);
                viewer.setParameter('ModelColor', '#CAA618');
                viewer.setParameter('BackgroundColor1', '#E5D7BA');
                viewer.setParameter('BackgroundColor2', '#383840');
                viewer.setParameter('RenderMode', 'flat');
                viewer.init();
                viewer.update();
            }
        </script>
        
        <br /><br />
        <div style="float:left;margin-left:15%;">
        <asp:Label id="modelname" runat="server" class="modelname" > Furniture Model 1 </asp:Label><br />
        <asp:Label id="modeldesc" runat="server" class="modelname" > Furniture Model 1 </asp:Label>
        </div>
        <div style="float:right;margin-right:15%;">
        <asp:Label runat="server" id="modellike" class="modellike" ></asp:Label><br />
        <asp:LinkButton id="link1" runat="server" class="modellike" OnClick="Like_Model"><asp:Label runat="server" id="like" style="color:#0099CC;font-weight:bold;">Like Model</asp:Label></asp:LinkButton>
         </div>
        <br /><br /><br />
        <div class="owner">
            <p style="margin-left:10%;color:#ffffff;">
                <br />Designed By:
            </p>
            
            <asp:Image ID="userimage" runat="server" class="ownerphoto" Width="18%" Height="50%" />
            <div class="ownerdetail">
                <asp:Label runat="server" id="Label1" style="color:#FFFFFF;font-weight:bold;">Name: </asp:Label><asp:Label runat="server" id="ownername" style="color:#FFFFFF;">Niti Agrawal</asp:Label><br /><br />
                <asp:Label runat="server" id="Label2" style="color:#FFFFFF;font-weight:bold;">Major: </asp:Label><asp:Label ID="ownertitle" runat="server" style="color:#FFFFFF;">Graduate Student</asp:Label><br /><br />
                <asp:Label runat="server" id="Label3" style="color:#FFFFFF;font-weight:bold;">Department: </asp:Label><asp:Label ID="ownerdept" runat="server" style="color:#FFFFFF;">Computer Science Department</asp:Label><br /><br />
                <asp:Label runat="server" id="Label4" style="color:#FFFFFF;font-weight:bold;">College: </asp:Label><asp:Label ID="ownercollege" runat="server" style="color:#FFFFFF;">UMASS Boston</asp:Label><br /><br />
                <asp:Label runat="server" id="Label5" style="color:#FFFFFF;font-weight:bold;">Email: </asp:Label><asp:Label ID="owneremail" runat="server" style="color:#FFFFFF;">UMASS Boston</asp:Label><br /><br />
                <asp:Label ID="ownerdesc" runat="server" style="color:#FFFFFF;">UMASS Boston</asp:Label>
            </div>
            <br />
        </div>


</div>

</asp:Content>

