/**
 * faqNewForm.js
*/



$(document).ready(function(){
	$("#faqInput").on('click',function(){
		window.location.href = "/faqListInput";
	});
 	
 	$("#noticeInput").on('click',function(){
			window.location.href = "/noticeListInput";
	});
 	
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
		
});