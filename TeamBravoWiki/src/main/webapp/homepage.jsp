<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.WikiPageClient" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserImageClient" %>
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
		<link href="css/style.css" rel="stylesheet">
		<link href="css/elements.css" rel="stylesheet">
		<link href="css/dropdown.css" rel="stylesheet">
		<!-- font-awesome -->
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<!-- web-fonts -->
		<link href="css/fontcss.css" rel="stylesheet">
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
												<a href="/wikiPage1" class = "links" title="Click for Details">
													<p class = "plink">
														<img class = "pImg" src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" alt="<%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %>" align="left">
														<span class="header1 text-center"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span><br>
														<% System.out.println(WikiPageClient.getWikiPageContentPreview(1).getFistPofPageContent()); %>
														<span class="content1"><%= WikiPageClient.getWikiPageContentPreview(1).getFistPofPageContent() %></span>
													</p>
												</a>
											</div>
											<!-- ########################## TOP-LEFT COLUMN START ################################## -->
											<!-- ########################## TOP-RIGHT COLUMN START ################################## -->
											<!-- FIRST START -->
											<a href="wikiPage2">
												<div class = "smallRight shadow">
													<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- FIRST END -->
											<!-- SECOND START -->
											<a href="wikiPage2">
												<div class = "smallRight2 shadow">						
													<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
													<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- SECOND END -->
											<!-- THIRH START -->
											<a href="wikiPage1">
												<div class = "smallRight2 shadow">
														<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
														<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
														<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- THIRD END -->
											<!-- FOURTH START -->
											<a href="wikiPage1">
												<div class = "smallRight shadow">
													<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- FOURTH END -->
											<!-- FIFTH START -->
											<a href="wikiPage2">
												<div class = "smallRight shadow">
													<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
													
												</div>
											</a>
											<!-- FIFTH END -->
											<!-- SIXTH START -->
											<a href="wikiPage2">
												<div class = "smallRight2 shadow">
													<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
													<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- SIXTH END -->
											<!-- SEVENTH START -->
											<a href="wikiPage1">
												<div class = "smallRight2 shadow">
													<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
													<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- SEVENTH END -->
											<!-- EIGHTIETH START -->
											<a href="wikiPage1">
												<div class = "smallRight shadow">
													<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
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
			                        <div style="width: 48%; float: left;">
			                        	<a href="wikiPage1">
			                        	<!-- ########################## BOTTOM-LEFT START ################################## -->
											<div class = "smallBottomLeft shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage1">
											<div class = "smallBottomLeft2 shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage1">
											<div class = "smallBottomLeft shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage1">
											<div class = "smallBottomLeft2 shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage1">
											<div class = "smallBottomLeft shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage1">
											<div class = "smallBottomLeft2 shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(1).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(1).getHeader() %></span>
											</div>
										</a>
			                       	</div>  
			                        <!-- ########################## BOTTOM-LEFT END ################################## -->
			                        <!-- ########################## BOTTOM-RIGH START ################################## -->	
			                        <div class="" style="width:48%; float: right;">
										<a href="wikiPage2">
											<div class = "smallBottomRight2 shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage2">
											<div class = "smallBottomRight shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage2">
											<div class = "smallBottomRight2 shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage2">
											<div class = "smallBottomRight shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage2">
											<div class = "smallBottomRight2 shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage() %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
											</div>
										</a>
										<a href="wikiPage2">
											<div class = "smallBottomRight shadow">
												<img  src="<%= WikiPageClient.getWikiPageContentPreview(2).getImage	() %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= WikiPageClient.getWikiPageContentPreview(2).getHeader() %></span>
											</div>
										</a>  
			                        </div> 
			                        <!-- ########################## BOTTOM-RIGHT END ################################## -->
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