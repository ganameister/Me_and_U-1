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
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,200" />
	</head>
	<body>
		<!-- top import -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div id="mainwrap">
			<section>
				<div id="slideShow">
					<div id="prevNextButtonBox">
						<img id="prevButton" class="prevNextButton" src="<c:url value='/images/prevButton.png'/>">
						<img id="nextButton" class="prevNextButton" src="<c:url value='/images/nextButton.png'/>">
					</div>
					<div id="slideText">
					</div>
					<div id="slideShowBox">
						<div id="slidePanel">
							<img src="<c:url value='/images/모두의버킷리스트1.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/모두의버킷리스트2.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/모두의버킷리스트3.jpg'/>" class="slideImage">
						</div>
					</div>
				</div>
			</section>
			<section>
				<div id=miniwrap>
					<div id="categoryBox">
						<!-- 카테고리 -->
						<div class="categoryBtn" id="categ">
							<input type="button" class="cateBtn activeCTG" id="categ1" value="전체">
							<input type="button" class="cateBtn" id="categ2" value="여행/아웃도어">
							<input type="button" class="cateBtn" id="categ3" value="운동/스포츠">
							<input type="button" class="cateBtn" id="categ4" value="게임/오락">
							<input type="button" class="cateBtn" id="categ5" value="문화/공연/축제">
							<input type="button" class="cateBtn" id="categ6" value="음악/악기">
							<input type="button" class="cateBtn" id="categ7" value="기타">								
						</div>
						<button id="registerBtn">등록하기</button >
					</div>
					<div id="SortSearchBox">
						<form id="sortForm" action="" method="get">
							<select id="sortcomBKList" name="sortOption">
								<option value="최신순" ${param.sortOption == '최신순' ? 'selected' : ''}>최신순</option>
							    <option value="조회순" ${param.sortOption == '조회순' ? 'selected' : ''}>조회순</option>
							    <option value="이름순" ${param.sortOption == '이름순' ? 'selected' : ''}>이름순</option>
							</select>
							    
							<select id="type" name="type" class="type">
								<option value="notchoice" <c:if test="${type eq 'notchoice'}">selected</c:if>>검색 조건 선택</option>
								<option value="combkListTitle" <c:if test="${type eq 'combkListTitle'}">selected</c:if>>제목</option>
								<option value="combkListSubtitle" <c:if test="${type eq 'combkListSubtitle'}">selected</c:if>>한줄 설명</option>
								<option value="combkListWrite" <c:if test="${type eq 'combkListWrite'}">selected</c:if>>내용</option>
							</select>
							<div id="textWrap">
								<input type="text" name="keyword" id="searchText" class="searchText" placeholder="검색 내용을 입력해주세요." value="${keyword }">
								<button type="submit" id="searchBtn" class="searchBtn"><span class="material-symbols-outlined">search</span></button>
							</div>
						</form>
						<a href="<c:url value='/comBKList/1'/>"><button id="AllListBtn">전체 보기</button></a>
					</div>
					<div id="itemListBox">
						<ul id="searchResultBox">
							<c:forEach var="com" items="${comBKList }">
							    	<li class="itemContainer" value="${com.ctgNo}">
							    		<a href="<c:url value='/comBKList/comBkListDetailpage/${com.combkListNo}'/>">
								    		<table>
									    		<tr height="260">
										    		<td><img class="combkListImg" src="<c:url value='/images_upload/${com.combkListImg}' />" width="320" height="260"></td>			               
										    	</tr>
										    	<tr>
										    		<th class="tableText">${com.combkListTitle }</th>
										    	</tr>
										    	<tr height="46">
										    		<td class="tableText">${com.combkListSubtitle }</td>
										    	</tr>
										    	<tr>
										    		<td class="tableTextView">조회수 : ${com.combkListView }</td>
										    	</tr>
								    		</table>
								    	</a>
							    	</li>
						    </c:forEach>
						</ul>
					</div>
				</div>
			</section>
			<section>
				<div class="page">
					<c:if test="${currentPage > 1}">
	   					<a href="/comBKList/${currentPage - 1}?sortOption=${sortOption}&type=${type}&keyword=${keyword}"><button id="previousBtn" class="pageBTN"> < Prev </button></a>
	 				</c:if>
	 				<c:if test="${currentPage < pageNum && currentPage < pageNum2}">
					    <a href="/comBKList/${currentPage + 1}?sortOption=${sortOption}&type=${type}&keyword=${keyword}"><button id="nextBtn" class="pageBTN"> Next > </button></a>
					</c:if>
				</div>
			</section>
		</div>
		<!--  bottom --> 
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>