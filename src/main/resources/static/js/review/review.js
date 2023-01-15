/**
 * review.js
 */
 

$(document).ready(function(){    
 
    
    $cateBtn = $(".cateBtn");
	$cateBtn.each(function(index) {
		var search = ["전체", "여행", "운동", "게임", "문화", "음악","기타"];
		$('#categ' + index).on('click', function() {
			if(search[index - 1] == "전체") {
				$(".review_container").show();
			} else {
				$(".review_container").hide();
				$('.review_container[value*=' + search[index - 1] + ']').show();
			}
		});
	});
/**
	$(funcion(){
		var num=0;
		$(".heartBtn").on('click',function(){
			if(num==0){
				$('this').attr('src','/images/redheart.png');
				num =1;
			}else {
				$('this').attr('src','/images/heart.png');
				num=0;
			}
		});
	});
	

	 	$('input').click(function(){
	  if($(this).hasClass("active")){
	    $(this).removeClass("active");
	  }else{
	    $(this).addClass("active");  
	  }
	});
*/	
	
    
});