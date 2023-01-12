<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/memberJoinPage/login.css' />">
			<c:import url="/WEB-INF/views/layout/head.jsp"/>
			<%-- <script src="<c:url value='/js/memberJoinPage/login.js' />"></script> --%>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<div class="login-box">
			<h1>Me & U</h1>
			<h2>Login</h2>
			<form>
				<div class="user-box">
					<input type="text" name="" required="">
					<label>Username</label>
				</div>
				<div class="user-box">
					<input type="password" name="" required="">
					<label>Password</label>
				</div>
				<div class="inMemberJoin">
					<a href="#">아이디 찾기</a>
					<span>|</span>
					<a href="#">비밀번호 변경</a>
					<span>|</span>
					<a href="<c:url value='/memberJoin' />" >회원가입</a>
				</div>
				<button>
					login
				</button>
			</form>
		</div>
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>