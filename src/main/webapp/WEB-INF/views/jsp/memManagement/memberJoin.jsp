<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Me & U 회원가입</title>
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/memManagement/memberJoin.css' />">
			<c:import url="/WEB-INF/views/layout/head.jsp"/>
			<script src="<c:url value='/js/member/memberJoin.js' />"></script>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<div id="memberJoinPageDiv">
			<div id="memJoinDiv">
				<form method="post" action="<c:url value='/member/insert' />">		<%-- 회원가입 폼 시작 --%>
					<h1 id="memJoinTitle">회 원 가 입</h1>
					<table id="joinMemberTable">		<!-- 회원가입정보 입력 테이블 시작 -->
					
						<!-- 아이디, 패스워드 -->
						<tr><th>*아이디</th></tr>
						<tr><td class="insertTxtTD"><input type="text" maxlength="13" placeholder="아이디 입력" id="insertMemID" name="memId" class="insertMemInfo" required>
												  <input type="button" value="중복확인" id="idCheckBtn"></td></tr>
						<tr><th>*비밀번호<span id="pwReg">비밀번호는 숫자, 영문, 특수문자 조합으로 8~18자리를 사용해주세요</span></th></tr>
						<tr><td class="insertTxtTD"><input type="password" maxlength="18" placeholder="비밀번호 입력" id="insertMemPW" class="pwComare" required></td></tr>
						<tr><th>*비밀번호 재확인</th></tr>
						<tr><td class=""><input type="password" maxlength="18" placeholder="비밀번호 입력" id="insertMemPWCheck" name="memPw" class="pwComare" required></td></tr>
						<tr><td class="pwCompareTD"><h4 id="pwAlert"></h4></td></tr>
						
						
						<!-- 이름, 휴대폰 번호 -->
						<tr><th>*이름</th></tr>
						<tr><td class="insertTxtTD"><input type="text" maxlength="50" size="5" id="insertMemName" name="memName" class="insertMemInfo" placeholder="성명 입력" required></td></tr>
						<tr><th>휴대폰 번호</th></tr>
						<tr><td class="insertTxtTD"><input type="text" size="3" maxlength="3" class="phNum" name="memHp1"> <span class="hyphen">-</span>
												  <input type="text" size="3" maxlength="4" class="phNum" name="memHp2"> <span class="hyphen">-</span>
												  <input type="text" size="3" maxlength="4" class="phNum" name="memHp3"></td></tr>
						
						
						<!-- 이메일 -->
						<tr><th>이메일</th></tr>
						<tr><td class="insertTxtTD"><input type="text" id="insertEmail" class="insertMemInfo" name="memEmail">  <span class="hyphen">@</span>
												  <input type="text" id="domainText" class="insertMemInfo" name="memDomain">
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
						
						
						<!-- 생년월일 -->
						<tr><th>생년월일</th></tr>
						<tr><td class="insertTxtTD"><select id="birth_year" class="insertMemInfo" name="memBirth1">
													  <option>출생년도</option>
												  </select>
												  <select id="birth_month" class="insertMemInfo" name="memBirth2">
													  <option>월</option>
												  </select>
												  <select id="birth_day" class="insertMemInfo" name="memBirth3">
													  <option>일</option>
												  </select>
												  <img id="calenderImg" src="<c:url value='/images/calendar.png' />"></td></tr>
						
						
						<!-- 기타 정보 -->
						<tr><th>성별</th></tr>
						<tr><td class="insertTxtTD">
							<input type="radio" name="Gender" value="남" checked><span class="gender">남</span>
							<input type="radio" name="Gender" value="여"><span class="gender">여</span></td>
						</tr>
						
						<tr><th>주소지</th></tr>
						<tr><th>우편번호</th></tr>
						<tr><td><input type="text" placeholder="우편번호 검색" id="sample6_postcode" class="insertMemInfo" name="memZipcode" readonly>
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="addressSrchBtn" name="" readonly></td></tr>
						<tr><td><input type="text" placeholder="도로명 주소" id="sample6_address" class="insertMemInfo" name="memAddress1" readonly></td></tr>
						<tr><td class="insertTxtTD"><input type="text" placeholder="상세 주소" id="sample6_detailAddress" name="memAddress2" class="insertMemInfo"></td></tr>
						
						<tr><td id="interestInfo"><span>관심정보</span></td></tr>
						<tr><th>관심분야1</th></tr>
						<tr><th class="insertTxtTD"><select name = "memJoy1" class="insertMemInfo">
							<option>여행
							<option>뮤지컬/공연/콘서트
						</select></th></tr>
						
						<tr><th>관심분야2</th></tr>
						<tr><th class="insertTxtTD"><input type="text" placeholder="상세 관심분야 입력" name="memJoy2" class="insertMemInfo"></th></tr>
						<tr><td><input type="hidden" name="memJoinDate" value='<fmt:formatDate value="${prd.prdDate }" pattern="yyyy-MM-dd"/>'></td></tr>
					</table>									<!-- 회원가입정보 입력 테이블 끝 -->
					
					
					
					<table id="consentTable">		<!-- 이용약관/개인정보 수집 동의 테이블 시작 -->
						<tr><th colspan="5"><h3>이용약관 / 개인정보 수집 및 이용 동의</h3></th></tr>
						<tr><th>이용약관 동의</th>
							<td class="consentRadioTable"><input type="radio" name="ToS" value="checked"></td><td class="agree">동의</td>
							<td class="consentRadioTable"><input type="radio" name="ToS" value="Nchecked" checked></td><td class="disagree">비동의</td></tr>
						<tr><th>개인정보수집 동의</th>
							<td class="consentRadioTable"><input type="radio" name="CoPI" value="checked"></td><td class="agree">동의</td>
							<td class="consentRadioTable"><input type="radio" name="CoPI" value="Nchecked" checked></td><td class="disagree">비동의</td></tr>
						<tr><th>메일 수신</th>
							<td class="consentRadioTable"><input type="radio" name="ReceiveMail"></td><td class="agree">동의</td>
							<td class="consentRadioTable"><input type="radio" name="ReceiveMail" checked></td><td class="disagree">비동의</td></tr>
						<tr><th colspan="5"><button id="joinBtn"><span>가입하기</span></button></th></tr>
					</table>									<!-- 이용약관/개인정보 수집 동의 테이블 끝 -->
				</form>		<%-- 회원가입 폼 종료 --%>
			</div>
		</div>
		<c:import url="/WEB-INF/views/jsp/addressSearchAPI.jsp"/>
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>