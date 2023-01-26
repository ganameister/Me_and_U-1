<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Me & U 로그인</title>
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/memManagement/login.css' />">
			<c:import url="/WEB-INF/views/layout/head.jsp"/>
			<script src="<c:url value='/js/member/login.js' />"></script>
	</head>
	<body>
		<div id="wrap">
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div id="container">
				<div class="contents-box">
					<div class="login-box">
						<h1>Me & U</h1>
						<h2>Login</h2>
						
						<!-- 로그인 폼 -->
						<form id="loginForm" name="loginForm">
							<div class="user-box">
								<input type="text" name="id" id="id" required>
								<label>Username</label>
							</div>
							<div class="user-box">
								<input type="password" name="pw" id="pw" required>
								<label>Password</label>
							</div>
							<div class="inMemberJoin">
								<a href="<c:url value='/member/idSearchPage' />"><span>아이디 찾기</span></a>
								<span>|</span>
								<a href="<c:url value='/member/pwSearchPage' />"><span>비밀번호 찾기</span></a>
								<span>|</span>
								<a href="<c:url value='/memberJoin' />" ><span>회원가입</span></a>
							</div>
							<button type="submit" id="loginBtn">
								login
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>