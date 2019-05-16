<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserImageClient" %>

<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<!-- #################################### Dependencies START #################################### -->
	<!-- Style CSS -->
	<link href="css/style.css" rel="stylesheet">
	<link href="css/createWiki.css" rel="stylesheet">
	<link href="css/uploadFile.css" rel="stylesheet">
	<script src="script/dropdown.js"></script>
	<!-- favicon -->
	<link href="img/favicon.png" rel=icon>
	<!-- createWiki CSS -->
	<link rel="stylesheet" type="text/css" href="css/createWiki/createWikiCSS.css">
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/bootstrap.min2.css">
	<script src="script/jquery.min.js"></script>
	<!-- VueJS -->
	<script src="script/vueJS/vue.js"></script>
	<!-- VueJS Source of The Page-->
	<script src="script/createWiki/createWikiVueJS.js"></script>
	<!-- Navbar -->
	<link rel="stylesheet" type="text/css" href="css/dropdown.css">
	<!-- #################################### Dependencies END #################################### -->

	<meta charset="UTF-8"/>
    <title>Edit / Create Wiki Page</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>User Profile</title>

    <!-- favicon -->
    <link href="img/favicon.png" rel=icon>

    <!-- web-fonts -->
    <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">

    <!-- font-awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrapmin340.css">
    <script src="script/jquerymin331.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/script/bootstrap.min.js"></script>

    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/dropdown.css" rel="stylesheet">
    <script src="script/dropdown.js"></script>
    <script src="script/createWikiJS.js"></script>
    <style>
        .smallnames {
            padding-top: 15px;
            text-align: start;
        }

        .smallimg {
            border-radius: 100px;
            width: 50px;
            height: 50px;
            margin: 10px;
            float: left;

        }

        #fotolar {
            position: relative;
            width: 200px;
            height: 200px;
        }

        #jpg1 {

            display: inline-block;
            position: relative;
            height: 200px;
            width: 200px;
            background-color: red;
        }

        .nav > li > a:hover {
            background-color: #c1d9ff;
        }

        .nav-pills > li.active > a {
            background-color: #c1d9ff;
        }

        .nav-pills > li.active > a:hover {
            background-color: #c1d9ff;
        }

        .nav > li > a {
            width: 188px;
            padding: 10px 0px;
            margin-right: 0px;
        }

        a:hover {
            color: #0645ad;
        }

        a {
            color: #0645ad;
        }

        a:visited {
            color: #0b0080;
        }

        .SignButton {
            height: 40px;
            width: 160px;
            border-radius: 5px;
            background-color: #6f7277;
            justify-content: right;
            margin-top: 10px;
            margin-bottom: 10px;
            margin-right: 10px;
            color: white;
        }

        .nav > li > button:hover {

            background-color: #a8adb5;
        }

        .shadow {
            -webkit-box-shadow: 0 8px 6px -6px black;
            -moz-box-shadow: 0 8px 6px -6px black;
            box-shadow: 0 8px 6px -6px black;
        }

        .imglogo {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .abs-center-x {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>
<style>
</style>
<body>
<!-- #################################### NAVBAR START #################################### -->
<%@ include file="static/navbar.jsp"%>
<!-- #################################### NAVBAR END #################################### -->

<div id="diÅ-div">
<div  id="wrapper-div">
	<!-- #################################### Create Wiki Text Box START #################################### -->
	<div id="textBox">
		<!--  {{name}}-->
		<div id="button-div">
			<button type="button" onclick="getAnaBaslikBtn();" class="nologin1">Anabaşlık Onayla</button>
			<button type="button" onclick="getParagBtn();" class="nologin1">Paragraf Başlığı Onayla</button>
			<button type="button" onclick="getAltParagBtn();" class="nologin1">Alt Paragraf Onayla</button>
			<button type="button" onclick="getResimBtn();" class="nologin1">Resim Onayla</button>
			
			<form method="post" action="#" id="#">
				<div class="form-group files">
				  <label>Resim ekle </label>
				  <input type="file" class="form-control" multiple="">
				</div>			  
			</form>

			<div id="textbox-div" style="">
				<input id="titleBox" rows="1" cols="72" style="position: relative; margin-bottom: 5px; width : 100%; resize:none;" placeholder = "Ana Başlık giriniz." unselectable="on" required>
				<input id="titleBaslik" rows="1" cols="72" style="position: relative; margin-bottom: 5px; width : 100%; resize:none;" placeholder = "Paragraf  giriniz." unselectable="on" required>
				<textarea  id="subject" rows="16" cols="72" style="position: relative; margin-bottom: 5px; width : 100%; resize:none;" placeholder = "Alt Paragraf giriniz." required></textarea>
			</div>

		</div>
	</div>
	<!-- #################################### Create Wiki Text Box END #################################### -->


</div>
	<!-- #################################### Create Wiki Ãnizleme START #################################### -->
	<div id = "previewBox">
		<!--  {{name}}-->
		<nav class="navbar navbar-inverse shadow navbar-expand-sm" style="height: 60px; background-color: #314152; border: none; border-bottom: grey 1px dotted groove; ">
		    <div class="navbar-collapse collapse" style="margin-left: 0px;" >
		        <ul class="navbar-nav abs-center-x">
		            <li class="nav-item">
		                <a class="nav-link" class="imglogo"><img src="img/wiki2logo.png" alt=""style="width: 90px;height: 32px;display: block;margin-top:14px;"></a>
		            </li>
		        </ul>
		
		        <ul class="nav navbar-nav navbar-right">
		            <li>
		                <div class="dropdown">
								<%
									
									if(loggedUser != null){
										String userImage =UserImageClient.getUserImage(Integer.parseInt(session.getAttribute("userId").toString()));
										if(userImage.equals("")){
											userImage = "img/anonym.jpg";
										}
								%>
							<img id="loginsmallimg" src="<%=userImage%>" onclick="myFunction()" class="dropbtn1">
							<div id="myDropdown" class="dropdown-content">
								<div id="dropleft"><img id="imgDrop" src="<%=userImage%>"></div>
								<div id="dropright">
									<ul class="ulDrop">
										<li class="liName"><%=loggedUser.getUsername() + " " + loggedUser.getUserlastname()%></li>
										<li class="liMail"><%=loggedUser.getEmail()%></li>
										<li class="LiAccount"><button type="submit" class="DropBtn1">My Profile</button></li>
									</ul>
								</div>
									<div id="dropbottom">
										<button type="submit" class="LogoutBtn">Log Out</button>
									</div>
							</div>
								 <%  }else{ %>
								<button class="nologin">Sign in</button>
								<button class="nologin"style="	margin-right:66px;">Register</button>
								 <%} %>
							</div>
		            </li>
		        </ul>
		    </div>
		</nav>
		<div></div>
		<div id="main-wrapper">
		
		    <!-- Page Preloader -->
		    <div id="preloader">
		
		        <div id="status">
		
		            <div class="status-mes"></div>
		        </div>
		    </div>
		
		    <!--SOLDİV-->
		    <div style="width: 66%; height: 50px;background-color: #ddeaff;margin-left: 11%;">
		        <h1 id="pg1" style="padding-top: 5px; text-align: center">Konu</h1></div>
		    <div class="columns-block container" style="margin-left: 5%; margin-top: 1%; width: 90%">
		        <div style="width: 0;">
		        </div>
		        <!-- .left-col-block -->
		        <div class="left-col-block blocks" style="">
		            <div class="theiaStickySidebar">
		                <section class="expertise-wrapper section-wrapper gray-bg">
		                    <div class="container-fluid">
		                        <div id="section1">
		                            <!-- .row -->
		                            <div class="row" style="border-bottom: 1px dotted rgb(234, 234, 234)">
		                                <div class="col-md-12">
		                                    <div class="section-title">
		                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
		                                            <tr>
		                                                <td width="70%" height="100" valign=""
		                                                    style="padding-left:5px;">
		                                                   <div id="td1">
		                                                   
		                                                   </div>
		                                                </td>
		                                            </tr>
		                                        </table>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <!--.section-contact-->
		
		                    <footer class="footer">
		                        <div class="copyright-section">
		                            <div class="container-fluid">
		                                <div class="row">
		                                    <div class="col-md-12">
		                                        <div class="copytext">
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--.row-->
		                            </div>
		                            <!-- .container-fluid -->
		                        </div>
		                        <!-- .copyright-section -->
		                    </footer>
		                    <!-- .footer -->
						</section>
		            </div>
		            <!-- Sticky -->
		        </div>
		        <!-- .right-col-block -->
		
		        <!-- Header Content -->
		        <div style="width: 20%;">
		            <div class="left-col-block blocks">
		                <header class="header theiaStickySidebar">
		                    <div class="profile-img">
		                        <img id="jpg1" src="img/einstein.jpg" class="img-responsive" alt="" style="height:80px;width:80px;display: block; margin-left: auto; margin-right: auto;"/>
		                    </div>
		
		                    <div class="content">
		                        <h1 id="underimg" style="text-align: center;">Konu</h1>
		                        <nav id="myScrollspy">
		                            <ul class="nav nav-pills nav-stacked" data-spy="" id="ulbackground">
		                                    <li id="konuBasliklari" style="padding-left:5px"><a href="#" style="font-size: 16px;">Baslik
		                                    </a></li>
		                            </ul>
		                        </nav>
		                    </div>
		                </header>
		                <!-- .header-->
		            </div>
		        </div>
		    </div>
		    <!-- .columns-block -->
		</div>
<!-- #main-wrapper -->

	</div>
	<!-- #################################### Create Wiki Ãnizleme END #################################### -->
</div>



</body>
</html>












