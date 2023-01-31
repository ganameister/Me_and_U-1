/**
 * review.js
 */
 

$(document).ready(function(){    
 	
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
			
	}); 
	
	
    $("#resetBtn").on('click',function(){
			window.location.href = "/reviewListView";
		});	
      	
	//  등록 시 공백일 때
	$('.submitBtn').on('click',function() {
	
		// 제목이 공백일 때
		if($('.gatherInfo_inputLong').val() == "") {
			alert("제목을 입력하세요");
			$('.gatherInfo_inputLong').focus();
			return false;
		// 카테고리를 선택 안했을 때
		/*} else if($('.reviewCt').val() == "0") { */
		} else if($('.reviewCt').val() == "전체") {
			alert("카테고리를 선택하세요");
			$('.reviewCt').focus();
			return false;
		// 한줄 설명이 공백일 때
		} else if($('.gatherInfo_inputLong2').val() == "") {
			alert("한줄 설명을 입력하세요");
			$('.gatherInfo_inputLong2').focus();
			return false;
		// 이미지 선택을 안했을 때
		} else if($('#uploadFileOrigin').val() == "") {
			alert("이미지를 선택하세요");
			$('#uploadFileOrigin').focus();
			return false;
		}
	});
	
	
		
	   
});