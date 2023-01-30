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
		<script src="<c:url value='/js/bucketList/combucketlist.js' />"></script>
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
		<!-- top -->
		<c:import url="/WEB-INF/views/layout/top.jsp" /> 
		<div id="wrap">
			<section name="input_gatherInfo">
				<h2>모두의 버킷리스트 등록</h2>
				<hr>
				<h3>정보</h3>
				<form id="regGather_frm" class="regGather_frm" method="post" action="<c:url value='/comBKList/comBKListInsert'/>" enctype="multipart/form-data">
					<table id="gatherInfo_tbl" class="gatherInfo_tbl">
						<tr>
							<!-- 이미지 미리보기 영역-->
							<td rowspan="3">
								<img id="preview" src="/images/thumbnail.png" width="350" height="350">
							</td>
							<th>제목</th>
							<td colspan="2">
								<input type="text" class="gatherInfo_input3" name="combkListTitle" placeholder="제목 입력">
							</td>
						</tr>
						<tr>
							<th>카테고리</th>
							<td>
								<select class="selectCTG" name="ctgNo">
									<option value="0" selected>카테고리 선택</option>
									<option value="1">여행/아웃도어</option>
									<option value="2">운동/스포츠</option>
									<option value="3">게임/오락</option>
									<option value="4">문화/공연/축제</option>
									<option value="5">음악/악기</option>
									<option value="6">기타</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>한줄 설명</th>
							<td colspan="3">
								<input type="text" class="gatherInfo_input2" name="combkListSubtitle" placeholder="한줄 설명 입력" >
							</td>
						</tr>
						<tr>
							<td>
								<div class="filebox">
									<label for="uploadFileOrigin">이미지 선택</label>
									<input type="file" id="uploadFileOrigin" name="uploadFileOrigin" value="이미지 선택">
								</div>
							</td>
						</tr>
						
					</table>
					<script>imgSize("img");</script>
					<h4>버킷리스트 상세 설명</h4>
					<textarea id="summernote" name="combkListWrite"></textarea>
					<br>
					<input type="submit" id="info_Input" class="info_Input" value="등록하기">
				</form>
			</section>
		</div>
		<!--  bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
	</body>
</html>
