<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>admin</title>
		<!-- Header -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/cscenter/admin.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp" />
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
				
				
				<h1>관리자 페이지</h1>
				<br>	
					<h3>FAQ</h3>
					<div id="adminBtn">
					<button id="faqInput">FAQ 등록</button><br><br>
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
							<c:forEach var="faq" items="${faqList}">
							<tr class="line">
								<td class="line"><a href="<c:url value='/cscenter/detailViewFaq/${faq.faqNo }'/>" >${faq.faqNo }</td>
								<td class="line"id="boardlist_title"><a href="<c:url value='/cscenter/detailViewFaq/${faq.faqNo }'/>" >${faq.faqTitle }</td>
								<td class="line">${faq.memId}</td>
								<td class="line"><fmt:formatDate value='${faq.faqDate}' pattern="yyyy-MM-dd  hh:mm"/></td>
							</tr>
							 </c:forEach>
							
							<tr class="BottomLine">
								<th colspan="4" class="BottomLine"></th>
							</tr>
						</table>
					</div><br>
					<!-- Table -->
					
					<h3>NOTICE</h3>
					<div id="adminBtn">
					<button id="noticeInput" >NOTICE 등록</button><br><br>
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
							<c:forEach var="notice" items="${noticeList}">
							<tr class="line" id="trline">								
								<td class="line"><a href="<c:url value='/cscenter/detailViewNotice/${notice.noticeNo }'/>" >${notice.noticeNo }</a></td>
								<td class="line"id="boardlist_title"><a href="<c:url value='/cscenter/detailViewNotice/${notice.noticeNo }'/>" >${notice.noticeTitle }</a></td>
								<td class="line">${notice.memId}</td>
								<td class="line"><fmt:formatDate value='${notice.noticeDate}' pattern="yyyy-MM-dd  hh:mm"/></td>
							</tr>
							 </c:forEach>
							
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