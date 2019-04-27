<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserImageClient" %>
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
    <link href="css/dropdown.css" rel="stylesheet">
   	<script src="script/dropdown.js"></script>
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
        
 
    </style>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/ProfilePhotoCss.css">
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<!-- Sayfanın içeriği burada session dan cekiliyor -->
                    <%
                    UserPageContext userPageContext = (UserPageContext) session.getAttribute("requestedUserProfile");
                    %>
<% String compare1 = request.getSession().getAttribute("userId").toString(); %>
<% String compare2 = request.getSession().getAttribute("ProfileId").toString(); %>
<% String logincontrol = request.getSession().getAttribute("userId").toString(); %>

    <!--NAVBAR-->
     <nav class="navbar navbar-inverse shadow navbar-expand-sm" style="height: 60px; background-color: #314152; border: none; border-bottom: grey 1px dotted groove; ">
                <div class="navbar-collapse collapse" style="margin-left: 0px;" >
                  <ul class="navbar-nav abs-center-x">
                  <li class="nav-item">
               <a class="nav-link" class="imglogo" href="homepage.jsp"><img src="img/wiki2logo.png" alt=""
               style="width: 90px;height: 32px;display: block;margin-top:14px;"></a></li>
            
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
				      <li>

					<div class="dropdown">

					<%
                            UserPageContext loggedUser = (UserPageContext) session.getAttribute("userDetails");
                            if(loggedUser != null){
                    %>

            		<img id="loginsmallimg" src="data:image/*;base64, <%=session.getAttribute("userImage")%>" onclick="myFunction()" class="dropbtn1">
            	  	<div id="myDropdown" class="dropdown-content">
    <div id="dropleft"><img id="imgDrop" src="data:image/*;base64, <%=session.getAttribute("userImage")%>"></div>
    <div id="dropright">
    <ul class="ulDrop">
    <li class="liName"><%=loggedUser.getUsername() + " " + loggedUser.getUserlastname()%></li>
    <li class="liMail"><%=loggedUser.getEmail()%></li>
    <li class="LiAccount"><button type="submit" class="DropBtn1" onclick="location.href='/userProfile<%=loggedUser.getUserid()%>'">My Profile</button></li>
    </ul>
    </div>
    <div id="dropbottom">
        <button type="submit" class="LogoutBtn" onclick="location.href='/logout'">Log Out</button>

    </div>
  </div>
            <%  }else{ %>

            		<button class="nologin" onclick="location.href='/login'">Sign in</button>

					<%} %>

</div>
					</li>
      
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
                    
                    <div class="container1">
                    
                    <!-- PROFIL FOTOSU VAR MI KONTROLU EKLENECEK BURAYA -->

                        <%
                            String baseStr = "data:image/*;base64, ";
                            String userImage =UserImageClient.getUserImage(userPageContext.getUserid());
                            if(userImage.equals(baseStr))
                                userImage = "img/anonym.jpg";
                        %>
 						 <img src="<%=userImage%>" alt="" class="preview preview--rounded" style="height:200px;width:200px;">
  						<% 

       if(compare1.equals(compare2)){
    	   %>
                                            <div class="middle1">
    				<input type='image' src='img/editIcon.png' class="md-trigger" data-modal="modal-5" style="height:20px; width:28px;
                            margin-bottom:-4px;padding-left:10px; padding-bottom:2px;" value='' />
                    
  			</div>
												<%} %>
  						
  							
				</div>

						
                        
                    </div>

                    


                    <div class="content">
                        <h1 style="color:#e5e5ff;">
                            <%=userPageContext.getUsername() + " " + userPageContext.getUserlastname()%>
                        </h1>
                        <span class="lead" style="color:#ededff;">
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
                                            <h2 style="color:#e5e5ff;">
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
                                        <div class="expertise-item" style="color:#e2e2e2;">
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
                                            <h2 style="color:#e5e5ff;">Ilgi Alanlari
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
                                        <div class="content-item" style="color:#e2e2e2;">
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
                                            <h2 style="color:#e5e5ff;">
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
                                    <div class="col-md-12" style="color:#e2e2e2;">
                                        <h2 style="color:#e5e5ff;">E-posta</h2>
                                        <%=userPageContext.getEmail()%>
                                        <h2 style="color:#e5e5ff;">Telefon Numarasi</h2>
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

                    <label><span> </span>
                    
                    <input type="submit" value="Submit" class="md-close" onclick="check_empty()" /></label>
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
		
		<div class="md-modal md-effect-5" id="modal-5">
			<div class="md-content">
				

<div id="popupProfilePhoto">
            <!-- Contact Us Form -->
            <div class="form-style-pp">
                <div class="form-style-pp-heading">Edit your Profile Photo</div>
<img id="close" src="img/closeIcon.png" class="md-close" style="height:24px;width:24px;">
            <div class="profile">
        <div class="photo">
            <input type="file" accept="image/*">
            <div class="photo__helper">
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
    text-weight:bold;" id="previewBtn">Edit</button>    
    
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
  <script  src="script/ProfilePhotoScript.js"></script>

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
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<script>


var app = new Vue({
	el : "#app",
	data : {
		id : <%=session.getAttribute("userId")%>	
	},
	methods : {
		uploadImg : function(user_img){
			axios({
				url : "http://104.248.129.101:8080/WikiWebService/webapi/image/user/upload",
				method : "post",
				data : {
					"id" : this.id,
					"image" : user_img
				}
			}).then(response => (console.log(response)))
		}
	}
});

</script>















