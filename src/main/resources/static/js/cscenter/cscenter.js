$(document).ready(function(){
	
 	
 	$('.faqSubmit').on('click',function() {
	
		// 제목이 공백일 때
		if($('.faqTitle').val() == "") {
			alert("제목을 입력하세요");
			$('.faqTitle').focus();
			return false;
		// 상세글 공백일때
		} else if($('#summernote').val() == "") {
			alert("상세 설명을 입력하세요");
			$('#summernote').focus();
			return false;
		}
	});	
	
	$('.noticeSubmit').on('click',function() {

		// 제목이공백일때
		if($('.noticeTitle').val() == "") {
			alert("제목을입력하세요");
			$('.noticeTitle').focus();
			return false
		// 상세글공백일때
		} else if($('#summernote').val() == "") {
			alert("상세설명을입력하세요");
			$('#summernote').focus();
			return false
		}
	});	
});