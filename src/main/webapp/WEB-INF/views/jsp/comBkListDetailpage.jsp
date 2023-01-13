<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두의 버킷리스트 상세페이지</title>
<c:import url="/WEB-INF/views/layout/head.jsp" /> 
<link rel="stylesheet" type="text/css" href="<c:url value='/css/Detailpage/comBKListDetailPage.css' />">
</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<!-- wrap -->
	<div id="wrap">
		<div id="title">
			<h2>모두의 버킷리스트 상세 페이지</h2>
		</div>
		<hr>
		<div id="title">
			<h3>정보</h3>
		</div>
		<div id="firstbox">
			<div id="firstdiv">
				<img src="<c:url value='${cblg.comBkListImg }'/>" id="comBKListImg">
			</div>
			<div id="seconddiv">
				<table >
					<tr><td>제목 : ${cblg.comBKListTitle }</td></tr>
					<tr><td>카테고리 : ${cblg.ctgNo }</td></tr>
					<tr><td>한줄 설명 : ${cblg.ctgNo }</td></tr>
				</table>
			</div>
		</div>
		<div id="secondbox">
			<div id="text">
				<b>버킷리스트 내용</b>
				<div  id="detailDiscript"> ${cblg.comBkListGatherDiscript }</div><br>
					<input type="button" value="해보기">
					<c:forEach var="BkList" items="${comBkList }">
						<input type="button" value="삭제">
					</c:forEach>
					
			</div>
		</div>
	
			<!-- Bottom -->
			<!-- footer -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
			<!-- //footer -->
			<!-- //Bottom -->
	</div>
	<!-- //wrap -->
	</body>
</html>