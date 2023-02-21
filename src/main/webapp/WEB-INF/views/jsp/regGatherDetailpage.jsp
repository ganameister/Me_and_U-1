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
	<script src="<c:url value='/js/Detailpage/regGatherDetailpage.js'/>"></script>
</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<!-- wrap -->
	<div id="wrap">
	<div id="firstbox">
		<div id="firstdiv">
			모임명 : ${reg.regGatherTitle }<br>
			<img src="<c:url value='/images_upload/${reg.regGatherImg}'/>" id="GatherImg">
		</div>
		<div id="seconddiv">
			<table >
				<tr><td colspan="2">모집기간 : ${reg.regGatherStartDate } ~ ${reg.regGatherEndDate}</td></tr>
				<tr><td colspan="2">지역 : ${reg.areaName} </td></tr>
				<tr><td colspan="2">카테고리 : ${reg.ctgName }</td></tr>
				<tr><td colspan="2">최대 정원 : ${reg.regGatherMaxNum }</td></tr>
				<tr><td colspan="2">현재 정원 : ${reg.regGatherNowNum }</td></tr>
			</table>
		</div>
		<div id="thirddiv">
			<%-- <div id="memImg2">
				<img src="<c:url value='${mem.memImg }'/>" id="memImg">
			</div> --%>
			<div id="memtext">
				모임장 명 : ${reg.memId }<br>
				모임장 활동 지역 : ${reg.areaName} <br>
				<%-- 모임장 관심 분야 : ${reg.memJoy1 } --%>
			</div>
		</div>
	</div>

	<div id="secondbox">
		<div id="text">
			모임상세내용
			<div  id="detailDiscript"> ${reg.regGatherDiscript }</div><br>
				<input type="button" class="btn" value="신청">
				<c:if test="${sessionScope.sid == reg.memId}">
					<input type="button" class="btn" value="수정">
					<input type="button" class="btn" value="삭제" id="deleteRegBTN" data-regGatherNo= "${reg.regGatherNo}">
				</c:if>
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