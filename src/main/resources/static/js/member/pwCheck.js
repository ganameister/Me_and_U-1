/**
 * pwCheck.js
 */

$(document).ready(function() {
	$('.next_btn').on('click', function() {
		event.preventDefault();
		// ID 중복확인
		$.ajax({ 
			type: "post",
			url: '/memberJoin/idCheck',
			data: {
				"id": $('#input_memId').val()
			},
			dataType: 'text',
			success:function(result) {
				if(result == "no_use") { 
					location.href="/member/identification";
				} else {
					alert("등록되지 않은 ID입니다");
				}
			}
		});	// ajax종료
	});	// 버튼 기능 종료
});

