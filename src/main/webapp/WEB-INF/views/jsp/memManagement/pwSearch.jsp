<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 찾기</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/memManagement/pwSearch.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/member/pwCheck.js' />"></script>
	</head>
	<body>
		<div id="wrap">
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<header id="header">
				<div id="logoImgBox">
					<img src="<c:url value='/images/me_and_u.png' />">
				</div>
			</header>	
			<div id="container">
				<form id="frm" name="frm">
					<div id="content">
						<div class="find_inner">
							<div class="title_wrap">
								<h2 class="title">비밀번호를 찾고자하는 아이디를 입력해주세요.</h2>
							</div>
							<div id="idInputRow">
								<span><img src="<c:url value='/images/user_icon.png' />" class="user_icon"></span>
								<input type="text" class="input_memId" id="input_memId" placeholder="Me & U 아이디">
							</div>
							<button type="button" class="next_btn"><span id="nextText">다음</span></button>
							
						</div>
					</div>
				</form>
			</div>
		</div>
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>