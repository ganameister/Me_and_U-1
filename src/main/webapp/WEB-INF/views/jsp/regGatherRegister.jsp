<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>정기 모임 등록 페이지</title>
		<!-- 헤드부분 임포트  -->
		<c:import url="/WEB-INF/views/layout/head.jsp" /> 
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/register/regGatherRegister.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="<c:url value='/js/register/register.js' />"></script>

		<!-- 서머노트 js 및 css 추가 -->
		<script src="<c:url value='/js/summernote/summernote-lite.js' /> "></script>
		<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js' /> "></script>

		<link rel="stylesheet" type="text/css" href="<c:url value='/css/summernote/summernote-lite.css' />">
		
		<script>
		//미리 보여줄 이미지의 크기를 조절해주는 함수 
		 function imgSize(which){
    		var width = eval("document."+which+".width");
  		    var height = eval("document."+which+".height");
  		    var temp = 0; 
 		    var max_width= 350;   // 이미지의 가로 최대 크기    
 		    var max_height = 350; // 이미지의 세로 최대 크기
    
  		  	if ( width > max_width ) {  // 업로드하는 이미지의 width가 max_width보다 크다면 너비를 width으로 맞우고 비율에 맞춰 세로값을 변경한다.      
  		   	   height = height/(width / max_width);
 		 	   eval("document."+which+".width = max_width");     
 			   eval("document."+which+".height = height");
    		   width = max_width;     
  			}
 
   		 	if( height > max_height ) {
   	 	  	  width = width/(height / max_height);
    	 	  eval(document.getElementById(which).width = width);
     		  eval(document.getElementById(which).height = max_height);
  			}
		}
		</script>
		
	</head>
	<body>
		<!-- 카테고리 메뉴 top 부분 임포트 해줘야 함 -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!--  -->
		<div name="input_gatherInfo" id="input_gatherInfo">
			<h4>정기 모임 개설</h4>
			<h5>모임 정보</h5>
			<hr id="line">
			<form id="regGather_frm" class="regGather_frm" method="post">
				<table id="gatherInfo_tbl" class="gatherInfo_tbl">
					<tr>
						<!-- 이미지 미리보기 영역-->
						<td rowspan="8">
							<img id="preview" src="/images/thumbnail.png" width="350" height="350">
						</td>
					</tr>
					<!-- 높이를 맞추기 위한 빈 행 -->
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
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
						<th>정원모집방식</th>
						<td colspan="3"><input type="text" class="gatherInfo_input" id="recruit" value="선착순" readonly>
					</tr>
					<!-- 높이를 맞추기 위한 빈 행 -->
					<tr>
						<td>&nbsp;</td>
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
				<!-- 이미지 사이즈를 조절해주는 함수 cf) 테이블 밖에 선언해주어야함 -->	
				<script>imgSize("img");</script>
				<br>
				<h5>모임 상세 설명</h5>
				<textarea id="summernote" name="editordata"></textarea>
				<br>
				<input type="button" id="info_Input" class="info_Input" value="등록하기">
			</form>
		</div>
		<br>
		<!-- footer 부분 임포트 해줘야 함 -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		<!--  -->
	</body>
</html>
