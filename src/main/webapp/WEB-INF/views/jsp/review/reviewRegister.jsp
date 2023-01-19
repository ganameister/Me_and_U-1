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
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/review/reviewRegister.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="<c:url value='/js/review/review.js' />"></script>
		
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
		<!-- 제목 -->
			<div class="reviewBox">	
				<div class="review-top">
					
					<div class="toptitle">Review</div>
					<div class="subTitle">BUCKETLIST & 모임 리뷰</div>
				</div>
			</div>	
		<!--  -->
		<div name="input_gatherInfo" id="input_gatherInfo">
			<hr id="line">
			<form id="regGather_frm" class="regGather_frm" method="post" action="<c:url value='jsp/review/reviewRegister'/>" enctype="multipart/form-data">
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
						<th id="line">제목</th>
						<td colspan="3">
							<input type="text" class="gatherInfo_inputLong" placeholder="제목 입력" name="reviewTitle" id="reviewTitle">
						</td>
					</tr>
					<tr>
						<th id="line">한줄 평</th>
						<td colspan="3">
							<input type="text" class="gatherInfo_inputLong" placeholder="한줄평 입력" name="reviewWrite" id="reviewWrite">
						</td>
					</tr>
					<tr>
						<th id="line">카테고리</th>
						<td>
							<select id="reviewCtg" name="reviewCtg">
							<option value="전체">전체</option>
							<option value="여행">여행</option>
							<option value="운동">운동</option>
							<option value="음식">음식</option>
							<option value="문화">문화</option>
							<option value="음악">음악</option>
							<option value="기타">기타</option>
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
							<!-- 이미지파일업로드 -->
							<div class="filebox">
								<label for="uploadFileOrigin">이미지 선택</label>
								<input type="file" id="uploadFileOrigin" name="uploadFileOrigin" value="이미지 선택">
							</div>
						</td>
					</tr>
					
					
					<!-- <h2>upload Name no Change</h2>
		<form id="fileOriginalNameUploadForm" method="post" action="<c:url value='/fileOriginalNameUpload'/>"
		enctype="multipart/form-data">
		파일:<input type="file" id="uploadFileOrigin"name="uploadFileOrigin">
		<input type="submit"value="업로드"><br>
		</form>	 -->
					
					
					
				</table>
				<!-- 이미지 사이즈를 조절해주는 함수 cf) 테이블 밖에 선언해주어야함 -->	
				<script>imgSize("img");</script>
				<br>
				<hr id="line">
				<div class="boxBtn">
				<input type="submit" id="submitBtn" class="submitBtn" value="등록">
				<input type="reset" id="resetBtn" class="resetBtn" value="취소">
				</div>
			</form>
		</div>
		<br>
		<!-- footer 부분 임포트 해줘야 함 -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		<!--  -->
	</body>
</html>
