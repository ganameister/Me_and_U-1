/**
 * register.js
 */
 
 $(document).ready(function() {
 
 	//업로드한 이미지로 이미지 변경하기
	$('#uploadFileOrigin').on('change', function(e1){
		//파일 데이터 가져오기
 		var file = e1.target.files[0];
 		console.log(file);
 		var reader = new FileReader();
 		reader.onload =function(e2){
			$('#preview').attr('src', e2.target.result);
		}
		reader.readAsDataURL(file);
		
	}); //이미지 클릭 이벤트 종료
 
	//써머노트
	$('#summernote').summernote({
		height: 450,
		width:1100,
		toolbar: [
			// [groupName, [list of button]]
			['fontname', ['fontname']],
			['fontsize', ['fontsize']],
			['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			['color', ['forecolor','color']],
			['table', ['table']],
			['para', ['ul', 'ol', 'paragraph']],
			['height', ['height']],
			['insert',['picture','link','video']],
			['view', ['fullscreen', 'help']]
		],
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	});	//써머노트 끝
	
	
	// 정규모임 등록 시, 빈값이 있을 경우 
	$('#info_Input').on('click',function() {
	
		
		// 제목 빈값 확인
		if($('#gatherInfo_input1').val() == "") {
			alert("제목을 입력하세요");
			$('#gatherInfo_input1').focus();
			return false;
		}
		// 모임 정원 확인
		else if($('#gatherInfo_input2').val() == "") {
			alert("모임 정원을 입력하세요");
			$('#gatherInfo_input2').focus();
			return false;
		}
		// 카테고리를 선택 안했을 때
		else if($('#gatherInfo_input3').val() == "0") {
			alert("카테고리를 선택하세요");
			$('#gatherInfo_input3').focus();
			return false;
		} 
		// 하위 카테고리를 선택 안했을 때
		else if($('#gatherInfo_input4').val() == "0") {
			alert("하위 카테고리를 선택하세요");
			$('#gatherInfo_input4').focus();
			return false;
		} 
		// 지역 확인
		else if($('#gatherInfo_input5').val() == "") {
			alert("지역을 입력하세요");
			$('#gatherInfo_input5').focus();
			return false;
		}
		// 세부지역 확인
		else if($('#gatherInfo_input6').val() == "") {
			alert("세부지역을 입력하세요");
			$('#gatherInfo_input6').focus();
			return false;
		}
		// 모집일자 확인(시작일)
		else if($('#startDate').val() == "") {
			alert("모임 시작일을 입력하세요");
			$('#startDate').focus();
			return false;
		}
		// 모집일자 확인(종료일)
		else if($('#endDate').val() == "") {
			alert("모임 종료일을 입력하세요");
			$('#endDate').focus();
			return false;
		}
		// 기본이미지를 변경 안했을 경우
		else if($('#uploadFileOrigin').val() == "") {
			alert("이미지를 선택하세요");
			$('#uploadFileOrigin').focus();
			return false;
		} 
		// 상세 설명이 공백일 때
		else if($('#summernote').val() == "") {
			alert("상세 설명을 입력하세요");
			$('#summernote').focus();
			return false;
		}
	});// 등록하기 버튼 클릭 이벤트 종료
	
	
	
	
});	//끝