<%--
  Created by IntelliJ IDEA.
  User: Ertugrul
  Date: 24.05.2019
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="wikiPage.jsp"%>
<link href="css/pendingPage/style.css" rel="stylesheet">
<form method="post" action="/approveCase<%=request.getAttribute("caseId")%>">
    <button id="approve" type="submit"><img src="img/accept.png" width="40px"></button>
</form>
<form method="post" action="/rejectCase<%=request.getAttribute("caseId")%>">
    <button id="reject" type="submit"><img src="img/reject.png" width="40px"></button>
</form>
