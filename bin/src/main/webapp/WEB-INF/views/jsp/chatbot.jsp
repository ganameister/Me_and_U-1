<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>chatbot</title>
		<!-- Header -->
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!--//Head  -->	
		</head>	
	<body>
		<!-- wrap -->
		<div id="wrap">
			<!-- Top -->			
			<c:import url="/WEB-INF/views/layout/top.jsp" /> 
			<!--// Top -->
			
				<!-- chatbot_warp -->
				<div id="chatbot_warp">	
					
					<section class="chatbot">
						
					</section>
					
				</div>
				<!--// chatbot_warp -->

			<!-- Bottom -->
			<!-- footer -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
			<!-- //footer -->
			<!-- //Bottom -->
		</div>
		<!-- //wrap -->
	</body>
</html>