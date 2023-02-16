<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정기 모임 상세페이지</title>
<c:import url="/WEB-INF/views/layout/head.jsp" /> 
<link rel="stylesheet" type="text/css" href="<c:url value='/css/Detailpage/Detailpage.css' />">
</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<!-- wrap -->
	<div id="wrap">
	<div id="firstbox">
		<div id="firstdiv">
			모임명 : ${reg.regGatherTitle }<br>
			<img src="<c:url value='${reg.regGatherImg }'/>" id="GatherImg">
		</div>
		<div id="seconddiv">
			<table >
				<tr><td colspan="2">모집기간 : ${reg.regGatherStartDate } ~ ${reg.regGatherEndDate}</td></tr>
				<tr><td colspan="2">지역 : ${reg.regGatherArea} </td></tr>
				<tr><td colspan="2">카테고리 : ${ctg.ctgNo }</td></tr>
				<tr><td colspan="2">최대 정원 : ${reg.regGatherMaxNum }</td></tr>
				<tr><td colspan="2">현재 정원 : ${sub.regGatherNowNum }</td></tr>
			</table>
		</div>
		<div id="thirddiv">
			<%-- <div id="memImg2">
				<img src="<c:url value='${mem.memImg }'/>" id="memImg">
			</div> --%>
			<div id="memtext">
				모임장 명 : ${mem.memId }<br>
				모임장 활동 지역 : ${reg.regGatherArea} <br>
				모임장 관심 분야 : ${mem.memJoy1 }
			</div>
		</div>
	</div>

	<div id="secondbox">
		<div id="text">
			모임상세내용
			<div  id="detailDiscript"> ${reg.regGatherDiscript }</div><br>
				<input type="button" value="신청">
				<c:forEach var="BkList" items="${comBkList }">
						<input type="button" value="수정"><input type="button" value="삭제">
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