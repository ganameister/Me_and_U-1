<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/memManagement/idSearchResult.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<div class="wrap">
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="container">
				<div >
					<ul class="unl">
						<li id="listID"><button type="button" onclick="location.href='/member/idSearchPage'"><span>아이디 찾기</span></button>
						<li id="listPW"><button type="button" onclick="location.href='/member/pwSearchPage'"><span>비밀번호 찾기</span></button>
					</ul>
				</div>
				<div id="headH2">
					<h2>아이디 찾기</h2>
				</div>
				<div class="content">
					<div class="idListWrap">
						<span id="memName">${memInfo.memName }님의 아이디</span>
						<label id="memIdShow">${memInfo.memId}</label>
					</div>
				</div>
				<div class="loginBtnWrap">
					<button type="button" id="loginBtn"><span>로그인</span></button>
				</div>
			</div>
		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>