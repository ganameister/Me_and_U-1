/**
 * pwSearchResult.js
 */

$(document).ready(function() {

	const urlParams = new URL(location.href).searchParams;
	
	const memId = urlParams.get('memId');
	//const memName = urlParams.get('memName');
	//const memEmail = urlParams.get('memEmail');
	console.log(memId);	
	
	var pwdCheckpass = false;
	$('.pwCompareTD').hide();
	$(".pwComare").on('keyup',function(){
		// 비밀번호 값
		var pwd1=$('#insertMemPW').val();
		// 비밀번호 재확인 값
		var pwd2=$('#insertMemPWCheck').val();
		// 하나라도 공백이 아닐 시 비교
		if(pwd1 != "" || pwd2 != ""){
			// 비교결과가 같은경우 실행
			if(pwd1 == pwd2){
				$('.pwCompareTD').show();
				$('#pwAlert').text('패스워드가 일치합니다.');
				$('#pwAlert').css("color","#01DF3A");
				pwdCheckpass = true;
			// 비교결과가 다른 경우 실행
			} else {
				$('.pwCompareTD').show();
				$('#pwAlert').text('패스워드가 일치하지 않습니다');
				$('#pwAlert').css("color","red");
				pwdCheckpass = false;
			}
		}
	});
	
	// 비밀번호 정규식
	const reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?^&()])[A-Za-z\d$@$!%*#?^&()]{8,18}$/;
	// "변경하기" 버튼 클릭 시
	$("#pwChangeBtn").on('click', function() {
		var pwd1 = $("#insertMemPW").val();
		var pwd2 = $("#insertMemPWCheck").val();
		if($('#insertMemPW').val() == "" || $('#insertMemPWCheck').val() == "") {
			alert("비밀번호를 입력하세요");
			// 공백인 텍스트 박스로 포커스
			if($('#insertMemPW').val() == ""){
				$('#insertMemPW').focus();
			} else if($('#insertMemPWCheck').val() == "") {
				$('#insertMemPWCheck').focus();
			}
		} else if($('#insertMemPW').val() != "" || $('#insertMemPWCheck').val() != "") {
			if(pwdCheckpass == false) {
				// 확인 문구 출력
				alert("비밀번호가 다릅니다! 비밀번호를 확인해 주세요.");
				$('#insertMemPW').focus();
				return false;
			} else if(!reg.test(pwd1) ||
					  !reg.test(pwd2)) {
				alert("비밀번호는 숫자, 영문, 특수문자 조합으로 8~18자리를 입력해 주세요.");
				// 포커스 이동
				if(!reg.test(pwd1)) {
					$('#insertMemPW').focus();
					return false;
				} else if(!reg.test(pwd2)) {
					$('#insertMemPWCheck').focus();
					return false;
				}
			} else {
				$.ajax({
					type: 'post',
					url: "/member/pwChange",
					data: {
						"memId": memId,
						"memPw": $("#insertMemPWCheck").val()
					},
					success:function(data){
						alert("비밀번호가 변경되었습니다");
						location.href = "/login";
					}
				});	// ajax 종료
			}
		}
	});	// 버튼 클릭 이벤트 종료
	
	
	
	
	
	
	
	
	
	
});