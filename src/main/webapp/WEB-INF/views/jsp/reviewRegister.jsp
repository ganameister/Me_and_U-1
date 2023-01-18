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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/register/reviewRegister.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="<c:url value='/js/register/register.js' />"></script>
		
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
			<h4>리뷰 등록</h4>
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
					<!-- 높이를 맞추기 위한 빈 행 -->
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3">
							<input type="text" class="gatherInfo_inputLong" placeholder="제목 입력">
						</td>
					</tr>
					<tr>
						<th>한줄 평</th>
						<td colspan="3">
							<input type="text" class="gatherInfo_inputLong" placeholder="한줄평 입력">
						</td>
					</tr>
					<tr>
						<th>카테고리</th>
						<td>
							<select id="memJoy1">
							<option value="a">전체</option>
							<option value="b">여행</option>
							<option value="c">운동</option>
							<option value="d">음식</option>
							<option value="e">공연</option>
							<option value="f">취미</option>
							<option value="g">기타</option>
						</select>
						</td>
						<th>하위카테고리</th>
						<td>
							<select id="memJoy2">
							<option value="1">전체</option>
							<option value="2">트래킹</option>
							<option value="3">캠핑</option>
							<option value="4">헬스</option>
							<option value="5">수영</option>
							<option value="6">한식</option>
							<option value="7">중식</option>
						</select>
						</td>
					</tr>
					<!-- 높이를 맞추기 위한 빈 행 -->
					<tr>
						<td>&nbsp;</td>
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
				<input type="button" id="info_Input" class="info_Input" value="등록하기">
			</form>
		</div>
		<br>
		<!-- footer 부분 임포트 해줘야 함 -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		<!--  -->
	</body>
</html>
