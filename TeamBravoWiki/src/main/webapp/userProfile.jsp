<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserImageClient" %>
<%@ page import="com.aydin.demo.teambravowiki.model.UserInfo" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserProfileClient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
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
    <script src="script/FormSubmit.js"></script>
    <link href="css/elements.css" rel="stylesheet">
    <link href="css/dropdown.css" rel="stylesheet">
   	<script src="script/dropdown.js"></script>
   	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
  	<script  src="script/ProfilePhotoScript.js"></script>
    <style>
		#jpg1 {
            height: 200px;
            width: 200px;
            border-radius: 100%;
            background-color: red;
        }
        .nav > li > a:hover{
  			 background-color: #c1d9ff;
			}
        .nav-pills > li.active > a {
            background-color: #c1d9ff;
        }
        .nav-pills > li.active > a:hover {
                background-color: #c1d9ff;
            }
        .nav > li > a {
        width:188px;
        padding: 10px 0px;
        margin-right: 0px;
        }
        a:hover{
        color: #0645ad;}
        a {
   			 color: #0645ad;
		}
		a:visited {
    		color: #0b0080;
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
   		color:white;
        }
        .nav > li > button:hover {
        background-color:#a8adb5;
        }
        .shadow{
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
		span
		{
			font-family: Arial !important;
		}
    </style>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/ProfilePhotoCss.css">
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<!-- Sayfanın içeriği burada session dan cekiliyor -->
<%
	UserPageContext userPageContext = (UserPageContext) session.getAttribute("requestedUserProfile");
	boolean editable = false;
	int compare1 = userPageContext.getUserid(); // Görüntülemek istenen profil
	int compare2 = Integer.parseInt(session.getAttribute("userId").toString()); // User - Eğer User giriş yapmamışsa 0 değerini alıyo
	if(compare2 != 0){
		if(compare1 == compare2){
			editable = true;
		}
	}
%>

	<!-- #################################### NAVBAR START #################################### -->
	<nav class="navbar navbar-inverse shadow navbar-expand-sm" style="height: 60px; background-color: #314152; border: none; border-bottom: grey 1px dotted groove; ">
    	<div class="navbar-collapse collapse" style="margin-left: 0px;" >
        	<ul class="navbar-nav abs-center-x">
            	<li class="nav-item">
                	<a class="nav-link" class="imglogo" href="/home"><img src="img/wiki2logo.png" alt=""style="width: 90px;height: 32px;display: block;margin-top:14px;"></a>
                </li>
           </ul>
                  
            <ul class="nav navbar-nav navbar-right">
				<li>
					<div class="dropdown">
						<%
                        	UserPageContext loggedUser = (UserPageContext) session.getAttribute("userDetails");
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
    							<li class="liMail" id="navbarEmail"><%=loggedUser.getEmail()%></li>
    							<li class="LiAccount"><button type="submit" class="DropBtn1" onclick="location.href='/userProfile<%=loggedUser.getUserid()%>'">My Profile</button></li>
    						</ul>
   						</div>
    						<div id="dropbottom">
        						<button type="submit" class="LogoutBtn" onclick="location.href='/logout'">Log Out</button>
    						</div>
  					</div>
           				 <%  }else{ %>
						<button class="nologin" onclick="location.href='/login'">Sign in</button>
                        <button class="nologin" onclick="location.href='/register'"style="	margin-right:66px;">Register</button>
						 <%} %>
					</div>
				</li>
    		</ul>
		</div>
	</nav>
	<!-- ############################################# NAVBAR END ############################################# -->
	
	<!-- ############################################# ANA DIV START ############################################# -->
    	<div id="main-wrapper" class="mainwrapper">
        	<!-- Page Preloader -->
        		<div id="preloader">
            		 <div id="status">
               		 <div class="status-mes"></div>
           			</div>
        		</div>
        	<div class="columns-block container">
    <!-- ############################################# LEFT DIV START ############################################# -->
            	<div class="left-col-block blocks" id="forBG">
                	<header id="headerfixed" class="header theiaStickySidebar">
                    	<div class="profile-img"  style="text-align:center;">
							<div class="container1"  style="text-align:center;">
                    
                   				 <!-- PROFIL FOTOSU VAR MI KONTROLU EKLENECEK BURAYA -->
                    
                        		<%
                            		//pageUserImage userImage den farklı -- bu hangi profil sayfası gösteriliyorsa o kişinin fotosunu alır
                            		String pageUserImage =UserImageClient.getUserImage(userPageContext.getUserid());
                            		if(pageUserImage.equals("")){
                          		      pageUserImage= "img/anonym.jpg";
                           		 }
                     		     %>
 						 		<img id="userImage" src="<%=pageUserImage%>" alt="" class="preview preview--rounded" style="height:200px;width:200px;">
  									<%if(editable){%>
                                    	<div class="middle1">
    										<input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-5" style="height:20px; width:28px;margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />              
  										</div>
									<%} %>
							</div>
                   		</div>
                    	<div class="content"  style="text-align:center;">
                        	<h1 style="color:#e5e5ff;">
                            	${requestedUserProfileObject.username} ${requestedUserProfileObject.userlastname}
                        	</h1>
                        	<span class="lead" style="color:#ededff;">
								${requestedUserProfileObject.userdegree}
                        	</span>

                        		<ul class="social-icon" id="socialMedia">
                            		<li>
                               			<a href="${requestedUserProfileObject.facebook_link}" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                           			</li>
                            		<li>
                                		<a href="${requestedUserProfileObject.twitter_link}" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            		</li>
                            		<li>
                                		<a href="${requestedUserProfileObject.instagram_link}" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            		</li>
                            		 <li>
                                		<a href="${requestedUserProfileObject.linkedIn_link}" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            		</li>
 										<%if(editable){%>
    	   							<li>
           								 <a><input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-1" style="height:20px; width:28px;margin-bottom:-6px;padding-left:4px; padding-bottom:2px;" value='' /></a>
       								</li>
       
										<% }  %>
                      			 </ul>
                    	</div>
                    	
                    	<div id="ranks">
							<div style="text-align:center;">
								<hr style="margin-left:auto;margin-right:auto;height:1px;width:80%;background-color:#ccc;">
								<button @click="changeRank(1)" class="rankbutton">Okuyucu</button><button @click="changeRank(2)" class="rankbutton">Önerici</button><button @click="changeRank(3)" class="rankbutton">Y. Mod</button><button @click="changeRank(4)" class="rankbutton">Mod</button><button @click="changeRank(5)" class="rankbutton">Yönetici</button>

							</div>
							<ul id="rankUl">
								<li><img class="rankImg" :src="firstLi">OKUR</li>
								<li><img class="rankImg" :src="secondLi">DUZENLEME ICIN IZIN</li>
								<li><img class="rankImg" :src="thirdLi">DUZENLEYEBILIR</li>
								<li><img class="rankImg" :src="forthLi">DUZENLEMEYI KABUL EDER</li>
								<li><img class="rankImg" :src="fifthLi">HER YETKI ACIKTIR</li>
							</ul>
						</div>

                </header>
                <!-- .header-->
            </div>
            <!-- .left-col-block -->
            <!-- ############################################# LEFT DIV END ############################################# -->
            
            <!-- ############################################# RIGHT DIV START ############################################# -->
            <div class="right-col-block blocks" id="forBG2">
                <div class="theiaStickySidebar">
                        <section class="expertise-wrapper section-wrapper gray-bg">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="section-title">
                                            <h2 style="color:#e5e5ff;">
                                                Kullanici Biyografisi
 												<%if(editable){%>
                                            	<input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-2" style="height:20px; width:28px;margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />
												<%} %>			
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- .row -->

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="expertise-item" style="color:#e2e2e2;" id="userbio">
                                            ${requestedUserProfileObject.userbio}
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
                                            <h2 style="color:#e5e5ff;">
                                            	Ilgi Alanlari
                                             	<% if(editable){%>
                                                <input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-3" style="height:20px; width:28px;margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />
												<%} %>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- .row -->

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="content-item" style="color:#e2e2e2;" id="userInterests">
                                            ${requestedUserProfileObject.userinterest}
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
                                            <h2 style="color:#e5e5ff;">
                                                Kullanici Bilgileri
                                                <%if(editable){%>
                                            	<input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-4" style="height:20px; width:28px;margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />
												<%} %>	</h2>
                                        </div>
                                    </div>
                                </div>
                                <!--.row-->
                                <div class="row">
                                    <div class="col-md-12" style="color:#e2e2e2;" id="emailPhone">
                                        <h2 style="color:#e5e5ff;">E-posta</h2>
										<div>${requestedUserProfileObject.email}</div>
                                        <h2 style="color:#e5e5ff;">Telefon Numarasi</h2>
										<div>${requestedUserProfileObject.phonenumber}</div>
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
                                        <div class="copytext" style="color:#e2e2e2;">
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
            <!-- ############################################# RIGHT DIV END ############################################# -->
        </div>
        <!-- .columns-block -->
    </div>
    <!-- ############################################# ANA DIV END ############################################# -->
    			<div class="md-modal md-effect-1" id="modal-1">
					<div class="md-content">
        				<div id="popupContact">
            			<!-- Contact Us Form -->
            				<div class="form-style-2">
                				<div class="form-style-2-heading">Edit your social media</div>
                					<form id="formwidth" action="" method="post" name="form">
                    					<!--  <img id="close2" src="img/closeIcon.png"  class="md-close" style="height:24px;width:24px;">
                    					<img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">
                    					-->
                    					<label for="field1"><span>Facebook:</span><input type="text" id="facebookVal" class="input-field" name="name" value="<% if(userPageContext.getFacebook_link() == null){%>https://www.facebook.com<%} else { %><%=userPageContext.getFacebook_link()%><%}%>"/></label>
                    					<label for="field2"><span>Twitter:</span><input type="text"  id="twitterVal"class="input-field" name="name" value="<% if(userPageContext.getTwitter_link() == null){%>https://twitter.com<%} else { %><%=userPageContext.getTwitter_link()%><%}%>"/></label>
                    					<label for="field3"><span>Instagram:</span><input type="text"id="instagramVal"class="input-field" name="name" value="<% if(userPageContext.getInstagram_link() == null){%>https://www.instagram.com<%} else { %><%=userPageContext.getInstagram_link()%><%}%>"/></label>
                    					<label for="field4"><span>LinkedIn:</span><input type="text" id="linkedinVal"class="input-field" name="name" value="<% if(userPageContext.getLinkedIn_link() == null){%>https://www.linkedin.com<%} else { %><%=userPageContext.getLinkedIn_link()%><%}%>"/></label>
										<label><input type="button" onclick="GetSocVal();" class="md-close" id="clos" value="Submit" /></label>
										
               						</form>
            				</div>
        				</div>
    				</div>
    			</div>
    			<div class="md-modal md-effect-2" id="modal-2">
					<div class="md-content">
        				<div id="popupContactBiography">
            			<!-- Contact Us Form -->
            				<div class="form-style-Bio">
                				<div class="form-style-Bio-heading">Edit your biography</div>
                					<form id="BioForm" action="FormSubmit.js" method="post" name="form">
                    					<!--  <img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">-->
                    					<label for="field1">
                        					<span>Edit your biography:</span>
											<textarea id="BioEditing" class="input-field" rows="14" cols="37">${requestedUserProfileObject.userbio}</textarea>
                    					</label>
                    					<label><input type="button" onclick="GetBioVal();" class="md-close" id="clos" value="Submit" /></label>
                					</form>
            				</div>
        				</div>
        			</div>
    			</div>
    			<div class="md-modal md-effect-3" id="modal-3">
					<div class="md-content">
        				<div id="popupContactInterest">
            			<!-- Contact Us Form -->
            				<div class="form-style-Bio">
                				<div class="form-style-Bio-heading">Edit your interest</div>
                					<form action="" method="post" name="form">
                    					<!--  <img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">-->
                    					<label for="field1">
                    						<span>Edit your interest:
                    						</span>
                        				<textarea id="IntEditing" class="input-field" rows="14" cols="37">${requestedUserProfileObject.userinterest}</textarea>
                    					</label>
                    					<label><input type="button" onclick="GetIntVal();" class="md-close" value="Submit" /></label>
                					</form>
            				</div>
        				</div>
        			</div>
        		</div>
     			<div class="md-modal md-effect-4" id="modal-4">
					<div class="md-content">
						<div id="popupContactUserInfo">
           				<!-- Contact Us Form -->
            				<div class="form-style-2">
                				<div class="form-style-2-heading">Edit your user information</div>
                				<form action="" method="post" name="form">
                    					<!--  <img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">-->
                    					<label for="field1"><span>E-posta:</span><input type="text" id="EpostaEditing" class="input-field" name="name" value="${requestedUserProfileObject.email}"/></label>
                    					<label for="field1"><span>Telefon:</span><input type="text" id="TelEditing" class="input-field" name="name" value="${requestedUserProfileObject.phonenumber}"/></label>
                    					<label><input type="button" onclick="GetUserVal();" class="md-close" id="clos" value="Submit" /></label>
                				</form>
            				</div>
        				</div>
					</div>
				</div>
				<div class="md-modal md-effect-5" id="modal-5">
					<div class="md-content">
						<div id="popupProfilePhoto">
            			<!-- Contact Us Form -->
            				<div class="form-style-pp">
                				<div class="form-style-pp-heading">Edit your Profile Photo</div>
								<!--  <img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">-->
            					<div class="profile">
       					 			<div class="photo">
          					  			<input type="file" accept="image/*">
          					  			<div class="photo__helper">
          					  			<img id="userImage" src="<%=pageUserImage%>" style="height:160px;width:160px;border-radius:160px;position:absolute;">
         					     			  <div class="photo__frame photo__frame--circle">
         					       			    <canvas class="photo__canvas"></canvas>
         					       			    <div class="message is-empty">
               					 			        <p class="message--desktop">Drop your photo here or browse your computer.</p>
               					 			        <p class="message--mobile">Tap here to select your picture.</p>
               								     </div>
              								      <div class="message is-loading">
               								         <i class="fa fa-2x fa-spin fa-spinner"></i>
              								      </div>
              								      <div class="message is-dragover">
                								        <i class="fa fa-2x fa-cloud-upload"></i>
                 								       <p>Drop your photo</p>
                 								   </div>
                 								   <div class="message is-wrong-file-type">
                   								     <p>Only images allowed.</p>
			                  					      <p class="message--desktop">Drop your photo here or browse your computer.</p>
			                  					      <p class="message--mobile">Tap here to select your picture.</p>
			                  					   </div>
			                  					   <div class="message is-wrong-image-size">
			                      					  <p>Your photo must be larger than 350px.</p>
			                   					  </div>
			               					  </div>
			            				</div>
			            					<div class="photo__options hide">
			                					<div class="photo__zoom">
			                    					<input type="range" class="zoom-handler">
			                					</div><a href="javascript:;" class="remove"><i class="fa fa-trash"></i></a>
			            					</div>
			        					</div>
			    							</div>

										    <button type="button" style="border: none;
										    padding: 10px 17px 10px 17px;
										    background: #314152;
										    color: #fff;
										    box-shadow: 1px 1px 4px #DADADA;
										    -moz-box-shadow: 1px 1px 4px #DADADA;
										    -webkit-box-shadow: 1px 1px 4px #DADADA;
										    border-radius: 3px;
										    -webkit-border-radius: 3px;
										    -moz-border-radius: 3px;
										    width:30%;
										  	 margin-left:36%;
										    text-weight:bold;" 
										    id="previewBtn" class="md-close" onclick="ClickFunction()">Edit</button>    
										    
  

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
		<script>var polyfilter_scriptpath = '/script/';</script>
		<script src="script/cssParser.js"></script>
		<script src="script/css-filters-polyfill.js"></script>
    	<!-- #main-wrapper -->
    	<!-- jquery -->
    	<script src="script/jquery-2.1.4.min.js"></script>

    	<!-- Bootstrap -->
    	<script src="script/bootstrap.min.js"></script>
    	<script src="script/theia-sticky-sidebar.js"></script>
    	<script src="script/scripts.js"></script>

<%
	UserInfo userInfo = UserProfileClient.getUserInfo(userPageContext.getUserid());

%>
<script>
var ranks = new Vue({
	el : "#ranks",
	data : {
		rank : "<%=userInfo.getUserDegree()%>",
		firstLi : "img/kirmizicarpi.png",
		secondLi : "img/kirmizicarpi.png",
		thirdLi : "img/kirmizicarpi.png",
		forthLi : "img/kirmizicarpi.png",
		fifthLi : "img/kirmizicarpi.png"
	},
	beforeMount : function(){
		this.rank = parseInt(this.rank);
		this.changeRank(this.rank);
	},
	mounted : function(){
		document.getElementsByClassName("rankbutton").item(this.rank-1).style.border = "1px solid white";
	},
	methods : {
		changeRank: function(num){
			if(num > 4){
				this.firstLi = "img/yesiltik.png";
				this.secondLi = "img/yesiltik.png";
				this.thirdLi = "img/yesiltik.png";
				this.forthLi = "img/yesiltik.png";
				this.fifthLi = "img/yesiltik.png";
			}
			else if(num > 3){
				this.firstLi = "img/yesiltik.png";
				this.secondLi = "img/yesiltik.png";
				this.thirdLi = "img/yesiltik.png";
				this.forthLi = "img/yesiltik.png";
				this.fifthLi = "img/kirmizicarpi.png";

			}
			else if(num > 2){
				this.firstLi = "img/yesiltik.png";
				this.secondLi = "img/yesiltik.png";
				this.thirdLi = "img/yesiltik.png";
				this.forthLi = "img/kirmizicarpi.png";
				this.fifthLi = "img/kirmizicarpi.png";

			}
			else if(num > 1){
				this.firstLi = "img/yesiltik.png";
				this.secondLi = "img/yesiltik.png";
				this.thirdLi = "img/kirmizicarpi.png";
				this.forthLi = "img/kirmizicarpi.png";
				this.fifthLi = "img/kirmizicarpi.png";
			}
			else{
				this.firstLi = "img/yesiltik.png";
				this.secondLi = "img/kirmizicarpi.png";
				this.thirdLi = "img/kirmizicarpi.png";
				this.forthLi = "img/kirmizicarpi.png";
				this.fifthLi = "img/kirmizicarpi.png";
			}

		}

	}
});

var app = new Vue({
	el : "#app",
	data : {
		id : <%=session.getAttribute("userId")%>,
		ifUserImage : <%=!session.getAttribute("userImage").equals("")%>,
		logInimgReferances : [document.getElementById("loginsmallimg"), document.getElementById("imgDrop")]
	},
	methods : {
		uploadImg : function(user_img){
			if(this.ifUserImage){
				axios({
					url : "http://104.248.129.101:8080/WikiWebService/webapi/image/user/update",
					method : "post",
					data : {
						"id" : this.id,
						"image" : user_img
					}
				}).then(response => (console.log(response)))
			}else{
				axios({
					url : "http://104.248.129.101:8080/WikiWebService/webapi/image/user/upload",
					method : "post",
					data : {
						"id" : this.id,
						"image" : user_img
					}
				}).then(response => (console.log(response)))
			}
			this.changeImageReferances(user_img);
		},
		changeImageReferances : function (new_src) {
			for(var i=0;i<this.logInimgReferances.length;i++){
				this.logInimgReferances[i].src = new_src;
			}
		}
	},
});

var userInfos = new Vue({
	el : "#userInfos",
	data : {
		id : <%=session.getAttribute("userId")%>,
		socialMediaLinks : document.getElementById("socialMedia").getElementsByTagName("a"),
		userbio : document.getElementById("userbio"),
		userInterests : document.getElementById("userInterests"),
		emailPhone : document.getElementById("emailPhone").getElementsByTagName("div"),
		navbarEmail : document.getElementById("navbarEmail")

	},
	methods : {
		setSocialMedia : function (facebook, twitter, instagram, linkedin) {
			axios({
				url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateLinks/" + this.id,
				method : "put",
				data : {
					"facebook" : facebook,
					"twitter" : twitter,
					"instagram" : instagram,
					"linkedIn" : linkedin
				}
			}).then(response => (this.makeSocialMediaUpdate(response, facebook, twitter, instagram, linkedin)))

		},
		setUserBio : function (textVal) {
			axios({
				url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateBio/" + this.id,
				method : "put",
				data : {
					"userBio" : textVal
				}
			}).then(response => (this.userbio.innerText = textVal))

		},
		setInterests : function (textVal) {
			axios({
				url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateInterest/" + this.id,
				method : "put",
				data : {
					"userInterest" : textVal
				}
			}).then(response => (this.userInterests.innerText = textVal))

		},
		setEmailPhone : function (email, phone) {
			axios({
				url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateEmailPhone/" + this.id,
				method : "put",
				data : {
					"userEmail" : email,
					"userPhone" : phone
				}
			}).then(response => (this.makeEmailPhoneUpdate(response, email)))
			this.emailPhone[1].innerText = phone;
		},
		makeSocialMediaUpdate : function(response, facebook, twitter, instagram, linkedin){
			if(response.data == "Success"){
				this.socialMediaLinks[0].href = facebook;
				this.socialMediaLinks[1].href = twitter;
				this.socialMediaLinks[2].href = instagram;
				this.socialMediaLinks[3].href = linkedin;
			}
		},
		makeEmailPhoneUpdate : function (response, email) {
			if(response.data == "Same Email"){
				this.emailPhone[1].innerText = phone;
			}
			if(response.data == "Success"){
				console.log(response.data);
				this.navbarEmail.innerText = email;
				this.emailPhone[0].innerText = email;
			}
		}
	}
});

</script>

	
</body>
</html>