/**
 * memberJoin.js
 */

$(document).ready(function() {
	var idCheckBtnClick = "noCheck";
	var idSave = "";
	var idReg = /^(?=.*[\d])[A-za-z]{1}[A-za-z0-9]{4,15}$/;
	// ID중복확인 버튼 클릭시
	$('#idCheckBtn').on('click', function(){
		event.preventDefault();

		// 공백일 경우
		if($('#insertMemID').val() == '') {
			// 경고문 출력
			alert("아이디를 입력해주세요");
		// 아이디 정규식 검사
		} else if (!idReg.test($('#insertMemID').val())) {
			alert("사용 불가능한 아이디입니다");
		} else {
			idSave = $('#insertMemID').val();
			// ID 중복확인
			$.ajax({ 
				type: "post",
				url: '/memberJoin/idCheck',
				data: {
					"id": $('#insertMemID').val()
				},
				dataType: 'text',
				success:function(result) {
					// DB에 ID값이 있을 시(중복일 시)
					if(result == "no_use") { 
						alert("중복된 ID입니다");
						idCheckBtnClick = "checkOver";
					// 중복된 값이 없을 시
					} else {
						alert("사용 가능한 ID입니다");
						idCheckBtnClick = "checkComp";
					}
				}
			});	// ajax종료
		}	// else문 종료
	});	// 버튼 클릭 종료
	

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
	
	
	var yearOptionCheck = false;
	// 출생년도 셀렉트 옵션 생성
	$('#birth_year').on("focus", function() {
		// 옵션 생성 여부 체크
		if(!yearOptionCheck){
			yearOptionCheck = true;
			for(var i = 2023; i >= 1940; i--){
				//옵션 엘리먼트 생성
				$('#birth_year').append('<option>' + i + '</option>');
			}
		}
	});
	
	
	var monthOptionCheck = false;
	// 월(month) 셀렉트 옵션 생성
	$('#birth_month').on("focus", function() {
		// 옵션 생성 여부 체크
		if(!monthOptionCheck){
			monthOptionCheck = true;
			for(var i = 1; i <= 12; i++){
				//옵션 엘리먼트 생성
				$('#birth_month').append('<option>' + i + '</option>');
			}
		}
	});
	
	
	var dayOptionCheck = false;
	// 일(day) 셀렉트 옵션 생셩
	$('#birth_day').on("focus", function() {
		// 옵션 생성 여부 체크
		if(!dayOptionCheck){
			dayOptionCheck = true;
			for(var i = 1; i <= 31; i++){
				//옵션 엘리먼트 생성
				$('#birth_day').append('<option>' + i + '</option>');
			}
		}
	});
	
	// 비밀번호, 재확인 체크
	// 기본 테이블 숨김
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
				$('#pwAlert').text('패스워드가 일치합니다');
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
	
	// 휴대전화 번호 숫자만 입력
	$('.phNum').keyup(function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	
	// 회원가입버튼 클릭시 이벤트
	 $("#joinBtn").on("click", function() {
	 	var pwd1 = $("#insertMemPW").val();
		var pwd2 = $("#insertMemPWCheck").val();
		
		var reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?^&()])[A-Za-z\d$@$!%*#?^&()]{8,18}$/;
		// 아이디가 공백일때 출력
		if($('#insertMemID').val() == "") {
			alert("아이디를 입력하세요");
			$('#insertMemID').focus();
		// 패스워드가 공백일때 출력
		} else if($('#insertMemPW').val() == "" || $('#insertMemPWCheck').val() == "") {
			alert("비밀번호를 입력하세요");
			// 공백인 텍스트 박스로 포커스
			if($('#insertMemPW').val() == ""){
				$('#insertMemPW').focus();
			} else if($('#insertMemPWCheck').val() == "") {
				$('#insertMemPWCheck').focus();
			}
		// 이름이 입력되지 않았을때 출력
		} else if($('#insertMemName').val() == "") {
			alert("성명을 입력하세요");
			$('#insertMemName').focus();
		// 비밀번호 정규식 검사
		} else if(!reg.test(pwd1) ||
				  !reg.test(pwd2)) {
			alert("비밀번호는 숫자, 영문, 특수문자 조합으로 8~18자리를 사용해야 합니다.");
			// 포커스 이동
			if(!reg.test(pwd1)) {
				$('#insertMemPW').focus();
				return false;
			} else if(!reg.test(pwd2)) {
				$('#insertMemPWCheck').focus();
				return false;
			}
		// 비밀번호가 하나라도 공백이 아닐 시 비교
		} else if($('#insertMemPW').val() !== "" || $('#insertMemPWCheck').val() != "") {
			// 비밀번호가 서로 다를 경우
			if(pwdCheckpass == false) {
				// 확인 문구 출력
				alert("비밀번호가 다릅니다! 비밀번호를 확인해 주세요");
				$('#insertMemPW').focus();
				return false;

		} else if(idCheckBtnClick == "noCheck") {
			alert("ID중복확인을 해주세요");
			$('#idCheckBtn').focus();
			return false;
			// id중복확인 체크 여부
		} else if(idCheckBtnClick == "checkOver") {
			alert("중복된 ID입니다");
			return false;
		// 이용약관에 동의 체크 여부 확인
		// 둘중 하나라도 "동의"에 체크가 안 되어있을 시
		} else if($(':input:radio[name=ToS]:checked').val() == "Nchecked" || $(':input:radio[name=CoPI]:checked').val() == "Nchecked") {
			// 동의 문구 출력
			alert("약관에 동의해주세요");
			return false;
		} else if(idSave != $('#insertMemID').val()) {
			alert("중복확인된 아이디와 다릅니다!");
			return false;
		} else {
			alert("회원가입이 완료되었습니다");
		}
	}
	});
	
	
	// 비밀번호 정규식 안내
	$('#pwReg').hide();
	$('#insertMemPW').on('keyup', function() {
		var pwd3 = $('#insertMemPW').val();
		if(pwd3 != ""){
			if(!/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?^&()])[A-Za-z\d$@$!%*#?^&()]{8,18}$/.test(pwd3)) {
				$('#pwReg').show();
			} else {
				$('#pwReg').hide();
			}
		}
	});
	
	
	// 아이디 정규식 안내
	$('#idReg').hide();
	$('#insertMemID').on('keyup', function() {
		if(('#insertMemID') != ""){
			if(!idReg.test($('#insertMemID').val())) {
				$('#idReg').show();
			} else {
				$('#idReg').hide();
			}
		}
	});
	
	
	
	
	
	
	
	
	
	
	
	
});