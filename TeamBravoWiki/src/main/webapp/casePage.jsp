<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserProfileClient" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <!--#################### Table Events START ############################ -->
    <script src="script/casePage/TableEvents.js"></script>
    <script src="script/casePage/TableLinkScript.js"></script>
    <!--#################### Table Events END ############################ -->
</head>
<body data-spy="scroll" data-target="#myScrollspy">
</body>
<!-- #################################### NAVBAR START ################################## -->
<%@ include file="static/navbar.jsp" %>
<!-- #################################### NAVBAR END #################################### -->
<div id="main-wrapper">
    <!-- Page Preloader -->
    <div id="preloader">
        <div id="status">
            <div class="status-mes"></div>
        </div>
    </div>
    <div id="tableDiv">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col" class="text-center">Case Id</th>
                <th scope="col" class="text-center">Tarih</th>
                <th scope="col" class="text-center">Wiki Sahibi</th>
                <th scope="col" class="text-center">Yönetici</th>
                <th scope="col" class="text-center">Wiki</th>
            </tr>
            </thead>
            <tbody>
            <%int counter = 0;%>
            <c:forEach var="wikiCase" items="${cases}">
                <tr onclick="DoNav('/pendingWikiPage${wikiCase.getWikiPage()}')" style="cursor: pointer" class="wikiCases" id="<%=counter++%>">
                    <td class="text-center">${wikiCase.id}</td>
                    <td class="text-center">${wikiCase.date}</td>
                    <td class="text-center">${wikiCase.getCaseOwnerName()}</td>
                    <td class="text-center">${wikiCase.getSuperriorName()}</td>
                    <td class="text-center">${wikiCase.getWikiName()}</td>
                </tr>
            </c:forEach>
            <%if(counter == 0){%>
                <tr>
                    <td colspan="5">
                        You don't have any cases.
                    </td>
                </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</div>

</html>