/**
 * register.js
 */
 
 $(document).ready(function() {
 
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
	
	//업로드한 이미지로 이미지 변경하기
	$('#imgUpload').on('change', function(e1){
		//파일 데이터 가져오기
 		var file = e1.target.files[0];
 		console.log(file);
 		var reader = new FileReader();
 		reader.onload =function(e2){
			$('#preview').attr('src', e2.target.result);
		}
		reader.readAsDataURL(file);
		
		/*
		// 파일명 추출
 		var fileName = $('#imgUpload').val().split("\\").pop(); // 파일명만 추출
 		console.log(fileName);
 		
 		$.ajax({
 			type:"post",
 			url:"imgPull",
 			enctype:"multipart/form-data",
 			processData:false,
 			contentType:false, 			
 			data: form,
 			//data: formData,
 			success:function(result){
 				$('#preview').attr("src",'/upload/'+fileName);
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료  */	  
 		
	}); //이미지 클릭 이벤트 종료
});	//끝