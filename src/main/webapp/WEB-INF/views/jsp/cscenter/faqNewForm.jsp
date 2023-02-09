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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cscenter/cscenterinsert.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- 서머노트 js 및 css 추가 -->
		<script src="<c:url value='/js/summernote/summernote-lite.js' /> "></script>
		<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js' /> "></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/summernote/summernote-lite.css' />">
		<script src="<c:url value='/js/cscenter/cscenter.js'/>"></script>
		<script src="<c:url value='/js/cscenter/faqNewForm.js'/>"></script>
		
		<!--//Head  -->	
		</head>	
	<body>
		<!-- wrap -->
		<div id="wrap">
			<!-- Top -->			
			<c:import url="/WEB-INF/views/layout/top.jsp" /> 
			<!--// Top -->
			
			<!-- service_warp -->
			<div id="service_warp">	
				
				<section class="service">
				
					<!-- 제목 -->
					<div class="service-top">
						
						<div class="boardTitle">FAQBoard</div>
						
					</div>

					<!-- 카테고리 -->
					
					<!-- Table -->
					<div class ="service-board">
						<form method="post" action="<c:url value='jsp/cscenter/faqNewForm'/>">
							<table class="cstable">
								<tr class="TopLine">
									<td colspan="10" class="boldTopLine">FAQ 등록</td>
								</tr>														
								<tr class="line" >
									<td class="Line"width="10px">Title.</td><td colspan="9">
										<input type="text"id="faqTitle" name="faqTitle" class="faqTitle"></td></tr>
								<tr class="line">
									<td class="Line">Write.</td><td colspan="9" >
										<textarea id="summernote" name="faqWrite"class="faqWrite"> </textarea>
										</td></tr>
								<tr class="BottomLine">
									<th colspan="6" class="BottomLine"></th>
								</tr>
								<tr aling="center" class="insertfaq">
									<td colspan="5">
									<input type="submit" value="등록" class="faqSubmit"> 
									<input type="reset" value="취소">
									</td>
								</tr>
							</table>
						</form>
					</div>
					<!-- Table -->
				</section>
			</div>
			<!--// service_warp -->

			<!-- Bottom -->
			<!-- footer -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
			<!-- //footer -->
			<!-- //Bottom -->
		</div>
		<!-- //wrap -->
	</body>
</html>