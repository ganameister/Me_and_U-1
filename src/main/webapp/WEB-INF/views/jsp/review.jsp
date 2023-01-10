<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>review</title>
		<!-- Top -->
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/review.css' />">
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<script src="<c:url value='/js/review.js' />"></script> 	
		<!--//Top  -->
	</head>	
	<body>
		<!-- wrap -->
		<div id="wrap">
			<!-- Header -->			
			<c:import url="/WEB-INF/views/layout/head.jsp" /> 
			<!--// Header -->
			
			<!-- main -->
			<div id="main">
				<section class="reviewBox">
					
					<div class="searchBox">						
						<input type="search" placeholder="Search for review">
						<button id="search">검색</button>															
					</div>
					<ol class="image-list grid-view">
						<li>
							<div class ="review-Info">
								<img src="https://images.unsplash.com/photo-1673247248053-45d9398b5853?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
								<div class="review-title">
									<span class="title">융프라우 let it go~</span>
									
									<span class="heartbtn"><img src="<c:url value='/image/free-icon-love-7476962.png'/>" id="heartbtn"></span>						
								</div>		
								<div class="profile">									
									<div class="memInfobox">
										<div class="memImg"><img src="<c:url value='image/user.png'/>" id="memImg"></div>			
										<div class="memInfo"><p id="reviewmemId">memId</p><p id="reviewDate">reviewDate</p></div>
										<span class="heartCnt">1</span>
									</div>
																
								</div>								
							</div>
						</li>							
						<!--  삭제-->
						<li>
						<div>
							<img src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
							<div>
							<p>은하수 촬영하기</p>
							<p>Photo by <a href="https://unsplash.com/@wilstewart3" target="_blank">Wil Stewart</a></p>
							</div>
						</div>
						</li>
						<li>
						<div>
							<img src="https://images.unsplash.com/photo-1486299267070-83823f5448dd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80" alt="">
							<div>
							<p>해리포터와 ~윙가디움 노 레비오사~</p>
							<p>Photo by <a href="https://unsplash.com/@ignitedit" target="_blank">Mark Basarab</a></p>
							</div>
						</div>
						</li>
						<li>
						<div>
							<img src="https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
							<div>
							<p>10kg 감량 성공!</p>
							<p>Photo by <a href="https://unsplash.com/@phiestyphung" target="_blank">Amanda Phung</a></p>
							</div>
						</div>
						</li>
						
						<!--  -->								
					</ol>						
				</section>	
				<div>
					
				</div>			
			</div>
			<!--// main -->

			<!-- Bottom -->
			<!-- footer -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
			<!-- //footer -->
			<!-- //Bottom -->
		</div>
		<!-- //wrap -->
	</body>
</html>