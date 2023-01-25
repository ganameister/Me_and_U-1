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
				<div class="content">
					<div class="idListWrap">
						<span>아이디는</span><input type="text" value="${memInfo.memId}" id="memIdShow"><span>입니다</span>
					</div>
				</div>
			</div>
		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>