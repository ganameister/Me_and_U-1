<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<c:import url="/WEB-INF/views/layout/head.jsp" /> 
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/mypage.css' />">
</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	
		<div id="wrap">
			<div id="main">
				<section class="sec1">
					<nav>
						<ul>
							<li>개인정보수정</li>
							<li>내가 쓴 후기</li>
							<li>찜한 정기모임</li>
						</ul>
					</nav>
				</section><!-- 좌측 안내바? -->
				
				<section class="sec2">
					<!-- 모두의 버킷리스트 -->
					<article class="art1">
					<h4>내가 선택한 모두의 버킷리스트</h4>
						<div>
						<img src="<c:url value='/asd'/>">다이어트<br>
						10kg 감량하기
					</div>
					<div>
						<img src="<c:url value='/asd'/>">다이어트<br>
						10kg 감량하기
					</div>
					<div>
						<img src="<c:url value='/asd'/>">다이어트<br>
						10kg 감량하기
					</div>
					</article>
					<!-- 나의 버킷리스트 -->
					<article  class="art2">
					<h4>나의 버킷리스트</h4>
					<div>
						<img src="<c:url value='/asd'/>">다이어트<br>
						10kg 감량하기
					</div>
					<div>
						<img src="<c:url value='/asd'/>">다이어트<br>
						10kg 감량하기
					</div>
					<div>
						<img src="<c:url value='/asd'/>" >다이어트<br>
						10kg 감량하기
					</div>
					</article>
					<!-- 진행중인 정기모임 -->
					<article  class="art3">
					<h4>진행중인 정기모임</h4>
						<div>
							<img src="<c:url value='/asd'/>" id="regImg"><br>
							동네FC<br>같이 한달에 한번씩 공차실분들~
						</div>
						<div>
							<img src="<c:url value='/asd'/>" id="regImg"><br>
							동네FC<br>같이 한달에 한번씩 공차실분들~
						</div>
					<div>
					<img src="<c:url value='/asd'/>" id="regImg"><br>
					동네FC<br>같이 한달에 한번씩 공차실분들~</div>
					<div>
					<img src="<c:url value='/asd'/>" id="regImg"><br>
					동네FC<br>같이 한달에 한번씩 공차실분들~</div>
					</article>
					<!-- 진행중인 번개모임 -->
					<article  class="art4">
					<h4>진행중인 번개모임</h4>
					<div>
					<img src="<c:url value='/asd'/>" id="temImg"><br>
					동네FC<br>같이 한달에 한번씩 공차실분들~</div>
					<div>
					<img src="<c:url value='/asd'/>" id="temImg"><br>
					동네FC<br>같이 한달에 한번씩 공차실분들~</div>
					<div>
					<img src="<c:url value='/asd'/>" id="temImg"><br>
					동네FC<br>같이 한달에 한번씩 공차실분들~</div>
					<div>
					<img src="<c:url value='/asd'/>" id="temImg"><br>
					동네FC<br>같이 한달에 한번씩 공차실분들~</div>
					
					</article>
					
				</section><!-- 글 목록? -->
			</div><!-- main -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>