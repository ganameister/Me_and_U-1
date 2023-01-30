<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 후기</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/myreviewpage.css' />">
<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/mypage/myreviewpage.js' />"></script>
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
							<li id="selectreg">찜한 정기모임</li>
						</ul>
					</nav>
		</section>
		
		<section class="sec2">
					 
<!-- 여기부터 붙여넣기-->
<!-- review_warp -->
<div id="review_warp">	
	<!-- 최신순 리뷰 리스트  -->			
	<div class="reviewBox">																				
		<ol class="image-list grid-view">		 					
	 		<c:forEach var="reMy" items="${reviewMy}"> 		
				<li class="review_container" value="${reMy.reviewCtg}"> 							
					<div class ="review-Info" >
						<!--  리뷰이미지  -->
						<img  class="review-img" src="<c:url value='/images/${reMy.reviewImg }'/>" >
																											
						<!--  리뷰상세박스-글 -->
						<div class="review_underBox">									
							<!-- 하트하트 -->
							<div class="heartbox">							
							<button class="heartBtn" id="heartBtn" ><img src='<c:url value="/images/heart.png"/>' class="heartbtnImg" ></button>		
							<span class="heartNo">${reMy.reviewHart }</span>
							</div>
							<div class="review-title"><span class="title">${revs.reviewTitle }</span></div>			
							<div class="comment"><span>${reMy.reviewWrite }</span></div>
							<div align="right">-<span id="reviewmemId">${reMy.memId }</span>-<p id="reviewDate">
								<fmt:formatDate value='${reMy.reviewDate }' pattern="yyyy-MM-dd  hh:mm"/></p></div>							
						</div>																
					</div>
				</li>				
			 </c:forEach> 
			 
		</ol>												
	</div>
	<!-- /div reviewBox -->
</div>
<!-- /review_warp -->																							
<!-- 여기까지 -->					
									
															
								
			
				
				
					
			</section><!-- sec2 --> 
			
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>