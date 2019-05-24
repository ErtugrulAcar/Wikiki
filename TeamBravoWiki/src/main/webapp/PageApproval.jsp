<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- ###################### STYLE START ###########################-->
    <!-- page style start -->
    <link href="css/errorPage/style.css" rel="stylesheet">
    <!-- page style end -->
    <!-- font-awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- web-fonts -->
    <link href="css/fontcss.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/elements.css" rel="stylesheet">
    <link href="css/dropdown.css" rel="stylesheet">
    <!-- ###################### STYLE END ###########################-->
    <!-- ###################### SCRIPTS START ###########################-->
    <script src="script/jquery-2.1.4.min.js"></script>
    <script src="script/dropdown.js"></script>
    <script src="script/my_js.js"></script>
    <!-- ###################### SCRIPTS END ###########################-->
    <!-- ###################### FAVICON START ########################## -->
    <link href="img/favicon.png" rel=icon>
    <!-- ###################### FAVICON END ########################## -->
    <!--#################### BOOTSTRAP START ############################ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/bootstrap.min2.css">
    <script src="script/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/script/bootstrap.min.js"></script>
    <script src="script/bootstrap.min.js"></script>
    <script src="script/theia-sticky-sidebar.js"></script>
    <script src="script/scripts.js"></script>
    <!--#################### BOOTSTRAP END ############################ -->
    <title>Page Waiting For Approval!</title>
</head>
<body>
<!-- #################################### NAVBAR START ################################## -->
<%@ include file="static/navbar.jsp"%>
<!-- #################################### NAVBAR END #################################### -->
<div class="h-100 w-100 d-inline-block position-absolute" id="error">
    <div class = "text-center" style = "margin-top:10%;">
        <img src = "img/PageApproval.png" style = "width:50%;">
    </div>
    <div class="text-center">
        <a href="/home" id="link">Click Here For Homepage</a>
    </div>
</div>
<!-- ############################## FOOTER START ############################### -->
<footer class="footer">
    <div class="copyright-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="copytext">
                        &copy; GROUP BRAVO. All rights reserved | Design By: GROUP BRAVO MEMBERS
                    </div>
                </div>
            </div>
            <!--.row-->
        </div>
        <!-- .container-fluid -->
    </div>
    <!-- .copyright-section -->
</footer>
<!-- #################################### FOOTER END ##################################### -->
</body>
</html>