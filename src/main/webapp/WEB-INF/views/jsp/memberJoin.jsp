<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/memberJoinPage/memberJoin.css' />">
			<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
			<script src="<c:url value='/js/memberJoinPage/memberJoin.js' />"></script>
	</head>
	<body>

		<div>
			<div id="memJoinDiv">
				<form>		<%-- 회원가입 폼 시작 --%>
					<h1 id="memJoinTitle">회 원 가 입</h1>
					<table id="joinMemberTable">		<!-- 회원가입정보 입력 테이블 시작 -->
						<tr><th>아이디</th></tr>
						<tr><td class="insertTxt"><input type="text" placeholder="아이디 입력" id="insertMemID" name="insertMemID" class="insertMemInfo">
												  <input type="button" value="중복확인" id="idCheckBtn"></td></tr>
						<tr><th>비밀번호</th></tr>
						<tr><td class="insertTxt"><input type="password" placeholder="비밀번호 입력" id="insertMemPW" name="insertMemPW" class="insertMemInfo"></td></tr>
						<tr><th>비밀번호 재확인</th></tr>
						<tr><td class="insertTxt"><input type="password" placeholder="비밀번호 입력" id="insertMemPWCheck" name="insertMemPWCheck" class="insertMemInfo"></td></tr>
						<tr><th>이름</th></tr>
						<tr><td class="insertTxt"><input type="text" size="5" id="insertMemName" name="insertMemName" class="insertMemInfo"></td></tr>
						<tr><th>휴대폰 번호</th></tr>
						<tr><td class="insertTxt"><input type="text" size="3" class="insertMemInfo"> -
												  <input type="text" size="3" class="insertMemInfo"> -
												  <input type="text" size="3" class="insertMemInfo"></td></tr>
						<tr><th>이메일</th></tr>
						<tr><td class="insertTxt"><input type="text" id="insertEmail" class="insertMemInfo">  @
												  <input type="text" id="domainText" class="insertMemInfo">
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
						</select></td></tr>
						<tr><th>생년월일</th></tr>
						<tr><td class="insertTxt"><select id="birth_year" class="insertMemInfo">
													  <option>출생년도</option>
												  </select>
												  <select id="birth_month" class="insertMemInfo">
													  <option>월</option>
												  </select>
												  <select id="birth_day" class="insertMemInfo">
													  <option>일</option>
												  </select>
												  <img id="calenderImg" src="<c:url value='/img/calendar.png' />"></td></tr>
						<tr><th>성별</th></tr>
						<tr><td class="insertTxt">
							<input type="radio" name="gender" value="남" checked>남
							<input type="radio" name="gender" value="여">여</td>
						</tr>
						<tr><th>주소지</th></tr>
						<tr><th>우편번호</th></tr>
						<tr><td><input type="text" placeholder="우편번호 검색" id="sample6_postcode" class="insertMemInfo" readonly>
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="addressSrchBtn" readonly></td></tr>
						<tr><td><input type="text" placeholder="도로명 주소" id="sample6_address" class="insertMemInfo" readonly></td></tr>
						<tr><td class="insertTxt"><input type="text" placeholder="상세 주소" id="sample6_detailAddress" class="insertMemInfo"></td></tr>
						<tr><td id="interestInfo"><span>관심정보</span></td></tr>
						<tr><th>관심분야1</th></tr>
						<tr><th class="insertTxt"><select name = "memJoy1" class="insertMemInfo">
							<option>여행
							<option>뮤지컬/공연/콘서트
						</select></th></tr>
						<tr><th>관심분야2</th></tr>
						<tr><th class="insertTxt"><input type="text" placeholder="상세 관심분야 입력" class="insertMemInfo"></th></tr>
					</table>									<!-- 회원가입정보 입력 테이블 끝 -->
					
					
					<table id="consentTable">		<!-- 이용약관/개인정보 수집 동의 테이블 시작 -->
						<tr><th colspan="5"><h3>이용약관 / 개인정보 수집 및 이용 동의</h3></th></tr>
						<tr><th>이용약관 동의</th>
							<td class="consentRadioTable"><input type="radio" name="ToS"></td><td class="agree">동의</td>
							<td class="consentRadioTable"><input type="radio" name="ToS"></td><td class="disagree">비동의</td></tr>
						<tr><th>개인정보수집 동의</th>
							<td class="consentRadioTable"><input type="radio" name="CoPI"></td><td class="agree">동의</td>
							<td class="consentRadioTable"><input type="radio" name="CoPI"></td><td class="disagree">비동의</td></tr>
						<tr><th>메일 수신</th>
							<td class="consentRadioTable"><input type="radio" name="ReceiveMail"></td><td class="agree">동의</td>
							<td class="consentRadioTable"><input type="radio" name="ReceiveMail"></td><td class="disagree">비동의</td></tr>
						<tr><th colspan="5"><input type="button" value="가입하기" id="joinBtn"></th></tr>
					</table>									<!-- 이용약관/개인정보 수집 동의 테이블 끝 -->
				</form>		<%-- 회원가입 폼 종료 --%>
			</div>
		</div>
		<c:import url="/WEB-INF/views/jsp/addressSearchAPI.jsp"/>
	</body>
</html>