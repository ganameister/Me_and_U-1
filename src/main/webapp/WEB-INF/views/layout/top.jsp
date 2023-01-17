<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<header>
		<nav class="navbar">
			<div class="nav_logo">
				<a href="/" class="top"><img src="<c:url value='images/me_and_u2.png'/>" id="logo" width="100" height="40"></a>
			</div>
			<ul class="nav_menu">
				<li><a href="<c:url value='/myBKList'/>">나의 버킷리스트</a></li>
				<li><a href="<c:url value='/comBKList'/>">모두의 버킷리스트</a></li>
				<li><a href="">버킷리스트 모임</a></li>
				<li><a href="">번개 모임</a></li>
				<li><a href="">정기 모임</a></li>
				<li><a href="<c:url value='/review'/>">후기</a></li>
				<li><a href="<c:url value='/noticeListView'/>">고객센터</a></li>
			</ul>	
			<ul class="nav_login">
				<!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
				<li><a href="<c:url value='/login'/>">로그인</a></li>
				<li><a href="<c:url value='/memberJoin'/>">회원가입</a></li>
				<!-- 로그인 성공 후 보여줄 메뉴 항목 				
				<a href="#"> 님 안녕하세요!</a>
				<a href="#">마이페이지</a>
				<a href="#">로그아웃</a>-->
			</ul>					
		</nav>		
	</header>
	
	