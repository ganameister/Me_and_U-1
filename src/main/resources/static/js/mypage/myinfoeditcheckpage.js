/**
 * myinfoeditcheckpage.js
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
	

	// 로그인 성공 시 페이지
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
	




});

