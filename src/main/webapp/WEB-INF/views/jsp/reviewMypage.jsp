<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>review</title>
		<!-- Header -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/review/reviewPlus.css' />">
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

				
			



<!-- css <link rel="stylesheet" type="text/css" href="<c:url value='/css/review/reviewPlus.css' />"> 도 꼭 추가부탁드려요-->
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
						<img  class="review-img" src="${reMy.reviewImg }" alt="">																					
						<!--  리뷰상세박스-글 -->
						<div class="review_underBox">									
							<!-- 하트하트 -->
							<div class="heartbox">							
							<button class="heartBtn" ><img src='<c:url value="/images/heart.png"/>' id="heartbtnImg" ></button>			
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
							
							
							
							
							
																
								
			<!-- Bottom -->
			<!-- footer -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
			<!-- //footer -->
			<!-- //Bottom -->
		</div>
		<!-- //wrap -->
	</body>
</html>	