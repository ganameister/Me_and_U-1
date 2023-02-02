<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 변경</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/memManagement/pwSearchResult.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/member/pwSearchResult.js' />"></script>
	</head>
	<body>
		<div class="wrap">
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="container">
				<div class="content">
					<div id="headH2">
						<h2>비밀번호 변경</h2>
					</div>
					<div class="pwChangeWrap">
						<div class="lineWrap">
							<span>신규 비밀번호</span>
							<input type="password" maxlength="18" placeholder="비밀번호 입력" id="insertMemPW" class="pwComare" required><br>
						</div>
						<div id="regWarn">
							<span id="pwReg">숫자, 영문, 특수문자 조합으로 8~18자리 입력</span></
						</div>
						<div class="lineWrap" id="pwInput">
							<input type="password" maxlength="18" placeholder="비밀번호 재입력" id="insertMemPWCheck" name="memPw" class="pwComare" required>
						</div>
						<div class="lineWrap" id="changeBtnWrap">
							<button type="button" id="pwChangeBtn"><span id="changeText">변경하기</span></button>
						</div>
						<div id="test">
							<h4 class="pwCompareTD" id="pwAlert"></h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>