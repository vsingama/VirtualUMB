<%@ Page Title="" Language="C#" MasterPageFile="~/UmassMaster.master" AutoEventWireup="true" CodeFile="CollegeMap.aspx.cs" Inherits="CollegeMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Unity Web Player | Test</title>
		<script type='text/javascript' src='https://ssl-webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/jquery.min.js'></script>
		<script type="text/javascript">
		<!--
		    var unityObjectUrl = "http://webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/UnityObject2.js";
		    if (document.location.protocol == 'https:')
		        unityObjectUrl = unityObjectUrl.replace("http://", "https://ssl-");
		    document.write('<script type="text\/javascript" src="' + unityObjectUrl + '"><\/script>');
		-->
		</script>
		<script type="text/javascript">
		<!--
		    var config = {
		        width: 750,
		        height: 400,
		        params: { enableDebugging: "0" }

		    };
		    var u = new UnityObject2(config);

		    jQuery(function () {

		        var $missingScreen = jQuery("#unityPlayer").find(".missing");
		        var $brokenScreen = jQuery("#unityPlayer").find(".broken");
		        $missingScreen.hide();
		        $brokenScreen.hide();

		        u.observeProgress(function (progress) {
		            switch (progress.pluginStatus) {
		                case "broken":
		                    $brokenScreen.find("a").click(function (e) {
		                        e.stopPropagation();
		                        e.preventDefault();
		                        u.installPlugin();
		                        return false;
		                    });
		                    $brokenScreen.show();
		                    break;
		                case "missing":
		                    $missingScreen.find("a").click(function (e) {
		                        e.stopPropagation();
		                        e.preventDefault();
		                        u.installPlugin();
		                        return false;
		                    });
		                    $missingScreen.show();
		                    break;
		                case "installed":
		                    $missingScreen.remove();
		                    break;
		                case "first":
		                    break;
		            }
		        });
		        u.initPlugin(jQuery("#unityPlayer")[0], "./CollegeMap/Map.unity3d");
		    });
		-->
		</script>
		<style type="text/css">
		
		body {
			font-family: Helvetica, Verdana, Arial, sans-serif;
			background-color: white;
			color: black;
			text-align: center;
		}
		a:link, a:visited {
			color: #000;
		}
		a:active, a:hover {
			color: #666;
		}
		p.header {
			font-size: small;
			text-align: center;
		}
		p.header span {
			font-weight: bold;
		}
		p.footer {
			font-size: x-small;
		}
		div.content {
			margin: auto;
			width: 700px;
		}
		div.broken,
		div.missing {
			margin: auto;
			position: relative;
			top: 50%;
			width: 193px;
		}
		div.broken a,
		div.missing a {
			height: 63px;
			position: relative;
			top: -31px;
		}
		div.broken img,
		div.missing img {
			border-width: 0px;
		}
		div.broken {
			display: none;
		}
		div#unityPlayer {
			cursor: default;
			height: 700px;
			width: 400px;
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

<marquee onmouseover="stop();" onmouseout="start();" scrollAmount="30" scrollDelay="350" direction="side" width="100%"  style="margin-top: 0px; background-color:#6699FF; color:white">
		Information :-  After playing press 'esc' key to come out of unity player, otherwise cursor focus will be on unity plugin </marquee>

    <p class="header"><span>Unity Web Player | </span>Test</p>
		<div class="content">
			<div id="unityPlayer">
				<div class="missing">
					<a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now!">
						<img alt="Unity Web Player. Install now!" src="http://webplayer.unity3d.com/installation/getunity.png" width="193" height="63" />
					</a>
				</div>
				<div class="broken">
					<a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now! Restart your browser after install.">
						<img alt="Unity Web Player. Install now! Restart your browser after install." src="http://webplayer.unity3d.com/installation/getunityrestart.png" width="193" height="63" />
					</a>
				</div>
			</div>
		</div>
		<p class="footer">&laquo; created with <a href="http://unity3d.com/unity/" title="Go to unity3d.com">Unity</a> &raquo;</p>
	</div>

</asp:Content>

