/**
 * pwSearch.js
 */


$(document).ready(function() {
	
	const urlParams = new URL(location.href).searchParams;
	
	const memId = urlParams.get('memId');
	
	console.log(memId);
	
	var emailAuthCheck = "fail";
	const domain = "@";
	var btnClickCheck = "no";
	
	// 인증번호 받기 버튼 클릭시
	$('#mailCheckBtn').on('click', function() {
		// 입력한 메일 값 가져옴
		var email = $('#insertEmail').val() + domain + $('#domainText').val();
		// 값 확인
		console.log("완성된 이메일 : " + email);
		// 인증번호
		const checkInput = $('#mailCheckInput');
		
		if($('#memName').val() == "") {
			alert("이름을 입력해주세요.");
		} else {
			$.ajax({
				type:'post',
				url: "/member/pwSearchInfoCheck",
				data: {"memId" : memId,
					  "memName": $('#memName').val(),
					  "memEmail" : email
				},
				dataType: 'text',
				success:function(result) {
					if(result == "data") { 
						$.ajax({
							type:'post',
							url: "/emailCheck",
							data: {"email": email
							},
							success:function(data){
								console.log("data : " + data);
								checkInput.attr("disabled", false);
								code = data;
								alert("인증번호가 전송되었습니다.");
							}
						});	// if문 ajax 종료
					} else {
						alert("회원정보가 일치하지 않습니다.");
					}
				}
			});	// ajax 종료
		}
	});	// 버튼 이벤트 종료
	
	/*
	$('#mailCheckBtn').on('click', function() {
		var email = $('#insertEmail').val() + domain + $('#domainText').val();
		// 값 확인
		console.log("완성된 이메일 : " + email);
		// 인증번호
		const checkInput = $('#mailCheckInput');
		
		$.ajax({
				type:'post',
				url: "/emailCheck",
				data: {"email": email
				},
				success:function(data){
					console.log("data : " + data);
					checkInput.attr("disabled", false);
					code = data;
					alert("인증번호가 전송되었습니다.");
				}
			});	// if문 ajax 종료
		});
	*/
	
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
	
	// pw찾기에서 다음버튼 누를 시 
	$('#pwNextBtn').on("click", function() {
		var memEmail = $('#insertEmail').val() + domain + $('#domainText').val();
		var memName = $('#memName').val();
		if(emailAuthCheck == "success"){
			location.href='/member/pwSearchResultPage?memId='+ memId;
		} else if(memName == "") {
			alert("이름을 입력해주세요.");
		} else if($('#insertEmail').val() == "") {
			alert("이메일을 입력해주세요.");
		} else if($('#domainText').val() == "") {
			alert("이메일을 확인해주세요.");
		} else if(btnClickCheck == "no") {
			alert("이메일 인증을 진행해주세요.");
		} else if(emailAuthCheck == "fail") {
			alert("인증번호를 확인해주세요.");
		}
	});
	
	
	
	
	
	
	
	
	
	
	
	
});