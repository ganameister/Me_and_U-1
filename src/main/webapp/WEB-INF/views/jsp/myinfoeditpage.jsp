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
				<form method="post" action="<c:url value='/member/memInfoChange' />">	
						<!-- 이름, 휴대폰 번호 -->
						<div>이름</div>
							<div id="d1">
								<input type="text" maxlength="50" size="5" id="MemName" name="memName" class="insertMemInfo" value="${memInfo.memName }">
							</div>
							
						<div>비밀번호</div>
							<div id="d1">
								<span id="pwReg">비밀번호는 숫자, 영문, 특수문자 조합으로 8~18자리를 사용해주세요</span>
								<input type="password" maxlength="18" placeholder="비밀번호 입력" id="insertMemPW" class="pwComare">
							</div>
							
						<div>비밀번호 재확인</div>
							<div id="d1">
								<input type="password" maxlength="18" placeholder="비밀번호 재입력" id="insertMemPWCheck" name="memPw" class="pwComare">
								<button type="button" id="pwChangeBtn"><span>비밀번호 변경</span></button>
								<div><span id="pwAlert"></span></div>
							</div>
							
						<div>휴대폰 번호</div>
							<div id="d1">
								<input type="text" size="3" maxlength="3" class="phNum" name="memHp1" value="${memHp1 }"> <span class="hyphen">-</span>
								<input type="text" size="3" maxlength="4" class="phNum" name="memHp2" value="${memHp2 }"><span class="hyphen">-</span>
								<input type="text" size="3" maxlength="4" class="phNum" name="memHp3" value="${memHp3 }">
							</div>
						
						<!-- 이메일 -->
						<div>이메일</div>
						<div id="d1">
								<input type="text" id="insertEmail" class="insertMemInfo" name="memEmail" value="${memEmail }">
									<span class="hyphen">@</span>
								<input type="text" id="domainText" class="insertMemInfo" name="memDomain" value="${memDomain }">
								
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
						
						주소지
						우편번호
						<div id="d1"><input type="text" id="sample6_postcode" class="insertMemInfo" name="memZipcode" value="${memInfo.memZipcode }" readonly>
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="addressSrchBtn" name="" readonly></div>
						<div id="d1"><input type="text"  id="sample6_address" class="insertMemInfo" name="memAddress1" value="${memInfo.memAddress1 }" readonly></div>
						<div id="d1"><input type="text" id="sample6_detailAddress" name="memAddress2" value="${memInfo.memAddress2 }" class="insertMemInfo"></div>
						<br>
						<div class="info">관심정보</div><br>
						관심분야1
						<div id="d1">
							<input type="text" name = "memJoy1" id="memJoy1Text" value="${memInfo.memJoy1 }" readonly>
							<select class="insertMemInfo" id="interestSelect">
							<option value="default" selected>관심분야 선택
							<option value="여행">여행/아웃도어
							<option value="운동/스포츠">운동/스포츠
							<option value="게임/오락">게임/오락
							<option value="문화/공연/축제">문화/공연/축제
							<option value="음악/악기">음악/악기
							<option value="기타">기타
						</select></div>
						
						관심분야2
						<div id="d1"><input type="text"  name="memJoy2" class="insertMemInfo" value="${memInfo.memJoy2 }"></div><br>
						<button id="EditBtn">수정하기</button><br>
						<button id="CancelBtn">취소하기</button>
				</form>		<%-- 회원가입 폼 종료 --%>
			</div>
				
				</section>
				
			</div><!-- main -->
		<c:import url="/WEB-INF/views/jsp/addressSearchAPI.jsp"/>
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>