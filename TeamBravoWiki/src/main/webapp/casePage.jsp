<%@ page import="com.aydin.demo.teambravowiki.webservice.client.WikiPageClient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Case Page</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ###################### SCRIPTS START ###########################-->
    <script src="script/jquery-2.1.4.min.js"></script>
    <script src="script/dropdown.js"></script>
    <script src="script/my_js.js"></script>
    <!-- ###################### SCRIPTS END ###########################-->
    <!-- ###################### STYLE START ###########################-->
    <!-- page style start -->
    <link href="css/casePage/style.css" rel="stylesheet">
    <!-- page style end -->
    <!-- font-awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- web-fonts -->
    <link href="css/fontcss.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/elements.css" rel="stylesheet">
    <link href="css/dropdown.css" rel="stylesheet">
    <!-- ###################### STYLE END ###########################-->
    <!-- ###################### FAVICON START ########################## -->
    <link href="img/favicon.png" rel=icon>
    <!-- ###################### FAVICON END ########################## -->
    <!--#################### BOOTSTRAP START ############################ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min2.css">
    <script src="script/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/script/bootstrap.min.js"></script>
    <script src="script/bootstrap.min.js"></script>
    <script src="script/theia-sticky-sidebar.js"></script>
    <script src="script/scripts.js"></script>
    <!--#################### BOOTSTRAP END ############################ -->
</head>
<body data-spy="scroll" data-target="#myScrollspy">
</body>
<!-- #################################### NAVBAR START ################################## -->
<%@ include file="static/navbar.jsp"%>
<!-- #################################### NAVBAR END #################################### -->
<div id="main-wrapper">
    <!-- Page Preloader -->
    <div id="preloader">
        <div id="status">
            <div class="status-mes"></div>
        </div>
    </div>
    <div id = "tableDiv">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col" class = "text-center">Title</th>
                <th scope="col" class = "text-center">Adding</th>
                <th scope="col" class = "text-center">Date</th>
                <th scope="col" class = "text-center">Preview</th>
                <th scope="col" class = "text-center">Accept</th>
            </tr>
            </thead>
            <tbody>
            <%  int count = 1;
                for (int i = 0;i<50;i++){%>
            <tr>
                <th scope="row"><%=count++%></th>
                <td class = "text-center">Einstein</td>
                <td class = "text-center">Enes</td>
                <td class = "text-center">01.01.2019</td>
                <td class = "text-center"><a href="#"><img src="img/goto.png" height="20px"></a></td>
                <td class = "text-center"><a href="#"><img src="img/accept.png" height="20px"></a></td>
            </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</div>
</html>