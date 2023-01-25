/**
 * pwSearch.js
 */


$(document).ready(function() {
	const emailAuthCheck = "fail";
	// 인증번호 받기 버튼 클릭시
	$('#mailCheckBtn').on('click', function() {
		// 입력한 메일 값 가져옴
		const email = $('#insertEmail').val();
		const domain = "@";
		// 이메일 오는지 확인
		console.log("완성된 이메일 : " + email);
		// 인증번호
		const checkInput = $('#mailCheckInput');
		
		if($('#memName').val() == "") {
			alert("이름을 입력해주세요.");
		} else {
			$.ajax({
				type:'post',
				url: "/member/nameCheck",
				data: {"memName": $('#memName').val(),
					  "memEmail" : $('#insertEmail').val() + domain + $('#domainText').val()
				},
				dataType: 'text',
				success:function(result) {
					if(result == "data") { 
						$.ajax({
							type:'post',
							url: "/emailCheck",
							data: {"email": $('#insertEmail').val() + domain +  $('#domainText').val()
							},
							success:function(data){
								console.log("data : " + data);
								checkInput.attr("disabled", false);
								code = data;
								alert("인증번호가 전송되었습니다.");
							}
						});	// ajax 종료
					} else {
						alert("이름 또는 이메일 주소가 다릅니다");
					}
				}
			});
		}
		
		// ajax로 전송
		
	});	// 버튼 이벤트 종료
	
	// 인증번호 비교
	// blur -> focus가 되는 경우
	$("#mailCheckInput").on('blur', function() {
		const inputCode = $(this).val();
		const $resultMsg = $('#mailCheckWarn');
		
		if(inputCode === code) {
			$resultMsg.html('인증번호가 일치합니다.');
			$resultMsg.css("color", "green");
			$('#mailCheckBtn').attr("disabled", true);
			$('#userMail').attr('readonly', true);
			emailAuthCheck = "success"
		} else {
			$resultMsg.html("인증번호가 일치하지 않습니다. 다시 확인해주세요.");
			$resultMsg.css("color", "red");
			emailAuthCheck = "fail";
		}
	});
	
	
	// 이메일을 선택하여 입력
	$('#domainList').on("change", function(){
		// 직접입력이 아니면
		if(event.target.value !== 'directInput'){
			// 선택값을 텍스트에 넣고 텍스트창 막음
			$("#domainText").val(event.target.value);
			$("#domainText").attr("readonly", true);
		} else {
			// 공백을 넣고 텍스트창 오픈
			$("#domainText").val('');
			$("#domainText").attr("readonly", false);
		}
	});
	
	// pw찾기에서 다음버튼 누를 시 (미완성) 
	$('#idNextBtn').on("click", function() {
		if(emailAuthCheck == "success") {
			alert("click");
		} else {
			alert("이메일 인증이 필요합니다.");
		}
		
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
});