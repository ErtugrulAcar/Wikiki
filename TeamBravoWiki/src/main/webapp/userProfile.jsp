<%@ page import="com.aydin.demo.teambravowiki.model.UserInfo" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserProfileClient" %>
<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="script/modernizr.custom.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User Profile</title>

    <!-- favicon -->
    <link href="img/favicon.png" rel=icon>

    <!-- web-fonts -->
    <link href="css/fontcss.css" rel="stylesheet">

    <!-- font-awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/bootstrap.min2.css">
    <script src="script/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/script/bootstrap.min.js"></script>

    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <script src="script/my_js.js"></script>
    <link href="css/elements.css" rel="stylesheet">
    <style>

		#jpg1 {
            height: 200px;
            width: 200px;
            border-radius: 100%;
            background-color: red;
        }
        .nav-pills > li.active > a {
            background-color: #5b5b5b;
        }

            .nav-pills > li.active > a:hover {
                background-color: #5b5b5b;
            }

            .nav-pills > li.active > a, .nav-pills > li.active > a:focus, .nav-pills > li.active > a:hover {
                background-color: #a8adb5;
            }

        .nav > li > a {
            width: 160px;
        }

        .mainwrapper {
            margin-top: -10px;
        }
        .SignButton{
        height:40px;
        width:160px;
        border-radius:5px;
        background-color:#6f7277;
        justify-content: right;
   		margin-top: 10px;
   		margin-bottom: 10px;
   		margin-right:10px;	
        }
        .nav > li > button:hover {
       
        background-color:#a8adb5;
        }
        #forBG{
        background-color:#e2e2e2;
        }
        #forBG2{
        background-color:#c1c1c1;
        }
    </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<!-- Sayfanın içeriği burada session dan cekiliyor -->
                    <%
                    UserPageContext userPageContext = (UserPageContext) session.getAttribute("requestedUserProfile");
                    %>
