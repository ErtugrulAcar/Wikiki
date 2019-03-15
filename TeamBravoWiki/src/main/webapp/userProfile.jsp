<%@ page import="com.aydin.demo.teambravowiki.model.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
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
                    <%
                    UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");

                    %>

                    <div class="content">
                        <h1>
                            <%= userInfo.getName() + " " + userInfo.getLastname()%>

                        </h1>
                        <span class="lead">
                            <!-- AUTHORITY IS HERE  -->
                            READER
                        </span>

                        <ul class="social-icon">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li>
                                <a>
                                    <input type='image' src='img/editIcon.png' style="height:26px; width:26px;
                            margin-bottom:-10px;padding-left:1px; padding-bottom:2px;" value='' onclick="div_show()" />
                                </a>
                            </li>

                        </ul>
                        <nav id="myScrollspy">
                            <ul id="ulbackground" class="nav nav-pills nav-stacked">
                                <li><a href="#section1">PROFILE</a></li>
                                <li><a href="#section2">INTEREST</a></li>
                                <li><a href="#section3">CONTACT</a></li>
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
                                            <h2>PROFILE</h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- .row -->

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="expertise-item">
                                            <h2>WELCOME <!-- NAME IS HERE  -->NAME SURNAME</h2>
                                            <p>
                                                You can see about your personal information is here.
                                            </p>
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
                                            <h2>Interest</h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- .row -->

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="content-item">
                                            <h3>Books</h3>

                                            <p>
                                                Proactively extend market-driven e-tailers rather than enterprise-wide supply chains.
                                                Collaboratively embrace 24/7 processes rather than adaptive users. Seamlessly monetize
                                                alternative e-business.
                                            </p>
                                        </div>
                                        <div class="content-item">
                                            <h3>Sports</h3>

                                            <p>
                                                Assertively grow optimal methodologies after viral technologies. Appropriately develop
                                                frictionless technology for adaptive functionalities. Competently iterate functionalized
                                                networks for best-of-breed services.
                                            </p>

                                        </div>
                                        <div class="content-item">
                                            <h3>Art</h3>

                                            <p>
                                                Dramatically utilize superior infomediaries whereas functional core competencies.
                                                Enthusiastically repurpose synergistic vortals for customer directed portals. Interactively
                                                pursue sustainable leadership via.
                                            </p>
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
                                            <h2>Contact</h2>
                                        </div>
                                    </div>
                                </div>
                                <!--.row-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <address>
                                            <strong>Address</strong><br>
                                            Emek Mahallesi, Biskek Cd. No:1, 06490<br />
                                            Cankaya/Yenimahalle/Ankara

                                        </address>
                                        <address>
                                            <strong>Phone Number</strong><br>
                                            (0312) 525 55 55
                                        </address>

                                        <address>
                                            <strong>Mobile Number</strong><br>
                                            (0532) 525 55 55
                                        </address>


                                        <address>
                                            <strong>Email</strong><br>
                                            <a href="mailto:#">ankara@info.com</a>
                                        </address>
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
    <div id="abc">
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