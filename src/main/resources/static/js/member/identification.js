/**
 * pwCheck.js
 */

$(document).ready(function() {
	// ID 중복 확인
	$('.next_btn').on('click', function() {
		event.preventDefault();
		// 공백이 아닐 시 ID값 DB에 존재하는지 확인
		if($('#input_memId').val() == "") {
			alert("아이디를 입력해주세요!");
		} else {
			$.ajax({ 
				type: "post",
				url: '/memberJoin/idCheck',
				data: {
					"id": $('#input_memId').val()
				},
				dataType: 'text',
				success:function(result) {
					if(result == "no_use") {
						location.href="/member/pwSearch?memId=" + $('#input_memId').val();
					} else {
						alert("등록되지 않은 ID입니다.");
					}
				}
			});	// ajax종료
		}
		
		
		
	});	// 버튼 기능 종료
});

