<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 정보 수정</title>
<c:import url="/WEB-INF/views/layout/head.jsp" /> 
<script src="<c:url value='/js/mypage/myinfoeditcheckpage.js' />"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/myinfoeditcheckpage.css' />">
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
				<div class="card-body">
					<div class="text-start">
							<div class="input-group input-group-outline my-3">
								<label class="form-label">비밀번호 확인</label><br>
									<input type="password" id="password" name="password" class="form-control" placeholder="비밀번호를 입력하세요">
							</div>
					</div>
					<div class="text-center">
						<input type="submit" class="btn bg-gradient-primary w-100 my-4 mb-2" id="checkPwd" value="비밀번호 확인">
					</div>
				</div>
				</section>
			</div><!-- main -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>
			
				