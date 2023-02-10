<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>NOTICE 수정</title>
		<!-- Header -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cscenter/cscenterUpdateFormNotice.css' />">	
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- 서머노트 js 및 css 추가 -->
		<script src="<c:url value='/js/summernote/summernote-lite.js' /> "></script>
		<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js' /> "></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/summernote/summernote-lite.css' />">
		<script src="<c:url value='/js/cscenter/cscenter.js'/>"></script>
		<script src="<c:url value='/js/cscenter/qnaNewForm.js'/>"></script>
		<script src="<c:url value='/js/cscenter/admin.js'/>"></script>
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
						<div class="boardTitle">Notice Board</div>
						<div class="underboardTitle">공지사항</div>
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
					<form method="post" action="/cscenter/updatenotice">
						<table class="cstable">
								<tr class="TopLine">
									<td colspan="10" class="boldTopLine">NOTICE 수정</td>
								</tr>														
								<tr class="line">
									<td class="line" width="10px">No.</td><td colspan="9">
										<input type="text"id="noticeNo" name="noticeNo"value="${notice.noticeNo }"readonly></td></tr>
								<tr class="line">
									<td class="Line">Title.</td><td colspan="9">
										<input type="text"id="noticeTitle" class="noticeTitle"name="noticeTitle"value="${notice.noticeTitle }"></td></tr>
								<tr class="line">
									<td class="Line">Write.</td><td colspan="9">
										<textarea id="summernote" class="noticeWrite" name="noticeWrite" value="${notice.noticeWrite }">${notice.noticeWrite } </textarea>								
										</td></tr>
								<tr class="BottomLine">
									<th colspan="6" class="BottomLine"></th>
								</tr>
								<tr aling="center" class="updatenotice">
									<td colspan="5">
									<input type="submit" value="수정"class="noticeSubmit"> 
									<input type="reset" value="취소" id="resetBtn">
									</td></tr>
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