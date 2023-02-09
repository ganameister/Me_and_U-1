<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 정보 수정</title>
<c:import url="/WEB-INF/views/layout/head.jsp" /> 
<script src="<c:url value='/js/mypage/myinfoeditpage.js' />"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/myinfoeditpage.css' />">
</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div id="wrap">
			<div id="main">
				<section class="sec1">
					<nav>
						<ul>
							<li id="myp">마이페이지</li>
							<li id="infoedit">개인정보수정</li>
							<li id="myreiew">내가 쓴 후기</li>
							<li id="selectreg">찜한 정기모임</li>
						</ul>
					</nav>
				</section><!-- 마이페이지 목록 -->
				<section class="sec2">
					

        
        
        
			<div id="art1">
			<div>
			<h1 class="h3">내 정보 수정</h1></div>
				<form method="post" action="<c:url value='' />">	
						<!-- 이름, 휴대폰 번호 -->
						<div>이름</div>
							<div id="d1">
								<input type="text" maxlength="50" size="5" id="MemName" name="memName" class="insertMemInfo" >
							</div>
						<div>휴대폰 번호</div>
							<div id="d1">
								<input type="text" size="3" maxlength="3" class="phNum" name="memHp1"> <span class="hyphen">-</span>
								<input type="text" size="3" maxlength="4" class="phNum" name="memHp2"><span class="hyphen">-</span>
								<input type="text" size="3" maxlength="4" class="phNum" name="memHp3">
							</div>
						
						<!-- 이메일 -->
						<div>이메일</div>
						<div id="d1">
								<input type="text" id="insertEmail" class="insertMemInfo" name="memEmail" >
									<span class="hyphen">@</span>
								<input type="text" id="domainText" class="insertMemInfo" name="memDomain">
								
								<select name="domainList" id="domainList" class="insertMemInfo">							
								<!-- 이메일(도메인) 선택 -->
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
						
						
						<!-- 생년월일 -->
						<div>생년월일</div>
						<div id="d1">
							<select id="birth_year" class="insertMemInfo" name="memBirth1">
													  <option>출생년도</option>
												  </select>
												  <select id="birth_month" class="insertMemInfo" name="memBirth2">
													  <option>월</option>
												  </select>
												  <select id="birth_day" class="insertMemInfo" name="memBirth3">
													  <option>일</option>
												  </select>
						</div>
						
						
						
						
						주소지
						우편번호
						<div id="d1"><input type="text" id="sample6_postcode" class="insertMemInfo" name="memZipcode" readonly>
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="addressSrchBtn" name="" readonly></div>
						<div id="d1"><input type="text"  id="sample6_address" class="insertMemInfo" name="memAddress1" readonly></div>
						<div id="d1"><input type="text" id="sample6_detailAddress" name="memAddress2" class="insertMemInfo"></div>
						<br>
						<div class="info">관심정보</div><br>
						관심분야1
						<div id="d1"><select name = "memJoy1" class="insertMemInfo">
							<option>여행
							<option>뮤지컬/공연/콘서트
						</select></div>
						
						관심분야2
						<div id="d1"><input type="text"  name="memJoy2" class="insertMemInfo"></div><br>
						<button id="EditBtn">수정하기</button><br>
						<button id="CancelBtn">취소하기</button>
				</form>		<%-- 회원가입 폼 종료 --%>
			</div>
				
				</section>
				
			</div><!-- main -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>