/**
 * login.js
 */

$(document).ready(function() {
	$('loginBtn').on('submit', function() {
		event.preventDefault();
		
		$.ajax({
			type = "post",
			url : "/member/login",
			data : {
				"id" : $('#id').val(),
				"pw" : $('#pw').val()
			},
			dataType = "text",
			success:function(result) {
				if(result == "success"){
					location.href="/";
				} else {
					alert("아이디 또는 비빌번호가 일치하지 않습니다");
				}
			}
		});	// ajax 종료
	});	// submit 종료



















});
