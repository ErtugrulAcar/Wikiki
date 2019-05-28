<%@ page import="com.aydin.demo.teambravowiki.webservice.client.WikiPageClient" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserImageClient" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserProfileClient" %>
<%@ page import="java.util.List" %>
<%@ page import="com.aydin.demo.teambravowiki.model.WikiPageContentPreview" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Home Page</title>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ###################### SCRIPTS START ###########################-->
		<script src="script/jquery-2.1.4.min.js"></script>
		<script src="script/dropdown.js"></script>
		<script src="script/my_js.js"></script>
	<!-- ###################### SCRIPTS END ###########################-->
	<!-- ###################### STYLE START ###########################-->
		<!-- page style start -->
		<link href="css/homePage/style.css" rel="stylesheet">
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
		<link rel="stylesheet" href="/bootstrap.min2.css">
		<script src="script/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/script/bootstrap.min.js"></script>
		<script src="script/bootstrap.min.js"></script>
		<script src="script/theia-sticky-sidebar.js"></script>
		<script src="script/scripts.js"></script>
	<!--#################### BOOTSTRAP END ############################ -->
</head>
<body data-spy="scroll" data-target="#myScrollspy">
	<!-- #################################### NAVBAR START ################################## -->
	<%@ include file="static/navbar.jsp"%>
	<!-- #################################### NAVBAR END #################################### -->
	<!-- #################################### MAIN CONTENT START ############################ -->
    <div id="main-wrapper">
        <!-- Page Preloader -->
        <div id="preloader">
            <div id="status">
                <div class="status-mes"></div>
            </div>
        </div>
        <!--SOLDİV-->
		<div class="columns-block container" style="margin-left: 5%; margin-top: 1%; width: 90%">
			<!-- .left-col-block -->
			<div class="left-col-block blocks">
			    <div class="theiaStickySidebar">
			        <section class="expertise-wrapper section-wrapper gray-bg" style="border-bottom: #555555 dotted 1px;">
						<div class="container-fluid">
							<div id="section1">
								<!-- .row -->
									<div class="row" style="">
										<div class="col-md-12" >
											<!-- ########################## TOP-LEFT COLUMN START ################################## -->	
											<div id="firstDiv" class="section-title shadow">
												<%
													List<WikiPageContentPreview> list = WikiPageClient.getAllWikiPageContentPreviews();
												%>
												<a href="/wikiPage<%=list.get(0).getId()%>" class = "links" title="Click for Details">

													<p class = "plink">
														<img class = "pImg" src="<%= list.get(0).getImage() %>" alt="<%= list.get(0).getHeader() %>" align="left">
														<span class="header1 text-center"><%= list.get(0).getHeader() %></span><br>
														<span class="content1"><%= list.get(0).getFistPofPageContent() %></span>
													</p>
												</a>
											</div>
											<!-- ########################## TOP-LEFT COLUMN START ################################## -->
											<!-- ########################## TOP-RIGHT COLUMN START ################################## -->
											<!-- FIRST START -->
											<%
												int counter=1;
												String divClass="";
												String spanClass="";
												for(int i=0;i<4;i++){
													for(int j=0;j<2;j++){
														if(i%2 ==0 && j%2 ==0){
															divClass = "smallRight shadow";
															spanClass = "header2 shadow";
														}
														else if(i%2 == 0 && j%2 !=0){
															divClass = "smallRight2 shadow";
															spanClass = "header3 shadowWhite";
														}
														else if (i%2 != 0 && j%2 == 0) {
															divClass = "smallRight2 shadow";
															spanClass = "header3 shadowWhite";
														}else{
															divClass = "smallRight shadow";
															spanClass = "header2 shadow";
														}
											%>
											<a href="wikiPage<%=list.get(counter).getId()%>">
												<div class = "<%=divClass%>">
													<img  src="<%= list.get(counter).getImage() %>" class="smallimg1 shadow" alt="<%=list.get(counter).getHeader()%>" />
													<span class="<%=spanClass%>"><%=list.get(counter++).getHeader()%></span>
												</div>
											</a>
											<%
												}}
											%>
											<!-- EIGHTIETH END -->
											<!-- ########################## TOP-LEFT COLUMN END ################################## -->
										</div>
									</div>
								<!-- .row -->
							</div>
						</div>
					</section>               
			        <!-- .expertise-wrapper -->
			        <!-- ########################## BOTTOM START ################################## -->
			        <section class="section-wrapper section-interest gray-bg">
			            <div class="container-fluid">
			                <div id="section2"style="border-bottom: #555555 dotted 1px;" >
			                    <div class="row" style="width: 87%; margin: auto;" >
			                        <div style="width: 100%; float: left;">
										<%
											counter = 9;
											for(int i=0;i<5;i++){
												for(int j=0;j<2;j++){
													if(i%2 ==0 && j%2 ==0){
														divClass = "smallBottomLeft shadow";
														spanClass = "header2 shadow";
													}
													else if(i%2 == 0 && j%2 !=0){
														divClass = "smallBottomRight2 shadow";
														spanClass = "header3 shadowWhite";
													}
													else if (i%2 != 0 && j%2 == 0) {
														divClass = "smallBottomLeft2 shadow";
														spanClass = "header3 shadowWhite";
													}else{
														divClass = "smallBottomRight shadow";
														spanClass = "header2 shadow";
													}
										%>
										<a href="wikiPage<%=list.get(counter).getId()%>">
											<!-- First Left -->
											<div class = "<%=divClass%>">
												<img  src="<%= list.get(counter).getImage() %>" class="smallimg1 shadow" alt="<%=list.get(counter).getHeader()%>" />
												<span class="<%=spanClass%>"><%= list.get(counter++).getHeader() %></span>
											</div>
										</a>
										<%
												}}
										%>


										<!-- Fifth Right End -->
			                       	</div>  
			                        <!-- ########################## BOTTOM END ################################## -->

			                    <!-- .row -->
			                      <div class="row">
			                        <div class="col-md-12">
			                            <div class="content-item">
			                                
			                                
			                            </div>
			                            <div class="content-item">
			                            
			
			                            </div>
			                            <div class="content-item">
			                                
			                            </div>
			                        </div>
			                    </div>
			                    </div>
			                    <!-- .row -->
			
			                </div>
			        </section>
					<!-- .section-publications -->
						<!--  <section class="section-contact section-wrapper gray-bg">
						<div class="container-fluid">
							<div id="section3">
								<div class="row">
									<div class="col-md-12">
										<div class="section-title">
										    
										</div>
									</div>
								</div>-->
								<!--.row-->
								<!--  <div class="row">
									<div class="col-md-12">
									    
									</div>
								</div>-->
								<!--.row-->
								<!--<br /><br /><br />-->
							<!-- </div>
						</div> -->
						<!--.container-fluid-->
					</section>
					<!--.section-contact-->
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
				</div>
				<!-- Sticky -->
			</div>
		<!-- .right-col-block -->
				
		<!--SagDİV-->
				
		<!-- .columns-block -->
		</div>
	</div>
	<!-- #################################### MAIN CONTENT END ############################### -->
</body>
</html>