/**
 * myinfoeditpage.js
 */
 
 $(document).ready(function(){
	$('#checkPwd').on('click',function() {
		$.ajax({
			type: "post",
			url: "/myInfoPwCheck",
			data: {
				"memPw": $('#password').val()
			},
			dataType:'text',
			success:function(result) {
				if(result == "success") {
					location.href="/myInfoEditPage";
				} else {
					alert("비밀번호가 일치하지 않습니다.");
				}
			}
		});	// ajax 종료
	});
	
 /*$cateBtn = $(".cateBtn");
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
	
	$("#myp").click(function() {
            location.href="/mypage";
    });
	$("#infoedit").click(function() {
            location.href="/myinfoeditcheckpage";
    });
    $("#myreiew").click(function() {
            location.href="/myreviewpage";
    });
    $("#selectreg").click(function() {
            location.href="/myselectregpage";
    });
  
  */
	// 로그인 성공 시 페이지

	




});

