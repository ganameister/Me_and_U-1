<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Me & U</title>
		<!-- head import -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css' />">
		<script src="<c:url value='/js/index.js' />"></script>			
	</head>
	<body>
		<header>
			<nav class="Mainnavbar">
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
					<li><a href="<c:url value='/cscenter'/>">고객센터</a></li>
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
		<div class="start-screen">
			<section>
				<div id="slideShow">
					<div id="prevNextButtonBox">
						<img class="prevNextButton" id="prevButton" src="<c:url value='/images/prevButton.png'/>">
						<img class="prevNextButton" id="nextButton" src="<c:url value='/images/nextButton.png'/>">
					</div>
					<div id="slideText">
						<b id="slideTextTitle">Me & U</b> <br><br>
						<span>나와 너</span> <br>
						<span>우리 함께</span> <br>
						<span>버킷리스트를 이루어보세요</span>
					</div>
					<div id="forShadow" class="slidePanel"></div>
					<div id="largeslideShowBox">
						<div id="largeSlidePanel" class="slidePanel">
							<img src="<c:url value='/images/bg01.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg02.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg03.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg04.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg05.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg06.jpg'/>" class="slideImage2">
						</div>
					</div>
					<div id="slideShowBox">
						<div id="smallslidePanel" class="slidePanel">
							<img src="<c:url value='/images/bg01.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg02.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg03.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg04.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg05.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg06.jpg'/>" class="slideImage">
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="main-content-1">
			<div class="sticky">
				<div class="sticky-title">
					페이지 소개 문구
				</div>
				<div class="section section-1">
					<div class="title">모두의 버킷리스트</div>
					<div class="content">
					
					</div>
				</div>
				<div class="section section-2">
					<div class="title">번개모임</div>
					<div class="content">
					
					</div>
				</div>
				<div class="section section-3">
					<div class="title">정기모임</div>
					<div class="content">
					
					</div>
				</div>
				<div class="section section-4">
					<div class="title">후기</div>
					<div class="content">
					
					</div>
				</div>
			</div>
		</div>
		<!--  bottom --> 
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
	</body>
</html>