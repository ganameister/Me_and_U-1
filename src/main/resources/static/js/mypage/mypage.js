/**
 * mypage.js
 */
 
 $(document).ready(function(){
	
$("#button_content1").css("display", "none");
$("#button_content2").css("display", "none");
 
	 $('#click_button1').click(function() {
        $('#button_content1').slideToggle('slow', function() {
          // 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
        });
      });
      
      let num1 = 0;
	$("#click_button1").click(function () {
		if(num1 == 0) {
			$(this).attr("src", "/images/up.png");
			num1 = 1;
		}else {
			$(this).attr("src", "/images/down.png");
			num1 = 0;
		}
	});
	
	 $('#click_button2').click(function() {
	 
        $('#button_content2').slideToggle('slow', function() {
          // 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
        });
      });
      
       let num2 = 0;
	$("#click_button2").click(function () {
		if(num2 == 0) {
			$(this).attr("src", "/images/up.png");
			num2 = 1;
		}else {
			$(this).attr("src", "/images/down.png");
			num2 = 0;
		}
	});
	
	$("#myp").click(function() {
            location.href="/mypage";
    });
	$("#infoedit").click(function() {
            location.href="/";
    });
    $("#myreiew").click(function() {
            location.href="/myreviewpage";
    });
    $("#selectreg").click(function() {
            location.href="/myselectregpage";
    });
 
 
 
 
 
});

