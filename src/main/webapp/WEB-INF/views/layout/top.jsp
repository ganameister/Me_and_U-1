<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<header>
		<nav class="navbar">
			<div class="nav_logo">
				<a href="/" class="top"><img src="<c:url value='/images/me_and_u2.png'/>" id="logo" width="100" height="40"></a>
			</div>
			<ul class="nav_menu">
				<li><a href="<c:url value='/myBKList'/>">나의 버킷리스트</a></li>
				<li><a href="<c:url value='/comBKList'/>">모두의 버킷리스트</a></li>
				<li><a href="">버킷리스트 모임</a></li>
				<li><a href="">번개 모임</a></li>
				<li><a href="">정기 모임</a></li>
				<li><a href="<c:url value='/reviewListView'/>">후기</a></li>
				<li><a href="<c:url value='/noticeListView'/>">고객센터</a></li>
			</ul>	
			<ul class="nav_login">
				<!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
				<c:if test="${empty sessionScope.sid }">
					<li><a href="<c:url value='/login'/>" id="headerMenuA" class="signIn">로그인</a></li>
					<li><a href="<c:url value='/memberJoin'/>" id="headerMenuA" class="signUn">회원가입</a></li>
				</c:if>	
				
				<!-- 로그인 성공 후 보여줄 메뉴 항목 -->
				<c:if test="${not empty sessionScope.sid }">
					<li><span id="sessionID">${sessionScope.sid}님</span></li>
					<li><a href="<c:url value='/member/logout'/>" id="headerMenuA" class="logOut">로그아웃</a></li>
					<li><a href="<c:url value='/mypage'/>" id="headerMenuA" class="myPage">마이페이지</a></li>
				</c:if>
		</nav>		
	</header>
	
	