<%--
  Created by IntelliJ IDEA.
  User: Ertugrul
  Date: 24.05.2019
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="wikiPage.jsp"%>
<link href="css/pendingPage/style.css" rel="stylesheet">
<button id="approve" type="submit" formaction="/approveCase<%=request.getAttribute("caseId")%>" formmethod="post"><img src="img/accept.png" width="40px"></button>
<button id="reject" type="submit" formaction="/rejectCase<%=request.getAttribute("caseId")%>" formmethod="post"><img src="img/reject.png" width="40px"></button>