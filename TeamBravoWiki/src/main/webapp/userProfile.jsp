<%@ page import="com.aydin.demo.teambravowiki.model.UserInfo" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserProfileClient" %>
<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
            background-color: #d1e2ff;
        }

            .nav-pills > li.active > a:hover {
                background-color: #d1e2ff;
            }

        .nav > li > a {
            width: 160px;
        }

        #headerfixed {
            margin-left: 70px;
        }

        .mainwrapper {
            margin-top: -10px;
        }
    </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">

    <!--NAVBAR-->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">WIKIKI</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Page 1</a></li>
                <li><a href="#">Page 2</a></li>
                <li><a href="#">Page 3</a></li>
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
            <div class="left-col-block blocks">

                <header id="headerfixed" class="header theiaStickySidebar">
                    <div class="profile-img">


                        <img id="jpg1" src="img/img-profile.jpg" class="img-responsive" alt="" />
                    </div>

                    <!-- Sayfanın içeriği burada session dan cekiliyor -->
                    <%
                        UserPageContext userPageContext = (UserPageContext) session.getAttribute("requestedUserProfile");
                    %>

                    <div class="content">
                        <h1>
                            <%=userPageContext.getUsername() + " " + userPageContext.getUserlastname()%>
                        </h1>
                        <span class="lead">
                           <%=userPageContext.getUserdegree().toUpperCase()%>
                        </span>

                        <ul class="social-icon">
                            <li><a href="<%=userPageContext.getFacebook_link()%>"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="<%=userPageContext.getTwitter_link()%>"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="<%=userPageContext.getInstagram_link()%>"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="<%=userPageContext.getLinkedIn_link()%>"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li>
                                <a>
                                    <input type='image' src='img/editIcon.png' style="height:26px; width:26px;
                            margin-bottom:-10px;padding-left:1px; padding-bottom:2px;" value='' onclick="div_show()" />
                                </a>
                            </li>

                        </ul>
                        <nav id="myScrollspy">
                            <ul id="ulbackground" class="nav nav-pills nav-stacked">
                                <li><a href="#section1">Kullanici Biyografisi</a></li>
                                <li><a href="#section2">Ilgi Alanlari</a></li>
                                <li><a href="#section3">Kullanici Bilgileri</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!-- .header-->
            </div>
            <!-- .left-col-block -->
            <div class="right-col-block blocks">
                <div class="theiaStickySidebar">
                    <section class="expertise-wrapper section-wrapper gray-bg">
                        <div class="container-fluid">
                            <div id="section1">
                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="section-title">
                                            <h2>Kullanici Biyografisi</h2>
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
                        </div>

                    </section>
                    <!-- .expertise-wrapper -->
                    <section class="section-wrapper section-interest gray-bg">
                        <div class="container-fluid">
                            <div id="section2">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="section-title">
                                            <h2>Ilgi Alanlari</h2>
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

                        </div>
                    </section>
                    <!-- .section-publications -->
                    <section class="section-contact section-wrapper gray-bg">
                        <div class="container-fluid">
                            <div id="section3">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="section-title">
                                            <h2>Kullanici Bilgileri</h2>
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
                                </div>
                                <!--.row-->
                                <br /><br /><br />
                            </div>
                        </div>
                        <!--.container-fluid-->
                    </section>
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
    <div id="abc" onclick="div_hide()">
        <div id="popupContact">
            <!-- Contact Us Form -->
            <div class="form-style-2">
                <div class="form-style-2-heading">Edit your information</div>
                <form action="" method="post" name="form">
                    <img id="close" src="img/closeIcon.png" onclick="div_hide()" style="height:24px;width:24px;">
                    <label for="field1"><span>Facebook</span><input type="text" class="input-field" name="name" value="" /></label>
                    <label for="field2"><span>Twitter</span><input type="text" class="input-field" name="field2" value="" /></label>
                    <label for="field3"><span>Instagram</span><input type="text" class="input-field" name="field3" value="" /></label>
                    <label for="field4"><span>LinkedIn</span><input type="text" class="input-field" name="field4" value="" /></label>



                    <label><span> </span><input type="submit" value="Submit" onclick="check_empty()" /></label>
                </form>
            </div>
        </div>
    </div>
    <!-- #main-wrapper -->
    <!-- jquery -->
    <script src="script/jquery-2.1.4.min.js"></script>

    <!-- Bootstrap -->
    <script src="script/bootstrap.min.js"></script>
    <script src="script/theia-sticky-sidebar.js"></script>
    <script src="script/scripts.js"></script>

</body>
</html>