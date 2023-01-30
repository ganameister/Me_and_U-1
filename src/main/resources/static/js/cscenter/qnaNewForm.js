/**
 * cscenter.js
 */
 
 $(document).ready(function(){
 		//  등록 시 공백일 때
	$('.qnaSubmit').on('click',function() {
	
		// 제목이 공백일 때
		if($('.qnaTitle').val() == "") {
			alert("제목을 입력하세요");
			$('.qnaTitle').focus();
			return false;
		// 상세글 공백일때
		} else if($('#summernote').val() == "") {
			alert("상세 설명을 입력하세요");
			$('#summernote').focus();
			return false;
		}
	});
		
});