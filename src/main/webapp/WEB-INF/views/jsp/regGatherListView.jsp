<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>버킷 & 번개 모임</title>
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
			<form id="ctgSelectForm" action="" method="get">
            <table class="searchCondition" >
                <tr>
                    <th>카테고리</th>
                    <td>
                        <select id="gatherJoy" class="detailSel" name="ctgSelectVal">
                            <option value="0" ${param.ctgSelectVal == '0' ? 'selected' : '' }>전체</option>
                            <option value="1" ${param.ctgSelectVal == '1' ? 'selected' : '' }>여행/아웃도어</option>
                            <option value="2" ${param.ctgSelectVal == '2' ? 'selected' : '' }>운동/스포츠</option>
                            <option value="3" ${param.ctgSelectVal == '3' ? 'selected' : '' }>게임/오락</option>
                            <option value="4" ${param.ctgSelectVal == '4' ? 'selected' : '' }>문화/공연/축제</option>
                            <option value="5" ${param.ctgSelectVal == '5' ? 'selected' : '' }>음악/악기</option>
                            <option value="6" ${param.ctgSelectVal == '6' ? 'selected' : '' }>기타</option>
                        </select>
<!--                     </form> -->

                    </td>
                    <th>지역</th>
                    <td>
<!--                     <form id="areaSelectForm" action="" method="get"> -->
                        <select id="gatherArea" class="detailSel" name="areaSelectVal">
                            <option value="0" ${param.areaSelectVal == '0' ? 'selected' : '' }>전체</option>
                            <option value="1" ${param.areaSelectVal == '1' ? 'selected' : '' }>서울</option>
                            <option value="2" ${param.areaSelectVal == '2' ? 'selected' : '' }>경기</option>
                            <option value="3" ${param.areaSelectVal == '3' ? 'selected' : '' }>충청</option>
                            <option value="4" ${param.areaSelectVal == '4' ? 'selected' : '' }>경상</option>
                            <option value="5" ${param.areaSelectVal == '5' ? 'selected' : '' }>전라</option>
                        </select>
                    </td>
                    <th>모임명</th>
                    <td>
                        <div class="search">
                              <input type="text" class="searchName" id="searchName" placeholder="모임명 입력" name="comNameSearch" value="${temp}" }>
                               <img src="<c:url value='/images/search3.png'/>" class="searchImg">
                        </div>
                    </td>
                </tr>
            </table><br><br>
            </form>
		</section>
		<!-- 모임목록 섹션 -->
		<section class="sec">
			<!-- 모임 조건 별 검색 및 등록 버튼 -->
			<div class="listViewTop">
				<div class="listViewTitle">버킷 & 번개 모임</div>
				<div class="listViewSearchCondition2">
					<select class="searchSel">
						<option>최신순</option>
			            <option>인기순</option>
					</select>
				</div>
				<div class="newRegister">
					<input type="button" class="newRegisterBtn" id="newRegisterBtn" value="모임 개설">
				</div>
			</div>
			<!-- 모임 리스트 보기 -->
			<div class="listView">
				<ul class="categoryUl">
					<c:forEach var="regG" items="${regGList}">
						<li class="categoryList" value="${regG.ctgNo}">
							<a href="<c:url value='/regGatherDetailpage/${regG.regGatherNo}'/> ">
								<div class ="gatherInfo" >
									<div class="bottom">
										<input type="button" class="doIt" value="찜하기">
									</div>
									<img src="<c:url value='/images_upload/${regG.regGatherImg}' />" class="preview">
									<div class="gatherName">${regG.regGatherTitle}</div>
									<table class="gather_InfoTbl">
										<tr class="content">
											<th>모집기간</th>
											<td><span class="diff_bar"> | </span>&nbsp;
												${regGatherStartDate} ~ ${regGatherEndDate}
											</td>
										</tr>
										<tr class="content">
											<th>지역</th>
											<td><span class="diff_bar"> | </span>&nbsp;${regG.areaName }</td>
										</tr>
										<tr class="content">
											<th>조회수</th>
											<td><span class="diff_bar"> | </span>&nbsp;${regG.regGatherViewNum}</td>
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