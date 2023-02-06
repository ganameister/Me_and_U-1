<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QNA</title>
		<!-- Header -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cscenter/contactus.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<script src="<c:url value='/js/cscenter/cscenter.js'/>"></script>
		<script type="text/javascript">
			function actionToggle(){
				var action=document.querySelector('.action');
				action.classList.toggle('active')
			}
			function openchatbot() {
				var chat = window.open("/chatbotForm", "chatbot", "width=400, height=560");
			}
		</script>
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
						<div class="subboardTitle">SERVICE</div>
						<div class="boardTitle">Contact Us</div>
						<div class="underboardTitle"></div>
						<div class="chatBot"><button onClick="openchatbot()" id="chatBot">Chat Bot</button></div>
					</div>

					
					<!-- Table -->
					<div class ="service-board">
						<table class="cstable">
							
							<tr class="TitleLine">
								<th class="boldTitleLine"><img src="<c:url value='/images/free-icon-address-1332577.png'/>"></th>								
								<td class="headTable">Address.</td>
							</tr>
							<tr class="TitleLine">
								<th class="boldTitleLine"></th>								
								<td class="underTable">서울시 강남구 역삼동 ME&U</td>
							</tr>
							<tr class="TitleLine">
								<th class="boldTitleLine"><img src="<c:url value='/images/free-icon-telephone-159832.png'/>"></th>								
								<td class="headTable">Contact Number.</td>
							</tr>
							<tr class="TitleLine">
								<th class="boldTitleLine"></th>								
								<td class="underTable">000 0000 0000</td>
							</tr>						
							<tr class="TitleLine">
								<th class="boldTitleLine"><img src="<c:url value='/images/free-icon-paper-plane-149446.png'/>"></th>								
								<td class="headTable">Email Address.</td>
							</tr>
							<tr class="TitleLine">
								<th class="boldTitleLine"></th>								
								<td class="underTable">ME&U@meandu.com</td>
							</tr>
							<tr class="TitleLine">
								<th class="boldTitleLine"><img src="<c:url value='/images/free-icon-earth-globe-tool-45069.png'/>"></th>								
								<td class="headTable">Website.</td>
							</tr>
							<tr class="TitleLine">
								<th class="boldTitleLine"></th>								
								<td class="underTable">http://meandu.com</td>
							</tr>
							
						</table> 
							 
						
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