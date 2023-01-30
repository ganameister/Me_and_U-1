<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QNA 수정</title>
		<!-- Header -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cscenter/cscenterUpdateForm.css' />">	
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- 서머노트 js 및 css 추가 -->
		<script src="<c:url value='/js/summernote/summernote-lite.js' /> "></script>
		<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js' /> "></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/summernote/summernote-lite.css' />">
		<script src="<c:url value='/js/cscenter/cscenter.js'/>"></script>
		<script src="<c:url value='/js/cscenter/qnaNewForm.js'/>"></script>
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
						<div class="boardTitle">QnABoard</div>
						<div class="underboardTitle">질문답변</div>
						<div class="chatBot"><button onClick="openchatbot()" id="chatBot">Chat Bot</button></div>
					</div>

					<!-- 카테고리 -->
					<div class ="service_board_top">
						<div class="service-midTitle">Select Category</div>
						<div class="serviceBtn">
							<button id="qna">QNA</button>
							<button id="faq">FAQ</button>
							<button id="notice">Notice</button>
						</div>
					</div>
					<!-- Table -->
					<div class ="service-board">
					<form method="post" action="/cscenter/updateQna">
						<table class="cstable">
								<tr class="TopLine">
									<td colspan="10" class="boldTopLine">QNA 수정</td>
								</tr>														
								<tr class="line">
									<td class="line" width="10px">No.</td><td colspan="9">
										<input type="text"id="qnaNo" name="qnaNo"value="${qna.qnaNo }"readonly></td></tr>
								<tr class="line">
									<td class="Line">Title.</td><td colspan="9">
										<input type="text"id="qnaTitle" class="qnaTitle"name="qnaTitle"value="${qna.qnaTitle }"></td></tr>
								<tr class="line">
									<td class="Line">Write.</td><td colspan="9">
										<textarea id="summernote" class="qnaWrite" name="qnaWrite" value="${qna.qnaWrite }">${qna.qnaWrite } </textarea>								
										</td></tr>
								<tr class="BottomLine">
									<th colspan="6" class="BottomLine"></th>
								</tr>
								<tr aling="center" class="updateQna">
									<td colspan="5">
									<input type="submit" value="수정"class="qnaSubmit"> 
									<input type="reset" value="취소">
									</td></tr>
							</table>
						</form>
					</div>
					<!-- Table -->
				</section>
				
				<!-- board button Box -->
				<div class="action" onclick="actionToggle();">
					<span id="btnPl"><img src="<c:url value='/images/free-icon-add-circularss.png'/>" ></span>
					<ul>
						<li id="btn1" type="button" onClick="openchatbot()"><img src="<c:url value='/images/free-icon-chatbot-2068998.png'/>">Chat Bot</li>
						<li id="btn2" type="button"><img src="<c:url value='/images/question.png'/>">QNA</li>
						<li id="btn3" type="button"><img src="<c:url value='/images/faq.png'/>">FAQ</li>
						<li id="btn4" type="button"><img src="<c:url value='/images/free-icon-notification-bell-7322162.png'/>">Notice</li>
						<li id="btn5" type="button"><img src="<c:url value='/images/free-icon-paper-plane-149446.png'/>">Contact us</li>
					</ul>
				</div>			
				<!--// button -->
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