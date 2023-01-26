<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 변경</title>
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/member/idSearch.js' />"></script>
	</head>
	<body>
		<form>
			<input type="text"><br>
			<input type="text">
			<button><span>변경하기</span></button>
		</form>
	</body>
</html>