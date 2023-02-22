<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
							<li id="myp">마이페이지</li>
							<li id="infoedit">개인정보수정</li>
							<li id="myreiew">내가 쓴 후기</li>
							<li id="selectreg">찜한 모임</li>
						</ul>
					</nav>
				</section><!-- 마이페이지 목록 -->
				
				<section class="sec2">
					<div class="sebox">
						<!-- 모두의 버킷리스트 -->
						<article class="art1">
							<div class="artnamec"><div id="artname">내가 선택한 모두의 버킷리스트</div><div class="imgdiv"><img src="<c:url value='/images/down.png' />" id="click_button1"></div></div>
							<c:forEach var="mycbkl" items="${ mycomBKList }" end="0">
			    			<div id="content">
									<img src="<c:url value='/images_upload/${mycbkl.combkListImg }' />" id="combkImg">
									<%-- <img src="<c:url value='/images/${mycbkl.combkListImg }' />" id="combkImg"> --%>
									<span class="contentText">${mycbkl.combkListTitle } <br>
	                                          ${mycbkl.combkListSubtitle }</span>
								
							</div>
							</c:forEach>
		    			<div  id="button_content1">
			    			<c:forEach var="mycbkl" items="${ mycomBKList }" begin="1">
			    			<div id="content">
									<img src="<c:url value='/images_upload/${mycbkl.combkListImg }' />" id="combkImg">
									<%-- <img src="<c:url value='/images/${mycbkl.combkListImg }' />" id="combkImg"> --%>
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
						
						<!-- 진행중인 모임 -->
						<article  class="art3">
						<div class="artnamec"><div id="artname">진행중인 모임</div></div>
							<div class="artdiv">
								
						<c:forEach var="reg" items="${ myregGather }" >
			    			<div id="content">
			    			<img src="<c:url value='/images_upload/${reg.regGatherImg }' />" id="combkImg">
			    			${reg.regGatherTitle}<br>
			    			${reg.regGatherDiscript}
							</div>
		    			</c:forEach>
								
								
							</div><!-- artdiv -->
						</article>
					</div>
					<div class="thbox">
						<table>
							<tr>
								<td>아이디</td><td>${info.memId}</td>
							</tr>
							<tr>
								<td>이름</td><td>${info.memName}</td>
							</tr>
							<tr>
								<td>이메일</td><td>${info.memEmail}</td>
							</tr>
							<tr>
								<td>생년월일</td><td>${info.memBirth}</td>
							</tr>
							<tr>
								<td>주소</td>	<td>${info.memAddress1}${info.memAddress2}</td>
						    </tr>
							<tr>
								<td>관심분야</td><td>${info.memJoy1}</td>
							</tr> 
							<tr>
								<td>전화번호</td><td>${info.memHP}</td>
							</tr> 
						</table>
					</div>
				</section>
			</div><!-- main -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div><!-- wrap -->
	</body>
</html>