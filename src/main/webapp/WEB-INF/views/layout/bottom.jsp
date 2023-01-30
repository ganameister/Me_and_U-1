<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<script type="text/javascript">
		function actionToggle(){
			var action=document.querySelector('.action');
			action.classList.toggle('active')
		}
		function openchatbot() {
			var chat = window.open("/chatbotForm", "chatbot", "width=400, height=560");
		}
	</script>
	<div class="footer">
		<img src="<c:url value='/images/me_and_u2.png'/>" id="btmLogo" width="100" height="40">
		<ul id="bottomMenu">
			<li><a href="#">회사소개</a></li>
			<li><a href="#">이용약관</a></li>
			<li><a href="#">개인정보 처리방침</a></li>
			<li><a href="#">전자금융거래약관</a></li>
			<li><a href="#">보안센터</a></li>
			<li><a href="#">채용정보</a></li>
		</ul>
	</div>
	<!-- board button Box -->
	<div class="action" onclick="actionToggle();">
		<span id="btnPl"><img src="<c:url value='/images/free-icon-add-circularss.png'/>" ></span>
		<ul>
			<li id="btn1" type="button" onclick="openchatbot();"><img src="<c:url value='/images/free-icon-chatbot-2068998.png'/>">Chat Bot</li>
			<li id="btn2" type="button"><img src="<c:url value='/images/question.png'/>">QNA</li>
			<li id="btn3" type="button"><img src="<c:url value='/images/faq.png'/>">FAQ</li>
			<li id="btn4" type="button"><img src="<c:url value='/images/free-icon-notification-bell-7322162.png'/>">Notice</li>
			<li id="btn5" type="button"><img src="<c:url value='/images/free-icon-paper-plane-149446.png'/>">Contact us</li>
		</ul>
	</div>
	<div class="moveToTop">
		<span>
			<img src="<c:url value='/images/arrowup.png'/>" id="moveToTop" width="36" height="36">
		</span>
	</div>