<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Me & U</title>
		<!-- head import -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/review/reviewPlus.css' />">
		<script src="<c:url value='/js/index.js' />"></script>
		<script type="text/javascript">
			function actionIndexToggle(){
				var action=document.querySelector('.actionIndex');
				action.classList.toggle('active')
			}
			function openchatbot() {
				var chat = window.open("/chatbotForm", "chatbot", "width=400, height=560");
			}
		</script>	
	</head>
	<body>
		<header>
			<nav class="Mainnavbar">
				<a href="/" class="top"><img src="<c:url value='/images/me_and_u2.png'/>" id="logo" width="100" height="40"></a>
				<ul class="nav_menu">
					<li><a href="<c:url value='/myBKList'/>">나의 버킷리스트</a></li>
					<li><a href="<c:url value='/comBKList/${1 }'/>">모두의 버킷리스트</a></li>
					<li><a href="">버킷리스트 모임</a></li>
					<li><a href="">번개 모임</a></li>
					<li><a href="<c:url value='/regGatherListView'/>">정기 모임</a></li>
					<li><a href="<c:url value='/reviewListView'/>">후기</a></li>
					<li><a href="<c:url value='/noticeListView'/>">고객센터</a></li>
				</ul>	
				<ul class="nav_login">
				<!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
				<c:if test="${empty sessionScope.sid }">
					<li><a href="<c:url value='/login'/>" id="headerMenuA" class="signIn">로그인</a></li>
					<li><a href="<c:url value='/memberJoin'/>" id="headerMenuA" class="signUn">회원가입</a></li>
				</c:if>	
				
				<!-- 로그인 성공 후 보여줄 메뉴 항목 -->
				<c:if test="${not empty sessionScope.sid }">
					<li><span id="indexID">${sessionScope.sid}님</span></li>
					<li><a href="<c:url value='/member/logout'/>" id="headerMenuA" class="logOut">로그아웃</a></li>
					<li><a href="<c:url value='/mypage'/>" id="headerMenuA" class="myPage">마이페이지</a></li>
				</c:if>
			</nav>
		</header>
		<div class="start-screen">
			<section>
				<div id="slideShow">
					<div id="prevNextButtonBox">
						<img class="prevNextButton" id="prevButton" src="<c:url value='/images/prevButton.png'/>">
						<img class="prevNextButton" id="nextButton" src="<c:url value='/images/nextButton.png'/>">
					</div>
					<div id="slideText">
						<b id="slideTextTitle">Me & U</b> <br><br>
						<span>나와 너</span> <br>
						<span>우리 함께</span> <br>
						<span>버킷리스트를 이루어보세요</span>
					</div>
					<div id="forShadow" class="slidePanel"></div>
					<div id="largeslideShowBox">
						<div id="largeSlidePanel" class="slidePanel">
							<img src="<c:url value='/images/bg01.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg02.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg03.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg04.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg05.jpg'/>" class="slideImage2">
							<img src="<c:url value='/images/bg06.jpg'/>" class="slideImage2">
						</div>
					</div>
					<div id="slideShowBox">
						<div id="smallslidePanel" class="slidePanel">
							<img src="<c:url value='/images/bg01.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg02.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg03.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg04.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg05.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/bg06.jpg'/>" class="slideImage">
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="main-content-1">
			<div class="sticky">
				<div class="sticky-title">
					<!-- 페이지 소개 문구 or 광고? 수정부분-->					
					<img src="<c:url value='/images/광고2.jpg'/>" >
				</div>
				<div class="section section-1">
					<div class="title">모두의 버킷리스트</div>
					<div class="content">
						<div id="itemListBox">
							<ul>
								<c:forEach var="com" items="${combkRec }">
								    	<li class="itemContainer" value="${com.ctgNo}">
								    		<a href="<c:url value='/comBKList/comBkListDetailpage/${com.combkListNo}'/>">
									    		<table class="comTable">
										    		<tr height="290">
											    		<td><img class="combkListImg" src="<c:url value='/images/${com.combkListImg}' />" width="320" height="290"></td>			               
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
				</div>
				<div class="section section-2">
					<div class="title">번개모임</div>
					<div class="content">
						<div id="itemListBox">
							<ul>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/보드게임.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">보드게임 하실분 구합니다</th></tr>
											<tr height="55"><td>한판 맛있게 쎄려봅시다</td></tr>
										</table>
									</a>
								</li>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/ball.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">축구하실분 급구</th></tr>
											<tr height="55"><td>너만오면 11명</td></tr>
										</table>
									</a>
								</li>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/사이클1.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">자전거 20KM 같이 타실분</th></tr>
											<tr height="55"><td>혼자 타면 심심해요 같이 운동해요!</td></tr>
										</table>
									</a>
								</li>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/피파2.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">피파 토너먼트하실분 급구</th></tr>
											<tr height="55"><td>우승 시 3만원 드립니다</td></tr>
										</table>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="section section-3">
					<div class="title">정기모임</div>
					<div class="content">
						<div id="itemListBox">
							<ul>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/헬스.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">매주 3일 헬스하실분</th></tr>
											<tr height="55"><td>같이 몸과 마음을 수련해보아요</td></tr>
										</table>
									</a>
								</li>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/축구.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">매주 토요일 축구 하실분 구합니다</th></tr>
											<tr height="55"><td>너만오면 11명</td></tr>
										</table>
									</a>
								</li>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/조깅.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">주말 아침에 10KM 같이 달리실분</th></tr>
											<tr height="55"><td>혼자 달리면 심심해요 같이 운동해요!</td></tr>
										</table>
									</a>
								</li>
								<li class="itemContainer" value="여행">
								    <a href="#">
										<table class="comTable">
											<tr height="260"><td><img class="combkListImg" src="<c:url value='/images/맛집.jpg'/>" width="320" height="260"></td></tr>
											<tr><th class="tableText">주말에 맛집 탐방 주기적으로 가실분 구합니다</th></tr>
											<tr height="55"><td>음료수 값정도는 내드릴게요.</td></tr>
										</table>
									</a>
								</li>
							</ul>
						</div>
					
						<%-- <div class="listView">
							<ul>
								<li class="categoryList" value="여행">
									<a href="#">
										<div class ="gatherInfo" >
											<div class="bottom">
												<input type="button" class="doIt" value="해보기">
											</div>
											<img src="<c:url value='/images/패러글라이딩타보기.jpg' />" class="preview">
											<div class="gatherName">패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///</div>
											<table class="gather_InfoTbl">
												<tr class="content">
													<th>모집기간</th>
													<td><span class="diff_bar"> | </span>&nbsp;2023-01-19 00시 ~ 2023-01-19 19시</td>
												</tr>
												<tr class="content">
													<th>지역</th>
													<td><span class="diff_bar"> | </span>&nbsp;강남구</td>
												</tr>
												<tr class="content">
													<th>조회수</th>
													<td><span class="diff_bar"> | </span>&nbsp;100</td>
												</tr>
											</table>
											<div class="gather_progress" >
												<span class="progressBox"><progress value="20" min="0" max="100" class="recruit_Rate" id="recruit_Rate"></progress></span>
												<span class="recruit_RateTxt">20명 / 100명</span>
											</div>											
										</div>
									</a>
								</li>
								<li class="categoryList" value="여행">
									<a href="#">
										<div class ="gatherInfo" >
											<div class="bottom">
												<input type="button" value="해보기">
											</div>
											<img src="<c:url value='/images/패러글라이딩타보기.jpg' />" class="preview">
											<div class="gatherName">패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///</div>
											<table class="gather_InfoTbl">
												<tr class="content">
													<th>모집기간</th>
													<td><span class="diff_bar"> | </span>&nbsp;2023-01-19 00시 ~ 2023-01-19 19시</td>
												</tr>
												<tr class="content">
													<th>지역</th>
													<td><span class="diff_bar"> | </span>&nbsp;강남구</td>
												</tr>
												<tr class="content">
													<th>조회수</th>
													<td><span class="diff_bar"> | </span>&nbsp;100</td>
												</tr>
											</table>
											<div class="gather_progress" >
												<span class="progressBox"><progress value="20" min="0" max="100" class="recruit_Rate" id="recruit_Rate"></progress></span>
												<span class="recruit_RateTxt">20명 / 100명</span>
											</div>											
										</div>
									</a>
								</li>
								<li class="categoryList" value="여행">
									<a href="#">
										<div class ="gatherInfo" >
											<div class="bottom">
												<input type="button" value="해보기">
											</div>
											<img src="<c:url value='/images/패러글라이딩타보기.jpg' />" class="preview">
											<div class="gatherName">패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///</div>
											<table class="gather_InfoTbl">
												<tr class="content">
													<th>모집기간</th>
													<td><span class="diff_bar"> | </span>&nbsp;2023-01-19 00시 ~ 2023-01-19 19시</td>
												</tr>
												<tr class="content">
													<th>지역</th>
													<td><span class="diff_bar"> | </span>&nbsp;강남구</td>
												</tr>
												<tr class="content">
													<th>조회수</th>
													<td><span class="diff_bar"> | </span>&nbsp;100</td>
												</tr>
											</table>
											<div class="gather_progress" >
												<span class="progressBox"><progress value="20" min="0" max="100" class="recruit_Rate" id="recruit_Rate"></progress></span>
												<span class="recruit_RateTxt">20명 / 100명</span>
											</div>											
										</div>
									</a>
								</li>
								<li class="categoryList" value="여행">
									<a href="#">
										<div class ="gatherInfo" >
											<div class="bottom">
												<input type="button" value="해보기">
											</div>
											<img src="<c:url value='/images/패러글라이딩타보기.jpg' />" class="preview">
											<div class="gatherName">패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///패러글라이딩타보기///</div>
											<table class="gather_InfoTbl">
												<tr class="content">
													<th>모집기간</th>
													<td><span class="diff_bar"> | </span>&nbsp;2023-01-19 00시 ~ 2023-01-19 19시</td>
												</tr>
												<tr class="content">
													<th>지역</th>
													<td><span class="diff_bar"> | </span>&nbsp;강남구</td>
												</tr>
												<tr class="content">
													<th>조회수</th>
													<td><span class="diff_bar"> | </span>&nbsp;100</td>
												</tr>
											</table>
											<div class="gather_progress" >
												<span class="progressBox"><progress value="20" min="0" max="100" class="recruit_Rate" id="recruit_Rate"></progress></span>
												<span class="recruit_RateTxt">20명 / 100명</span>
											</div>											
										</div>
									</a>
								</li>
							</ul>
						</div> --%>
					</div>
				</div>
				<div class="section section-4">
					<div class="title">후기</div>
					<div class="content">
						<div id="review_warp">	
							<!-- 최신순 리뷰 리스트  -->			
							<div class="reviewBox">																				
								<ol class="image-list grid-view">		 					
							 		<c:forEach var="revs" items="${reviewRec}"> 		
										<li class="review_container" value="${revs.reviewCtg}"> 							
											<div class ="review-Info" >
												<!--  리뷰이미지  -->
												
												<img  class="review-img" src="<c:url value='/images/${revs.reviewImg }'/>" >																					
												<!--  리뷰상세박스-글 -->
												<div class="review_underBox">									
													<!-- 하트하트 -->
													<div class="heartbox">							
													<button class="heartBtn" id="heartBtn" ><img src='<c:url value="/images/heart.png"/>' class="heartbtnImg" ></button>		
													<span class="heartNo">${revs.reviewHart }</span>
													</div>
													<div class="review-title"><span class="reviewtitle">${revs.reviewTitle }</span></div>			
													<div class="comment"><span>${revs.reviewWrite }</span></div>
													<div align="right">-<span id="reviewmemId">${revs.memId }</span>-<p id="reviewDate">
														<fmt:formatDate value='${revs.reviewDate }' pattern="yyyy-MM-dd  hh:mm"/></p></div>							
												</div>																
											</div>
										</li>				
									 </c:forEach> 
								</ol>												
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  bottom --> 
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		<!-- board button Box -->
		<div class="actionIndex" onclick="actionIndexToggle();">
			<span id="btnPl"><img src="<c:url value='/images/free-icon-add-circularss.png'/>" ></span>
			<ul>
				<li id="btn11" type="button" onclick="openchatbot();"><img src="<c:url value='/images/free-icon-chatbot-2068998.png'/>">Chat Bot</li>
				<li id="btn22" type="button"><img src="<c:url value='/images/question.png'/>">QNA</li>
				<li id="btn33" type="button"><img src="<c:url value='/images/faq.png'/>">FAQ</li>
				<li id="btn44" type="button"><img src="<c:url value='/images/free-icon-notification-bell-7322162.png'/>">Notice</li>
				<li id="btn55" type="button"><img src="<c:url value='/images/free-icon-paper-plane-149446.png'/>">Contact us</li>
			</ul>
		</div>
		<div class="moveToTopIndex">
			<span>
				<img src="<c:url value='/images/arrowup.png'/>" id="moveToTop" width="36" height="36">
			</span>
		</div>
	</body>
</html>