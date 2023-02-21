<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜한 정기모임</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/myselectregpage.css' />">
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/mypage/myselectregpage.js' />"></script>
</head>
	<body>
		<div id="wrap">
		<c:import url="/WEB-INF/views/layout/top.jsp" /> 
		
		<section class="sec1">
					<nav>
						<ul>
							<li id="myp">마이페이지</li>
							<li id="infoedit">개인정보수정</li>
							<li id="myreiew">내가 쓴 후기</li>
							<li id="selectreg">찜한 모임</li>
						</ul>
					</nav>
		</section>
		
		<section class="sec2">
			
			
				

				<!-- 카테고리 -->
				<div class ="review_board_top">
					<div class="select_categ" align="left">Select Category</div>
					<div class="categoryBtn" id="categ">
						<input type="button" class="cateBtn" id="categ1" value="전체">
						<input type="button" class="cateBtn" id="categ2" value="여행">
						<input type="button" class="cateBtn" id="categ3" value="운동">
						<input type="button" class="cateBtn" id="categ4" value="게임">
						<input type="button" class="cateBtn" id="categ5" value="문화">
						<input type="button" class="cateBtn" id="categ6" value="음악">
						<input type="button" class="cateBtn" id="categ7" value="기타">								
					</div>
				</div>						
				
				<div id="review-box">
																		
					<ol class="image-list grid-view">
					
					
						<li class="review_container" value="운동"> 
							<!-- id 중앙정렬 -->
														
							<div class ="review-Info" >
								<img  class="review-img" src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">																
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">							
									<button class="heartBtn" ><img src='<c:url value="/images/heart.png"/>' id="heartbtnImg" ></button>
									
									<span class="heartNo">1</span>
									</div>
									<div class="review-title"><span class="title">은하수 촬영하기-운동 Category</span></div>			
									<div class="comment"><span>To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.</span></div>
									<div align="right"><p id="reviewDate">-2023.01.14-</p></div>							
								</div>																
							</div>
						</li>
						
													
						<li class="review_container" value="여행"> <!-- 요부분은 나중에 위의 값으로 mapping시켜줌 -->
						
														
							<div class ="review-Info" >
								<img  class="review-img" src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">																
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">
									<button class="heartBtn" onClick="addLike();"><img src="<c:url value='/images/heart.png'/>" id="heartbtnImg" ></button>
									
									<span class="heartNo">1</span>
									</div>
									<div class="review-title"><span class="title">여행 Category</span></div>			
									<div class="comment"><span>To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.</span></div>
									<div align="right"><p id="reviewDate">-2023.01.14-</p></div>							
								</div>																
							</div>
						</li>
						<li class="review_container" value="게임"> <!-- 요부분은 나중에 위의 값으로 mapping시켜줌 -->
													
							<div class ="review-Info" >
								<img  class="review-img" src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">																
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">
									<button class="heartBtn" onClick="addLike();"><img src="<c:url value='/images/heart.png'/>" id="heartbtnImg" ></button>
									
									<span class="heartNo">1</span>
									</div>
									<div class="review-title"><span class="title">게임 Category</span></div>			
									<div class="comment"><span>To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.</span></div>
									<div align="right"><p id="reviewDate">-2023.01.14-</p></div>							
								</div>																
							</div>
						</li>
						<li class="review_container" value="여행"> <!-- 요부분은 나중에 위의 값으로 mapping시켜줌 -->
												
							<div class ="review-Info" >
								<img  class="review-img" src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">																
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">
									<button class="heartBtn" onClick="addLike();"><img src="<c:url value='/images/heart.png'/>" id="heartbtnImg" ></button>
									
									<span class="heartNo">1</span>
									</div>
									<div class="review-title"><span class="title">여행2 Category</span></div>			
									<div class="comment"><span>To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.</span></div>
									<div align="right"><p id="reviewDate">-2023.01.14-</p></div>							
								</div>																
							</div>
						</li>
						<li class="review_container" value="게임"> <!-- 요부분은 나중에 위의 값으로 mapping시켜줌 -->
													
							<div class ="review-Info" >
								<img  class="review-img" src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">																
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">
									<button class="heartBtn" onClick="addLike();"><img src="<c:url value='/images/heart.png'/>" id="heartbtnImg" ></button>
									
									<span class="heartNo">1</span>
									</div>
									<div class="review-title"><span class="title">게임2 Category</span></div>			
									<div class="comment"><span>To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.</span></div>
									<div align="right"><p id="reviewDate">-2023.01.14-</p></div>							
								</div>																
							</div>
						</li>
						<li class="review_container" value="여행"> <!-- 요부분은 나중에 위의 값으로 mapping시켜줌 -->
						
														
							<div class ="review-Info" >
								<img  class="review-img" src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">																
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">
									<button class="heartBtn" onClick="addLike();"><img src="<c:url value='/images/heart.png'/>" id="heartbtnImg" ></button>
									
									<span class="heartNo">1</span>
									</div>
									<div class="review-title"><span class="title">여행 Category</span></div>			
									<div class="comment"><span>To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.</span></div>
									<div align="right"><p id="reviewDate">-2023.01.14-</p></div>							
								</div>																
							</div>
						</li>
						<li class="review_container" value="여행"> <!-- 요부분은 나중에 위의 값으로 mapping시켜줌 -->
						
														
							<div class ="review-Info" >
								<img  class="review-img" src="https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">																
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">
									<button class="heartBtn" onClick="addLike();"><img src="<c:url value='/images/heart.png'/>" id="heartbtnImg" ></button>
									
									<span class="heartNo">1</span>
									</div>
									<div class="review-title"><span class="title">여행 Category</span></div>			
									<div class="comment"><span>To climb steep hills requires slow pace at first.
									To climb steep hills requires slow pace at first.</span></div>
									<div align="right"><p id="reviewDate">-2023.01.14-</p></div>							
								</div>																
							</div>
						</li>
						<!--삭제  -->																				
					</ol>												
					</div>				
			
				
				
					
			</section><!-- sec2 --> 
			
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>