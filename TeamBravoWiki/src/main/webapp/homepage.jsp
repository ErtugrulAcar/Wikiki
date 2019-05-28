<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.WikiPageClient" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserImageClient" %>
<%@ page import="com.aydin.demo.teambravowiki.model.UserInfo" %>
<%@ page import="com.aydin.demo.teambravowiki.webservice.client.UserProfileClient" %>
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
												<a href="/wikiPage1" class = "links" title="Click for Details">
													<% 	String Image1 = WikiPageClient.getWikiPageContentPreview(1).getImage();
														String Header1 = WikiPageClient.getWikiPageContentPreview(1).getHeader();
														String PageContent = WikiPageClient.getWikiPageContentPreview(1).getFistPofPageContent();
														PageContent = PageContent.substring(1,PageContent.length());
														String Image2 = WikiPageClient.getWikiPageContentPreview(2).getImage();
														String Header2 = WikiPageClient.getWikiPageContentPreview(2).getHeader();
													%>
													<p class = "plink">
														<img class = "pImg" src="<%= Image1 %>" alt="<%= Header1 %>" align="left">
														<span class="header1 text-center"><%= Header1 %></span><br>
														<span class="content1"><%= PageContent %></span>
													</p>
												</a>
											</div>
											<!-- ########################## TOP-LEFT COLUMN START ################################## -->
											<!-- ########################## TOP-RIGHT COLUMN START ################################## -->
											<!-- FIRST START -->
											<a href="wikiPage2">
												<div class = "smallRight shadow">
													<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= Header2 %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- FIRST END -->
											<!-- SECOND START -->
											<a href="wikiPage2">
												<div class = "smallRight2 shadow">						
													<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
													<span class="header3 shadowWhite"><%= Header2 %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- SECOND END -->
											<!-- THIRH START -->
											<a href="wikiPage1">
												<div class = "smallRight2 shadow">
														<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
														<span class="header3 shadowWhite"><%= Header1 %></span>
														<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- THIRD END -->
											<!-- FOURTH START -->
											<a href="wikiPage1">
												<div class = "smallRight shadow">
													<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= Header1 %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- FOURTH END -->
											<!-- FIFTH START -->
											<a href="wikiPage2">
												<div class = "smallRight shadow">
													<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= Header2 %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
													
												</div>
											</a>
											<!-- FIFTH END -->
											<!-- SIXTH START -->
											<a href="wikiPage2">
												<div class = "smallRight2 shadow">
													<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
													<span class="header3 shadowWhite"><%= Header2 %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- SIXTH END -->
											<!-- SEVENTH START -->
											<a href="wikiPage1">
												<div class = "smallRight2 shadow">
													<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
													<span class="header3 shadowWhite"><%= Header1 %></span>
													<!-- <img class = "shodowImg" src="img/anasayfaclick.png" alt=""> -->
												</div>
											</a>
											<!-- SEVENTH END -->
											<!-- EIGHTIETH START -->
											<a href="wikiPage1">
												<div class = "smallRight shadow">
													<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
													<span class="header2 shadow"><%= Header1 %></span>
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
			                        <button type="submit" class="NewWiki" onclick="location.href='/createWiki'">Yeni Wiki Oluştur!</button>
			                    <div class="row" style="width: 87%; margin: auto;" >
			                        <div style="width: 100%; float: left;">
			                        	<a href="wikiPage1">
										<!-- First Left -->
										<div class = "smallBottomLeft shadow">
											<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
											<span class="header2 shadow"><%= Header1 %></span>
										</div>
										</a>
										<!-- First Left End -->
										<!-- First Right -->
										<a href="wikiPage2">
											<div class = "smallBottomRight2 shadow">
												<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadowWhite"><%= Header2 %></span>
											</div>
										</a>
										<!-- First Right End -->
										<!-- Second Left Start -->
										<a href="wikiPage1">
											<div class = "smallBottomLeft2 shadow">
												<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadowWhite"><%= Header1 %></span>
											</div>
										</a>
										<!-- Second Left End -->
										<!-- Second Right Start -->
										<a href="wikiPage2">
											<div class = "smallBottomRight shadow">
												<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= Header2 %></span>
											</div>
										</a>
										<!-- Second	Right End -->
										<!-- Third Left Start -->
										<a href="wikiPage1">
											<div class = "smallBottomLeft shadow">
												<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= Header1 %></span>
											</div>
										</a>
										<!-- Third Left End -->
										<!-- Third Right Start -->
										<a href="wikiPage2">
											<div class = "smallBottomRight2 shadow">
												<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadowWhite"><%= Header2 %></span>
											</div>
										</a>
										<!-- Third Right End -->
										<!-- Fourth Left Start -->
										<a href="wikiPage1">
											<div class = "smallBottomLeft2 shadow">
												<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadowWhite"><%= Header1 %></span>
											</div>
										</a>
										<!-- Fourth Left End -->
										<!-- Fourth Right Start -->
										<a href="wikiPage2">
											<div class = "smallBottomRight shadow">
												<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= Header2 %></span>
											</div>
										</a>
										<!-- Fourth Right End -->
										<!-- Fifth Left Start -->
										<a href="wikiPage1">
											<div class = "smallBottomLeft shadow">
												<img  src="<%= Image1 %>" class="smallimg1 shadow" alt="" />
												<span class="header2 shadow"><%= Header1 %></span>
											</div>
										</a>
										<!-- Fifth Left End -->
										<!-- Fifth Right Start -->
										<a href="wikiPage2">
											<div class = "smallBottomRight2 shadow">
												<img  src="<%= Image2 %>" class="smallimg1 shadow" alt="" />
												<span class="header3 shadowWhite"><%= Header2 %></span>
											</div>
										</a>
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