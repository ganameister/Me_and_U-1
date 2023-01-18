<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>모두의 버킷리스트 등록 페이지</title>
		<!-- head import -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/register/comBKListRegister.css' />">
		<script src="<c:url value='/js/register/register.js' />"></script>
		
		<!-- 서머노트 js 및 css 추가 -->
		<script src="<c:url value='/js/summernote/summernote-lite.js' /> "></script>
		<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js' /> "></script>

		<link rel="stylesheet" type="text/css" href="<c:url value='/css/summernote/summernote-lite.css' />">
		
	</head>
	<body>
		<!-- top -->
		<c:import url="/WEB-INF/views/layout/top.jsp" /> 
		<div id="wrap">
			<section name="input_gatherInfo">
				<h4>모두의 버킷리스트 등록</h4>
				<hr>
				<h5>정보</h5>
				<form id="regGather_frm" class="regGather_frm" method="post">
					<table id="gatherInfo_tbl" class="gatherInfo_tbl">
						<tr>
							<!-- 이미지 미리보기 영역-->
							<td rowspan="3" height="240"><img src="/images/thumbnail.png" width="350" height="350">
							<th>제목</th>
							<td colspan="2">
								<input type="text" class="gatherInfo_input3" placeholder="제목 입력">
							</td>
						</tr>
						<tr>
							<th>카테고리</th>
							<td>
								<select>
									<option>카테고리 선택</option>
									<option>여행</option>
									<option>운동</option>
									<option>게임</option>
									<option>문화</option>
									<option>음악</option>
									<option>기타</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>한줄 설명</th>
							<td colspan="3">
								<input type="text" class="gatherInfo_input2" placeholder="한줄 설명 입력" >
							</td>
						</tr>
						<tr>
							<td>
								<div class="filebox">
									<label for="imgUpload">이미지 선택</label>
									<input type="file" id="imgUpload" value="이미지 선택">
								</div>
							</td>
						</tr>
						
					</table>
					<h5>버킷리스트 상세 설명</h5>
					<textarea id="summernote" name="editordata"></textarea>
					<br>
					<input type="submit" id="info_Input" class="info_Input" value="등록하기">
				</form>
			</section>
		</div>
		<!--  bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
	</body>
</html>
