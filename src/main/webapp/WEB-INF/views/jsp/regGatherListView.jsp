<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>정기 모임 리스트</title>
		<!-- Header -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!--//Header  -->
		
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/GatherListView/regGatherListView.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>	
		<script src="<c:url value='/js/gatherListView/gatherListView.js' />"></script>	
		<script>
		/*  document.getElementById('recruit_Rate').value = '00';  프로그래스바 진행률 업데이트 하는 코드 00대신 +1을 해주어야함 */
		</script>
	</head>
	<body>
		<!-- top 임포트 -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- 검색창 섹션 -->
		<section id="searchSec" class="sec">
			<br><br><br>
			<table class="searchCondition" >
				<tr>
					<th>카테고리</th>
					<td>
						<select id="memJoy1" class="detailSel">
							<option value="a">전체</option>
							<option value="b">여행</option>
							<option value="c">운동</option>
							<option value="d">음식</option>
							<option value="e">공연</option>
							<option value="f">취미</option>
							<option value="g">기타</option>
						</select>
					</td>
					<th>지역</th>
					<td>
						<select id="memJoy2" class="detailSel">
							<option value="1">전체</option>
							<option value="2">서울</option>
							<option value="3">경기</option>
							<option value="4">충남</option>
							<option value="5">충북</option>
							<option value="6">전남</option>
							<option value="7">전북</option>
							<option value="8">경남</option>
							<option value="9">경북</option>
						</select>
					</td>
					<th>모임명</th>
					<td>
						<div class="search">
			 				 <input type="text" class="searchName" id="searchName" placeholder="모임명 입력">
			  				 <img src="<c:url value='/images/search3.png'/>" class="searchImg">
						</div>
					</td>
				</tr>
			</table><br><br>
		</section>
		<!-- 모임목록 섹션 -->
		<section class="sec">
			<!-- 모임 조건 별 검색 및 등록 버튼 -->
			<div class="listViewTop">
				<div class="listViewTitle">모두의 버킷리스트 모임</div>
				<div class="listViewSearchCondition">
					<input type="button" class="categoryBtn" id="category1" value="전체">
					<input type="button" class="categoryBtn" id="category2" value="여행">
					<input type="button" class="categoryBtn" id="category3" value="운동">
					<input type="button" class="categoryBtn" id="category4" value="게임">
					<input type="button" class="categoryBtn" id="category5" value="문화">
					<input type="button" class="categoryBtn" id="category6" value="음악">
					<input type="button" class="categoryBtn" id="category7" value="기타">
				</div>
				<div class="listViewSearchCondition2">
					<select class="searchSel">
						<option>최신순</option>
			            <option>인기순</option>
			            <option>이름순</option>
					</select>
				</div>
				<div class="newRegister"><input type="button" class="newRegisterBtn" id="newRegisterBtn" value="모임 개설"></div>
			</div>
			<!-- 모임 리스트 보기 -->
			<div class="listView">
				<ul class="categoryUl">
					<c:forEach var="regG" items="${regGList}">
						<li class="categoryList" value="${regG.ctgNo}">
							<a href="#">
								<div class ="gatherInfo" >
									<div class="bottom">
										<input type="button" class="doIt" value="해보기">
									</div>
									<img src="<c:url value='/images/${regG.regGatherImg}' />" class="preview">
									<div class="gatherName">${regG.regGatherTitle}</div>
									<table class="gather_InfoTbl">
										<tr class="content">
											<th>모집기간</th>
											<td><span class="diff_bar"> | </span>&nbsp;<%-- <fmt:parseDate value="${regG.regGatherStartDate}" var="regGatherStartDate" pattern="yyyy-MM-dd HH:mm"/> --%>
											${regGatherStartDate} ~ ${regGatherEndDate}
											<%-- <fmt:parseDate value="${regG.regGatherEndDate}" var="regGatherEndDate" pattern="yyyy-MM-dd HH:mm"/> --%></td>
											
											
										</tr>
										<tr class="content">
											<th>지역</th>
											<td><span class="diff_bar"> | </span>&nbsp;${regG.regGatherArea}</td>
										</tr>
										<tr class="content">
											<th>조회수</th>
											<td><span class="diff_bar"> | </span>&nbsp;100</td>
										</tr>
									</table>
									<div class="gather_progress" >
										<span class="progressBox"><progress value="0" min="0" max="${regG.regGatherMaxNum}" class="recruit_Rate" id="recruit_Rate"></progress></span>
										<span class="recruit_RateTxt">${regG.regGatherNowNum}명 / ${regG.regGatherMaxNum}명</span>
									</div>											
								</div>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</section>
		<!-- footer 임포트 -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
	</body>
</html>