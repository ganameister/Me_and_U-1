<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>review</title>
		<!-- Header -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/review/review.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<script src="<c:url value='/js/review/review.js' />"></script> 	
		<!--//Header  -->
	</head>	
	<body>
		<!-- wrap -->
		<div id="wrap">
			<!-- Top -->			
			<c:import url="/WEB-INF/views/layout/top.jsp" /> 
			<!--// Top -->
			
			<!-- main -->
			<div id="main">
				<!-- review_warp -->
			<div id="review_warp">	
				
				<section class="reviewBox">
					<!-- 제목 -->
					<div class="review-top">
						<div class="subboardTitle">BUCKETLIST</div>
						<div class="boardTitle">Review</div>
						<div class="underboardTitle"></div>
						<div class="newPost"><button id="newPost">New Post</button></div>
					</div>

					<!-- 카테고리 -->
					<div class ="review_board_top">
						<div class="review-midTitle">Select Category</div>
						<div class="CategoryBtn" id="Cate">
							<button id="travel">여행</button>
							<button id="exerciese">운동</button>
							<button id="food">음식</button>
							<button id="show">공연</button>
							<button id="hobby">취미</button>
							<input type="button" class="CateBtn" id="Cate1" value="전체">
							<input type="button" class="CateBtn" id="Cate2" value="여행">
							<input type="button" class="CateBtn" id="Cate3" value="운동">
							<input type="button" class="CateBtn" id="Cate4" value="음식">
							<input type="button" class="CateBtn" id="Cate5" value="공연">
							<input type="button" class="CateBtn" id="Cate6" value="취미">
							<input type="button" class="CateBtn" id="Cate7" value="기타">	
							
					</div>
				</div>
					
				<!-- 	<div class="searchBox">						
						<input type="search" placeholder="Search for review">
						<button id="search">검색</button>															
					</div> -->
					
					
					<ol class="image-list grid-view">
						<li>
							<div class ="review-Info" >
								<img src="https://images.unsplash.com/photo-1673247248053-45d9398b5853?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
								<div class="review-title">
									<span class="title">융프라우 let it go~</span>
									
									<span class="heartbtn"><img src="<c:url value='/image/free-icon-love-7476962.png'/>" id="heartbtn"></span>						
								</div>		
								<div class="profile">									
									<div class="memInfobox">
										<div class="memImg"><img src="<c:url value='images/user.png'/>" id="memImg"></div>			
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
						
						
						<!--삭제  -->								
					</ol>						
				</section>	
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