<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<c:import url="/WEB-INF/views/layout/head.jsp" /> 
<script src="<c:url value='/js/mypage/mypage.js' />"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/mypage.css' />">
</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	
		<div id="wrap">
			<div id="main">
				<section class="sec1">
					<nav>
						<ul>
							<li id="infoedit">개인정보수정</li>
							<li id="myreiew">내가 쓴 후기</li>
							<li id="selectreg">찜한 정기모임</li>
						</ul>
					</nav>
				</section><!-- 좌측 안내바? -->
				
				<section class="sec2">
					<!-- 모두의 버킷리스트 -->
					<article class="art1">
						<div class="artnamec"><div id="artname">내가 선택한 모두의 버킷리스트</div><div class="imgdiv"><img src="<c:url value='/images/down.png' />" id="click_button1"></div></div>
						<c:forEach var="mycbkl" items="${ mycomBKList }" end="0">
		    			<div id="content">
								<img src="<c:url value='/images/${mycbkl.combkListImg }' />" id="combkImg">
								<span class="contentText">${mycbkl.combkListTitle } <br>
                                          ${mycbkl.combkListSubtitle }</span>
							
						</div>
						</c:forEach>
	    			<div  id="button_content1">
		    			<c:forEach var="mycbkl" items="${ mycomBKList }" begin="1">
		    			<div id="content">
								<img src="<c:url value='/images/${mycbkl.combkListImg }' />" id="combkImg">
								<span class="contentText">${mycbkl.combkListTitle }<br>
                               ${mycbkl.combkListSubtitle }</span>
						</div>
						</c:forEach>
	    			</div>
					</article>
					
					<!-- 나의 버킷리스트 -->
					<article  class="art2">
					<div class="artnamec"><div id="artname">나의 버킷리스트</div><div class="imgdiv"><img src="<c:url value='/images/down.png' />" id="click_button2"></div></div>
					<c:forEach var="mybkl" items="${ myBKList }"  varStatus="status" end="0">
		    			<div id="content">
		    				${mybkl.mybkListWrite }<br>
						</div>
	    			
	    			</c:forEach>
					<div  id="button_content2">
					<c:forEach var="mybkl" items="${ myBKList }"  varStatus="status" begin="1">
		    			<div id="content">
		    			${mybkl.mybkListWrite }<br>
						</div>
	    			
	    			</c:forEach>
					</div>
					</article>
					
					<!-- 진행중인 정기모임 -->
					<article  class="art3">
					<div class="artnamec"><div id="artname">진행중인 정기모임</div></div>
						<div class="artdiv">
							<div >
								<img src="<c:url value='/asd'/>" id="regImg"><br>
								1동네FC<br>같이 한달에 한번씩 공차실분들~
							</div>
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
								동네FC<br>같이 한달에 한번씩 공차실분들~
							</div>
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
								동네FC<br>같이 한달에 한번씩 공차실분들~
							</div>
							
							
						</div>
					</article>
					
					
					<!-- 진행중인 번개모임 -->
					<article  class="art4">
					<div class="artnamec"><div id="artname">진행중인 번개모임</div></div>
					<div class="artdiv">
						 <div>
							<img src="<c:url value='/asd'/>" id="temImg"><br>
							동네FC<br>같이 한달에 한번씩 공차실분들~
						</div> 
						<div>
							<img src="<c:url value='/asd'/>" id="temImg"><br>
							동네FC<br>같이 한달에 한번씩 공차실분들~</div>
						<div>
							<img src="<c:url value='/asd'/>" id="temImg"><br>
							동네FC<br>같이 한달에 한번씩 공차실분들~
						</div>
						<div>
							<img src="<c:url value='/asd'/>" id="temImg"><br>
							동네FC<br>같이 한달에 한번씩 공차실분들~
						</div>
					</div>
					</article>
					
				</section><!-- 글 목록? -->
				<section class="sec3">
				<table style="border: 1px solid;">
					<tr>
						<td>이름</td>
					</tr>
					<tr>
						<td>이메일</td>
					</tr>
					<tr>
						<td>생년월일</td>
					</tr>
					<tr>
						<td>성별</td>
					</tr>
					<tr>
						<td>주소</td>
					</tr>
					<tr>
						<td>관심분야1</td>
					</tr>
					<tr>
						<td>가입날짜</td>
					</tr>
				</table>
				</section>
			</div><!-- main -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>