<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FAQ page</title>
		<!-- Header -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cscenter/cscenterDetailVew.css' />">
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
		function faqdelete(){
			var answer = confirm("삭제하시겠습니까?");
			if(answer){
				location.href = "<c:url value='/cscenter/deletefaq/${faq.faqNo}'/>";
			}
		}
		function faqupdate(){
			location.href = "<c:url value='/cscenter/faqUpdateForm/${faq.faqNo}'/>";			
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
						<div class="boardTitle">FaQBoard</div>
						<div class="underboardTitle">자주묻는질문</div>
						<div class="chatBot"><button onClick="openchatbot()" id="chatBot">Chat Bot</button></div>
					</div>

					<!-- 카테고리 -->
					<div class ="service_board_top">
						<div class="service-midTitle">Select Category</div>
						<div class="serviceBtn">
							<button id="qna">QNA</button>
							<button id="faq">FAQ</button>
							<button id="notice">Notice</button>
							<c:if test="${ sessionScope.sid eq 'admin1'}">				   			
							<button id="update" onclick="faqupdate();">FAQ 수정</button>
							<button id="delete" onclick="faqdelete();">FAQ 삭제</button>	 	
							</c:if>
							<c:if test="${sessionScope.sid != faq.memId}">
							<button id="none" ></button>
							<button id="none" ></button>
							</c:if>		
						</div>
					</div>
					<!-- Table -->
					<div class ="service-board">
						<table class="cstable">
							<tr class="TopLine">
								<td colspan="4" class="boldTopLine"></td>
							</tr>
							<tr class="TitleLine">
								<th class="boldTitleLine">No.</th>
								<th class="boldTitleLine"id="boardlist_title">Title.</th>
								<th class="boldTitleLine">Writer.</th>
								<th class="boldTitleLine">Date.</th>
							</tr>
							
							<tr class="line">
								<td class="line">${faq.faqNo }</td>
								<td class="line"id="boardlist_title">${faq.faqTitle }</td>
								<td class="line">${faq.memId }</td>
								<td class="line"><fmt:formatDate value='${faq.faqDate}' pattern="yyyy-MM-dd  hh:mm"/></td>
							</tr>
							<tr class="line" >
								<td id="tdwrite"></td>
								<td colspan="2"class="line"id="boardlist_title">${faq.faqWrite }</td>							
								<td></td>							
							</tr>
							
							<tr class="BottomLine">
								<th colspan="4" class="BottomLine"></th>
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