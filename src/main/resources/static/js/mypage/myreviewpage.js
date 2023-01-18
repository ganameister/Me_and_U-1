/**
 * mypage.js
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
	
	$("#infoedit").click(function() {
            location.href="/mypage";
      
    });
    $("#myreiew").click(function() {
            location.href="/myreviewpage";
      
    });
    $("#selectreg").click(function() {
            location.href="/myselectregpage";
      
    });
    
    $('.review-img').hover(function() {
		$('.DelBtn').css('visibility', 'visible'); 
            }, function(){
                $(".DelBtn").css('visibility', 'hidden');
           
        });
 
});

