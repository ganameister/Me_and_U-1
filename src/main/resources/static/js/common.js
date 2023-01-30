/**
 * 
 */
 
$(document).ready(function(){
	 // moveToTop 이미지 클릭 시 top으로 이동
	$('#moveToTop').on('click', function(){
		// html만 선택해도 됨
		$('html, body').animate({scrollTop:0}, 500); // 0.5초 동안 top:0 위치로 스크롤 이동
	});
	
	$(window).on('scroll',function(){
		// 스크롤되는 문서의 top이 #headerBox 이상이면 메인 메뉴 고정시키고 그림자 표시
		if($(document).scrollTop() >= $('.navbar').height()) {
			$('.navbar').addClass('shadow');
		} else {
			$('.navbar').removeClass('shadow');
		}
	});
	
 	$("#qna").on('click',function(){
			window.location.href = "/qnaListView";
		});
 	$("#btn2").on('click',function(){
			window.location.href = "/qnaListView";
		});
	$("#faq").on('click',function(){
			window.location.href = "/faqListView";
		});
	$("#btn3").on('click',function(){
			window.location.href = "/faqListView";
		});
	$("#faq").on('click',function(){
			window.location.href = "/faqListView";
		});
	$("#btn4").on('click',function(){
			window.location.href = "/noticeListView";
		});
	$("#notice").on('click',function(){
			window.location.href = "/noticeListView";
		});
	$("#btn5").on('click',function(){
			window.location.href = "/contactListView";
		});		
		
});
