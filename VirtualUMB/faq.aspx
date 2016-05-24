<%@ Page Title="FAQ's" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/border.css" rel="stylesheet" type="text/css" />
    <link href="css/header.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/movement.css" rel="stylesheet" type="text/css" />
    <link href="css/niti/Site.css" rel="stylesheet" type="text/css" />
    <link href="css/niti/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript">
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".panel-heading").click(function () {
            $(this).find(".panel-body").slideToggle();
        });
    });
</script>
<script type="text/javascript">
    function setLinks(num) {
        var headingArray = new Array();
        headingArray[0] = 'Q.&nbsp;&nbsp;What is this website for?';
        headingArray[1] = 'Q.&nbsp;&nbsp;Who are the audience of this website?';
        headingArray[2] = 'Q.&nbsp;&nbsp;Is this website only for Umass students?';
        headingArray[3] = 'Q.&nbsp;&nbsp;Who this website belongs to?';
        headingArray[4] = 'Q.&nbsp;&nbsp;Who do I call if I face any problems on the website?';
        headingArray[5] = 'Q.&nbsp;&nbsp;Why do I need to login to upload my model?';
        headingArray[6] = 'Q.&nbsp;&nbsp;What information do I need to provide while registering?';
        headingArray[7] = 'Q.&nbsp;&nbsp;How can I edit my profile?';
        headingArray[8] = 'Q.&nbsp;&nbsp;What if I forgot my password?';
        headingArray[9] = 'Q.&nbsp;&nbsp;What are the requirements for a password?';
        headingArray[10] = 'Q.&nbsp;&nbsp;Where will my uploaded models be used?';
        headingArray[11] = 'Q.&nbsp;&nbsp;How many models can I upload?';
        headingArray[12] = 'Q.&nbsp;&nbsp;Can I upload any kind of model on this website?';
        headingArray[13] = 'Q.&nbsp;&nbsp;In what format can I upload my files?';
        headingArray[14] = 'Q.&nbsp;&nbsp;Are there any terms and conditions on the models I download?';
        var contentArray = new Array();
        contentArray[0] = 'A.&nbsp;&nbsp;This website is developed to let users upload and share the 3D models created by them.';
        contentArray[1] = 'A.&nbsp;&nbsp;Everyone who wants to share the 3D models created by them or use them for non-commercial purposes.';
        contentArray[2] = 'A.&nbsp;&nbsp;This website is available for everyone.';
        contentArray[3] = 'A.&nbsp;&nbsp;This website is administered by Prof. Craig Yu of Umass Boston.';
        contentArray[4] = 'A.&nbsp;&nbsp;Please feel free to visit our Contact Us page.';
        contentArray[5] = 'A.&nbsp;&nbsp;This helps you and us to manage the models uploaded by users.';
        contentArray[6] = 'A.&nbsp;&nbsp;The mandatory information is just an email address.';
        contentArray[7] = 'A.&nbsp;&nbsp;You can visit the Edit Profile page to change your profile.';
        contentArray[8] = 'A.&nbsp;&nbsp;We will help you recover your password by sending you a fresh one through email. Please use the Change Password link on Login page.';
        contentArray[9] = 'A.&nbsp;&nbsp;Your password needs to have atleast one digit and should be atleast 8 characters in length.';
        contentArray[10] = 'A.&nbsp;&nbsp;We will be using your models to create the 3D model of our college campus.';
        contentArray[11] = 'A.&nbsp;&nbsp;You can upload as many models as you want.';
        contentArray[12] = 'A.&nbsp;&nbsp;Yes.';
        contentArray[13] = 'A.&nbsp;&nbsp;You can upload files with .obj format.';
        contentArray[14] = 'A.&nbsp;&nbsp;All the models can be used for non-commercial purposes.';
        var headings = document.getElementById('container').getElementsByClassName('heading');
        var contents = document.getElementById('container').getElementsByClassName('data');
        for (var i = num, j = 0; i < (num + 5), j < 5; i++, j++) {
            var hl = headings[j];
            hl.innerHTML = headingArray[i];
            var cl = contents[j];
            cl.innerHTML = contentArray[i];
        }
    }
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

<div class="label1">
Looking for Answers?<br />
Answers to most of the questions can be found here.</div>
<br />
<ul class="menu1">
		    <li class="list1">
			    <a href="#1" onclick="setLinks(0)">
                    <img src="Images/general.jpeg" alt="image1" class="imglist" />
			        <strong>General</strong>
			    </a>
		    </li>
		    <li class="list1">
			    <a href="#1" onclick="setLinks(5)">

			        <img src="Images/account.png" alt="image1" class="imglist" />
			        <strong>Login/Register</strong>
			    </a>
		    </li>
		    <li class="list1">
			    <a href="#1" onclick="setLinks(10)">
			        <img src="Images/upload.jpg" alt="image1" class="imglist" />
			        <strong>Upload Model</strong>
			    </a>
		    </li>
	    </ul>
        <div class="panel-container" id="container">
		    <ul class="panel1">
		        <li class="panel-heading">
                    <span class="heading">
                        Q.&nbsp;&nbsp;What is this website for?
                    </span>
			        <ul class="panel-body">
				        <li class="data">
                            A.&nbsp;&nbsp;This website is developed to let users upload and share the 3D models created by them.
                        </li>
			        </ul>
		        </li>
		    </ul>
            <ul class="panel1">
		        <li class="panel-heading">
                    <span class="heading">
                        Q.&nbsp;&nbsp;Who are the audience of this website?
                    </span>
		    	    <ul class="panel-body">
				        <li class="data">
                            A.&nbsp;&nbsp;Everyone who wants to share the 3D models created by them or use them for non-commercial purposes.
                        </li>
			        </ul>
		        </li>
            </ul> 
            <ul class="panel1">
		        <li class="panel-heading">
                    <span class="heading">
                        Q.&nbsp;&nbsp;Is this website only for Umass students?
                    </span>
			        <ul class="panel-body">
				        <li class="data">
                            A.&nbsp;&nbsp;This website is available for everyone.
                        </li>
			        </ul>
		        </li>
		    </ul>
            <ul class="panel1">
		        <li class="panel-heading">
                    <span class="heading">
                        Q.&nbsp;&nbsp;Who this website belongs to?
                    </span>
			        <ul class="panel-body">
				        <li class="data">
                            A.&nbsp;&nbsp;This website is administered by Prof. Craig Yu of Umass Boston.
                        </li>
			        </ul>
		        </li>
		    </ul>
            <ul class="panel1">
		        <li class="panel-heading">
                    <span class="heading">
                        Q.&nbsp;&nbsp;Who do I call if I face any problems on the website?
                    </span>
			        <ul class="panel-body">
				        <li class="data">
                            A.&nbsp;&nbsp;Please feel free to visit our Contact Us page.
                        </li>
			        </ul>
		        </li>
		    </ul> 

    </div>


</div>
</asp:Content>

