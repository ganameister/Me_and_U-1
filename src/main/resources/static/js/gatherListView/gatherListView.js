/**
 * gatherListView.js
 */
 

$(document).ready(function(){    
	
	
	//등록 페이지로 이동
	$('#newRegisterBtn').on('click',function(){
		location.href="/regGatherRegister";
		
	});
	
	var barProgress = jQuery(".progressbar");
 	barProgress.eq(1).progressbar({value:75});
    barProgress.eq(1).find(".ui-progressbar-value").css({"background":"#FFCC66"});
    
    
    
    
    
});//레디 종료