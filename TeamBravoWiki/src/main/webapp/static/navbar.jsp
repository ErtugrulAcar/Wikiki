<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserImageClient" %>
<%@ page import="com.aydin.demo.teambravowiki.model.UserInfo" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserProfileClient" %>
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
							UserInfo userInfo = UserProfileClient.getUserInfo(loggedUser.getUserid());
							int userDegree = userInfo.getUserDegree();
							%>

					<img id="loginsmallimg" src="<%=userImage%>" onclick="myFunction()" class="dropbtn1">
					<div id="myDropdown" class="dropdown-content">
						<div id="dropleft"><img id="imgDrop" src="<%=userImage%>"></div>
						<div id="dropright">
							<ul class="ulDrop">
								<li class="liName"><%=loggedUser.getUsername() + " " + loggedUser.getUserlastname()%></li>
								<li class="liMail"><%=loggedUser.getEmail()%></li>
								<li class="LiAccount"><button type="submit" class="DropBtn1" onclick="location.href='/userProfile<%=loggedUser.getUserid()%>'">My Profile</button></li>
								<%if(userDegree>3){%><li class="LiAccount"><button type="submit" class="DropBtn1" onclick="location.href='/cases'">Cases</button></li><%}else{}%>
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
