<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디 찾기</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/memManagement/pwSearch.css' />">
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/member/idSearch.js' />"></script>
	</head>
	<body>
		<div class="wrap">
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="container">
				<div >
					<ul class="unl">
						<li id="listID"><button type="button"><span>아이디 찾기</span></button>
						<li id="listPW"><button type="button" onclick="location.href='/member/pwSerachPage'"><span>비밀번호 찾기</span></button>
					</ul>
				</div>
				<div class="content">
					<div id="headH2">
						<h2>아이디 찾기</h2>
					</div>
					<div class="radioSelectBox">
						<div class="radioEmailBox">
							<div id="radioEmailWrap">
								<input type="radio" name="select" checked><span class="AuthSelectText">이메일로 인증</span>
							</div>
							<div class="lineWrap">
								<span>이름</span>
								<input type="text" class="inputTextName" id="memName" placeholder="${memList.memId}" >
							</div>
							<div class="lineWrap">
								<span>이메일 주소</span>
								<input type="text" id="insertEmail" class="inputTextEmail"><span> @ </span>
								<input type="text" id="domainText" class="inputTextEmail">
								<select name="domainList" id="domainList" class="insertMemInfo">							<!-- 이메일(도메인) 선택 -->
									<option value="directInput" selected>직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="daum.net">daum.net</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.com">yahoo.com</option>
									<option value="hatmail.com">hatmail.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="nate.com">nate.com</option>
									<option value="hitel.net">hitel.net</option>
								</select>
							</div>
							<div class="lineWrap">
								<input type="text" placeholder="인증번호 6자리 입력" maxlength="6" disabled="disabled" id="mailCheckInput">
								<button type="button" id="mailCheckBtn"><span>인증번호 받기</span></button>
							</div>
							<div class="lineWrap">
								<span id="mailCheckWarn"></span>
							</div>
							<div class="nextBtnWrap">
								<button type="button" class="nextBtn" id="idNextBtn"><span id="nextBtnText">다음</span></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>