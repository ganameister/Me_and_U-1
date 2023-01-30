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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/review/review2.css' />">
		
		<script src="<c:url value='/js/review/review.js' />"></script> 	
		<!--//Header  -->
	</head>	
	<body>
																		
					<ol class="image-list grid-view" >
					
			 			<c:forEach var="rev" items="${reviewList}" varStatus = "status"> 								
						<li class="review_container" value="${rev.reviewCtg}" > 							
							<div class ="review-Info" >
								<!--  리뷰이미지  -->
																								
									<img  class="review-img" src="<c:url value='/images/${rev.reviewImg }'/>" >
								<!--  리뷰상세박스-글 -->
								<div class="review_underBox">									
									<!-- 하트하트 -->
									<div class="heartbox">							
									<button class="heartBtn" id="heartBtn" ><img src='<c:url value="/images/heart.png"/>' class="heartbtnImg" ></button>									
									<span class="heartNo" >${rev.reviewHart }</span>
									 <c:if test="${sessionScope.sid == rev.memId}">
                                        <button id="deleteReviewBTN" class="deleteReviewBTN" value="${rev.reviewNo}">삭제</button>
                                        <a href="<c:url value='/jsp/review/reviewUpdateForm/${rev.reviewNo}'/>">
                                        <button id="updateReviewBTN" class="updateReviewBTN" value="${rev.reviewNo}" >수정</button></a>
                                        <%-- <input type="button" id="updateReviewBTN" data-reviewListNo= "${rev.reviewNo}" value="수정"> --%>
                                    </c:if>									 
									</div>
									<div class="review-title"><span class="title">${rev.reviewTitle }</span></div>			
									<div class="comment"><span>${rev.reviewWrite }</span></div>
									<div align="right">-<span id="reviewmemId">${rev.memId }</span>-<p id="reviewDate">
										<fmt:formatDate value='${rev.reviewDate }' pattern="yyyy-MM-dd  hh:mm"/></p></div>																
								</div>																
							</div>
						</li>						
					 	</c:forEach> 
																									
					</ol>												
			
	</body>
</html>