<% String compare1 = request.getSession().getAttribute("userId").toString(); %>
<% String compare2 = request.getSession().getAttribute("ProfileId").toString(); %>


    <!--NAVBAR-->
     <nav class="navbar navbar-inverse shadow" style="height: 60px; background-color: #d4d5d6; border: none; border-bottom: grey 1px dotted groove; ">
                <div class="container-fluid" >
                  <div class="navbar-header">
                    <a class="navbar-brand" href="homepage.html"><img src="img/wiki2logo.png" alt="" style="width: 90px;height: 33px;margin-top: -5px;"></a>
                  </div>
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="homepage.html" style="height: 60px;">Home</a></li>
                    <li><a href="wikiPage.jsp" style="height: 60px;">wikiPage</a></li>   
                  </ul>
                  
                  <ul class="nav navbar-nav navbar-right">
                  <%if(session.getAttribute("loginned") == null){  %>
            		<li><button class="SignButton">Kayit OL</button></li>
                	<li><button class="SignButton"><a href="/login">Giris Yap</a></button></li>
            	  	
            <%  }else{ %>
            		<li><button class="SignButton">Welcome <%=request.getSession().getAttribute("userName")%></button></li>
                	<li><button class="SignButton">Cikis Yap</button></li>
					<%} %>
   				 </ul>
                </div>
              </nav>


    <div id="main-wrapper" class="mainwrapper">
        <!-- Page Preloader -->
        <div id="preloader">
            <div id="status">
                <div class="status-mes"></div>
            </div>
        </div>

        <div class="columns-block container">
            <div class="left-col-block blocks" id="forBG">

                <header id="headerfixed" class="header theiaStickySidebar" style="text-align:center;">
                    <div class="profile-img">


                        <img id="jpg1" src="img/img-profile.jpg" class="img-responsive" alt="" style="margin-left:auto;margin-right:auto;" />
                    </div>

                    


                    <div class="content">
                        <h1>
                            <%=userPageContext.getUsername() + " " + userPageContext.getUserlastname()%>
                        </h1>
                        <span class="lead">
                            <%=userPageContext.getUserdegree().toUpperCase()%>
                        </span>

                        <ul class="social-icon">
                            <li>
                                <% if(userPageContext.getFacebook_link() == null){%>
                                <a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <%} else { %>

                                <a href="<%=userPageContext.getFacebook_link()%>" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <%} %>
                            </li>
                            <li>
                                <% if(userPageContext.getTwitter_link() == null){%>
                                <a href="https://twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <%} else { %>

                                <a href="<%=userPageContext.getTwitter_link()%>" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <%} %>
                            </li>
                            <li>
                                <% if(userPageContext.getInstagram_link() == null){%>
                                <a href="https://www.instagram.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <%} else { %>

                                <a href="<%=userPageContext.getInstagram_link()%>" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <%} %>
                            </li>
                            <li>
                                <% if(userPageContext.getLinkedIn_link() == null){%>
                                <a href="https://www.linkedin.com" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                <%} else { %>

                                <a href="<%=userPageContext.getLinkedIn_link()%>" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                <%} %>
                            </li>
 <% 

       if(compare1.equals(compare2)){
    	   %>
    	   <li>
           
           <a>
              
                       <input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-1" style="height:20px; width:28px;
       margin-bottom:-6px;padding-left:4px; padding-bottom:2px;" value='' />
								
           </a>
       </li>
       
<% }  %>
                            

                        </ul>
                    </div>
                </header>
                <!-- .header-->
            </div>
            <!-- .left-col-block -->
            <div class="right-col-block blocks" id="forBG2">
                <div class="theiaStickySidebar">
                    
                        <section class="expertise-wrapper section-wrapper gray-bg">
                            <div class="container-fluid">

                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="section-title">
                                            <h2>
                                                Kullanici Biyografisi
 <% 

       if(compare1.equals(compare2)){
    	   %>
                                            <input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-2" style="height:20px; width:28px;
                            margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />
										<%} %>			
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- .row -->

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="expertise-item">
                                            <%=userPageContext.getUserbio()%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    


                    <!-- .expertise-wrapper -->
                   
                        <section class="section-wrapper section-interest gray-bg">
                            <div class="container-fluid">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="section-title">
                                            <h2>Ilgi Alanlari
                                             <% 

       if(compare1.equals(compare2)){
    	   %>
                                                <input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-3" style="height:20px; width:28px;
                            margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />
												<%} %>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- .row -->

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="content-item">
                                            <%=userPageContext.getUserinterest()%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- .row -->
                        </section>
                    

                    <!-- .section-publications -->
                   
                        <section class="section-contact section-wrapper gray-bg">
                            <div class="container-fluid">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="section-title">
                                            <h2>
                                                Kullanici Bilgileri
                                                 <% 

       if(compare1.equals(compare2)){
    	   %>
                                            <input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-4" style="height:20px; width:28px;
                            margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />
												<%} %>	</h2>
                                        </div>
                                    </div>
                                </div>
                                <!--.row-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>E-posta</h2>
                                        <%=userPageContext.getEmail()%>
                                        <h2>Telefon Numarasi</h2>
                                        <%
                                        if(userPageContext.getPhonenumber() == null){
                                        userPageContext.setPhonenumber("-");
                                        }
                                        %>
                                        <%=userPageContext.getPhonenumber()%>
                                    </div>
                                <!--.row-->
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                            </div>
                        </section>
                   
                    <!--.container-fluid-->
                    <!--.section-contact-->

                    <footer class="footer">
                        <div class="copyright-section">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="copytext">
                                            &copy;  2019 Group Bravo All Rights Reserved
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
                </div>
                <!-- Sticky -->
            </div>
            <!-- .right-col-block -->
        </div>
        <!-- .columns-block -->
    </div>
    <div class="md-modal md-effect-1" id="modal-1">
			<div class="md-content">
        <div id="popupContact">
            <!-- Contact Us Form -->
            <div class="form-style-2">
                <div class="form-style-2-heading">Edit your social media</div>
                <form id="formwidth" action="" method="post" name="form">
                    <img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">
                    <label for="field1"><span>Facebook:</span><input type="text" class="input-field" name="name" value="<% if(userPageContext.getFacebook_link() == null){%>https://www.facebook.com<%} else { %><%=userPageContext.getFacebook_link()%><%}%>"/></label>
                    <label for="field2"><span>Twitter:</span><input type="text" class="input-field" name="name" value="<% if(userPageContext.getTwitter_link() == null){%>https://twitter.com<%} else { %><%=userPageContext.getTwitter_link()%><%}%>"/></label>
                    <label for="field3"><span>Instagram:</span><input type="text" class="input-field" name="name" value="<% if(userPageContext.getInstagram_link() == null){%>https://www.instagram.com<%} else { %><%=userPageContext.getInstagram_link()%><%}%>"/></label>
                    <label for="field4"><span>LinkedIn:</span><input type="text" class="input-field" name="name" value="<% if(userPageContext.getLinkedIn_link() == null){%>https://www.linkedin.com<%} else { %><%=userPageContext.getLinkedIn_link()%><%}%>"/></label>



                    <label><span> </span><input type="submit" value="Submit" onclick="check_empty()" /></label>
                </form>
            </div>
        </div>
    </div></div>
    <div class="md-modal md-effect-2" id="modal-2">
			<div class="md-content">
        <div id="popupContactBiography">
            <!-- Contact Us Form -->
            <div class="form-style-Bio">
                <div class="form-style-Bio-heading">Edit your biography</div>
                <form action="" method="post" name="form">
                    <img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">
                    <label for="field1">
                        <span>Edit your biography:</span>

                        <textarea class="input-field" rows="14" cols="37"><% if(userPageContext.getUserbio() == null){%><%} else { %><%=userPageContext.getUserbio()%><%}%></textarea>
                    </label>

                    <label><span> </span><input type="submit" value="Submit" onclick="check_empty()" /></label>
                </form>
            </div>
        </div></div>
    </div>
    <div class="md-modal md-effect-3" id="modal-3">
			<div class="md-content">
   
        <div id="popupContactInterest">
            <!-- Contact Us Form -->
            <div class="form-style-Bio">
                <div class="form-style-Bio-heading">Edit your interest</div>
                <form action="" method="post" name="form">
                    <img id="close" src="img/closeIcon.png"  class="md-close" style="height:24px;width:24px;">
                    <label for="field1">
                        <span>Edit your interest:</span>

                        <textarea class="input-field" rows="14" cols="37"><% if(userPageContext.getUserinterest() == null){%><%} else { %><%=userPageContext.getUserinterest()%><%}%></textarea>
                    </label>

                    <label><span> </span><input type="submit" value="Submit" onclick="check_empty()" /></label>
                </form>
            </div>
        </div></div></div>
    
   
     <div class="md-modal md-effect-4" id="modal-4">
			<div class="md-content">
				<div id="popupContactUserInfo">
            <!-- Contact Us Form -->
            <div class="form-style-2">
                <div class="form-style-2-heading">Edit your user information</div>
                <form action="" method="post" name="form">
                    <img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">
                    <label for="field1"><span>E-posta:</span><input type="text" class="input-field" name="name" value="caneregin@hotmail.com"/></label>
                    <label for="field1"><span>Telefon:</span><input type="text" class="input-field" name="name" value="-"/></label>
                    <label><span></span><input type="submit" value="Submit" onclick="check_empty()" /></label>
                </form>
            </div>
        </div>
			</div>
		</div>


		<div class="md-overlay"></div><!-- the overlay element -->

		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="script/classie.js"></script>
		<script src="script/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/script/';
		</script>
		<script src="script/cssParser.js"></script>
		<script src="script/css-filters-polyfill.js"></script>
    <!-- #main-wrapper -->
    <!-- jquery -->
    <script src="script/jquery-2.1.4.min.js"></script>

    <!-- Bootstrap -->
    <script src="script/bootstrap.min.js"></script>
    <script src="script/theia-sticky-sidebar.js"></script>
    <script src="script/scripts.js"></script>

</body>
</html>