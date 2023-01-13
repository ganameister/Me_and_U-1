<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>모두의 버킷리스트 모임 등록 페이지</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/register/regGatherRegister.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="<c:url value='/js/register/register.js' />"></script>
		
		<!-- 서머노트 js 및 css 추가 -->
		<script src="<c:url value='/js/summernote/summernote-lite.js' /> "></script>
		<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js' /> "></script>

		<link rel="stylesheet" type="text/css" href="<c:url value='/css/summernote/summernote-lite.css' />">
		
	</head>
	<body>
		<!-- 카테고리 메뉴 top 부분 임포트 해줘야 함 -->
		<!--  -->
		<section name="input_gatherInfo">
			<h4>모두의 버킷리스트 모임 개설</h4>
			<h5>모임 정보</h5>
			<hr>
			<form id="regGather_frm" class="regGather_frm" method="post">
				<table id="gatherInfo_tbl" class="gatherInfo_tbl">
					<tr>
						<!-- 이미지 삽입하는 부분 js에서 해당 영역으로 보내줘야 함 -->
						<td rowspan="4"><img src="/images/thumbnail.png">
						<th>모임명</th>
						<td>
							<input type="text" class="gatherInfo_input" placeholder="모임명 입력">
						</td>
						<th>모임정원</th>
						<td>
							<input type="text" class="gatherInfo_input" placeholder="모임 정원 입력">
						</td>
					</tr>
					<tr>
						<th>카테고리</th>
						<td>
							<input type="text" class="gatherInfo_input" placeholder="메인 카테고리 입력">
						</td>
						<th>하위카테고리</th>
						<td>
							<input type="text" class="gatherInfo_input" placeholder="세부 카테고리 입력">
						</td>
					</tr>
					<tr>
						<th>지역</th>
						<td>
							<input type="text" class="gatherInfo_input" placeholder="지역 입력">
						</td>
						<th>세부지역</th>
						<td>
							<input type="text" class="gatherInfo_input" placeholder="세부 지역 입력">
						</td>
					</tr>
					<tr>
						<th>모집일자</th>
						<td colspan="3">
							<input type="datetime-local" class="gatherInfo_inputTime" id="startDate">
							&nbsp;~&nbsp;
							<input type="datetime-local" class="gatherInfo_inputTime" id="endDate">
						</td>
					</tr>
					<tr>
						<td>
							<div class="filebox">
								<label for="imgUpload">이미지 선택</label>
								<input type="file" id="imgUpload" value="이미지 선택">
							</div>
						</td>
						<th>정원모집방식</th>
						<td colspan="3"><input type="text" class="gatherInfo_input" id="recruit" value="선착순" readonly>
					</tr>
				</table>
				<h5>모임 상세 설명</h5>
				<textarea id="summernote" name="editordata"></textarea>
				<br>
				<input type="button" id="info_Input" class="info_Input" value="등록하기">
			</form>
		</section>
		<br>
		<!-- footer 부분 임포트 해줘야 함 -->
		
		<!--  -->
	</body>
</html>
