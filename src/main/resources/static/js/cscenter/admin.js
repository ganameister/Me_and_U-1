/**
 * admin.js
*/



$(document).ready(function(){
	$("#faqInput").on('click',function(){
		window.location.href = "/faqListInput";
	});
 	
 	$("#noticeInput").on('click',function(){
			window.location.href = "/noticeListInput";
	});
 	
 	  $("#resetBtn").on('click',function(){
			window.location.href = "/admin";
		});	
		
});