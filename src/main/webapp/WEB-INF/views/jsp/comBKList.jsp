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
		<script src="/js/jquery.twbsPagination.js"></script>
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
						<!-- 카테고리 -->
						<div class="categoryBtn" id="categ">
							<input type="button" class="cateBtn" id="categ1" value="전체">
							<input type="button" class="cateBtn" id="categ2" value="여행">
							<input type="button" class="cateBtn" id="categ3" value="운동">
							<input type="button" class="cateBtn" id="categ4" value="게임">
							<input type="button" class="cateBtn" id="categ5" value="문화">
							<input type="button" class="cateBtn" id="categ6" value="음악">
							<input type="button" class="cateBtn" id="categ7" value="기타">								
						</div>
						<select>
							<option>최신순</option>
				            <option>인기순</option>
				            <option>이름순</option>
						</select>
						<button id="regBtn" onclick="location.href='comBKListRegister'">등록하기</button >
					</div>
					<div id="itemListBox">
						<ul>
							<%-- <c:forEach var="com" items="${comBKList }"> 백엔드용
							    	<li class="itemContainer" value="comBKList">
							    		<a href="<c:url value='/product/detailViewProduct/${com.comBKListNo}'/>">
								    		<table>
									    		<tr>
										    		<td><img src="<c:url value='/images/${com.prdImg}' />" width="350" height="240"></td>			               
										    	</tr>
										    	<tr>
										    		<th>${com.title }</th>
										    	</tr>
										    	<tr>
										    		<td>${com.subtitle }</td>
										    	</tr>
								    		</table>
								    	</a>
							    	</li>
						    </c:forEach> --%>
						    <!-- 프론트용 임시 시작 -->
							<li class="itemContainer" value="여행">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="운동">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="게임">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="문화">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">프론트용 임시 Title</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="음악">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="기타">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">프론트용 임시 Title</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="여행">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="운동">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="게임">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="문화">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">프론트용 임시 Title</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 타보기 도전해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="음악">
								<a href="#">
									<table>
										<tr height="240"><td><img src="<c:url value='/images/패러글라이딩타보기.jpg'/>" width="320" height="240"></td></tr>
										<tr><th class="tableText">패러글라이딩 타보기</th></tr>
										<tr height="46"><td class="tableText">패러글라이딩 무서울 거 같은 액티비티 같이 해봐요!</td></tr>
									</table>
								</a>
							</li>
							<li class="itemContainer" value="기타">
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