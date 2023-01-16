<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Me&U chatbot</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cscenter/chatbot.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/cscenter/chatbot.js'/>"></script>
		
		
		</head>	
	<body>
		<!-- wrap -->
		<div id="wrap">
			
			<!-- Header -->
			<div id="chatHeader">
			
			<span>Me&U Chatbot</span>
			</div>
		
		
				<!-- chatbot_warp -->
				<div id="chatbot_warp">	
					
					<section class="chatbotForm">
						<!-- 채팅 답변출력 -->
						<div id="chatBox"></div>						
						
					 <form id="chatbot">
							<input type="button" id="recordBtn" value="Mic">
							<input type="button" id="stopBtn" value="Stop">
							<input type="text" id="message" name="message" size="30"placeholder="챗봇'Mu'에게  상담해주세요"> 	
							<input type="submit" value="Enter" id="chatBot-submit" >
						</form> 
						 
											 
					<!-- 	 <br><br>				  
						 <button id="recordBtn" class="img-btnMic">음성인식</button>
						 <button id="stopBtn" class="img-btnStop">Stop</button>	
						 <button id="recordBtn">녹음</button>
			 				  <button id="stopBtn">정지</button>			  
					 -->	 				  
						 				  
						  <div>
						  	<audio id="audio" preload="auto" controls></audio>
						  </div>
			
						
					</section>	
					
				</div>
				<!--// chatbot_warp -->

		</div>
		<!-- //wrap -->	
		
	</body>
</html>