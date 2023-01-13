<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>모두의 버킷리스트</title>
		<!-- head import -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<script src="<c:url value='/js/bucketList/combucketlist.js'/>"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/bucketList/combucketlist.css'/>">
	</head>
	<body>
		<!-- top import -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div id="mainwrap">
			<section>
				<div id="slideShow">
					<div id="prevNextButtonBox">
						<img id="prevButton" src="<c:url value='/images/prevButton.png'/>">
						<img id="nextButton" src="<c:url value='/images/nextButton.png'/>">
					</div>
					<div id="slideText">
					</div>
					<div id="slideShowBox">
						<div id="slidePanel">
							<img src="<c:url value='/images/배낭여행.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/런던브릿지1.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/사이클1.jpg'/>" class="slideImage">
						</div>
						<div id="controlButtonBox">
							<img src="<c:url value='/images/controlButton2.png'/>" class="controlButton">
							<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
							<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
						</div>
					</div>
				</div>
			</section>
			<section>
				<div id=miniwrap>
					<div id="categoryBox">
						<ul>
							<li>아웃도어/여행</li>
							<li>운동/스포츠</li>
							<li>게임/오락</li>
							<li>문화/공연/축제</li>
							<li>음악</li>
							<li>기타</li>
						</ul>
						<select>
							<option>최신순</option>
				            <option>인기순</option>
				            <option>이름순</option>
						</select>
					</div>
					<div id="itemListBox">
						<ul>
							<%-- <c:forEach var="prd" items="${prdList }"> 백엔드용
							    	<li>
							    		<a href="<c:url value='/product/detailViewProduct/${prd.prdNo}'/>">
								    		<table>
									    		<tr>
										    		<td><img src="<c:url value='/images/${prd.prdImg}' />" width="350" height="240"></td>			               
										    	</tr>
										    	<tr>
										    		<th>${prd.title }</th>
										    	</tr>
										    	<tr>
										    		<td>${prd.subtitle }</td>
										    	</tr>
								    		</table>
								    	</a>
							    	</li>
						    </c:forEach> --%>
						    <!-- 프론트용 임시 시작 -->
							<li>
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li>
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li>
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li>
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">프론트용 임시 Title</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li>
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li>
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">프론트용 임시 Title</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							
							<!-- 프론트용 임시 끝 -->
						</ul>
					</div>
				</div>
			</section>
			
		</div>
		<!--  bottom --> 
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>