/**
 * 
 */
 
$(document).ready(function(){
	 // moveToTop 이미지 클릭 시 top으로 이동
	$('#moveToTop').on('click', function(){
		// html만 선택해도 됨
		$('html, body').animate({scrollTop:0}, 500); // 0.5초 동안 top:0 위치로 스크롤 이동
	});
})