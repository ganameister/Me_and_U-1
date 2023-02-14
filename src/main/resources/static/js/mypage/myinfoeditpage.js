/**
 * myinfoeditpage.js
 */
 
 $(document).ready(function(){
	
 $cateBtn = $(".cateBtn");
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
            location.href="/myinfoeditpage";
    });
    $("#myreiew").click(function() {
            location.href="/myreviewpage";
    });
    $("#selectreg").click(function() {
            location.href="/myselectregpage";
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
	
	// 휴대전화 번호 숫자만 입력
	$('.phNum').keyup(function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	// 비밀번호 정규식
	const reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?^&()])[A-Za-z\d$@$!%*#?^&()]{8,18}$/;
	// 비밀번호 변경 버튼 클릭 시
	$('#pwChangeBtn').on("click", function() {
		var pwd1 = $("#insertMemPW").val();
		var pwd2 = $("#insertMemPWCheck").val();
		// 둘 중 하나라도 공백이 있는지 확인
		if($('#insertMemPW').val() == "" || $('#insertMemPWCheck').val() == "") {
			alert("비밀번호를 입력하세요");
			// 공백인 텍스트 박스로 포커스
			if($('#insertMemPW').val() == ""){
				$('#insertMemPW').focus();
			} else if($('#insertMemPWCheck').val() == "") {
				$('#insertMemPWCheck').focus();
			} 
		// 입력한 비밀번호와 정규식 비교
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
		// 정규식 조건에 만족할 시 입력한 비밀번호 값 컨트롤러로 전달
		} else {
				$.ajax({
					type: 'post',
					url: "/member/MyInfoPwChange",
					data: {
						"memPw": pwd2
					},
					success:function(data){
						alert("비밀번호가 변경되었습니다");
						location.href = "/myInfoEditPage";
					}
				});	// ajax 종료
			}
	});
	
	
	var pwdCheckpass = false;
	// 비밀번호 일치 경고 문구
	$('.pwAlert').hide();
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
				$('#pwAlert').text('패스워드가 일치하지 않습니다.');
				$('#pwAlert').css("color","red");
				pwdCheckpass = false;
			}
		}
	});
	
	// 이름 정규식
	const nameReg = /^[가-힣]{2,4}|[a-zA-Z]{2,10}$/;
	// 수정하기 버튼 누를 시
	$('#EditBtn').on("click", function() {
		event.preventDefault();
		var memName = $('#MemName').val();
		if(memName == ""){
			alert("이름을 입력해주세요.");
			$('#MemName').focus();
			return false;
		} else if(!nameReg.test(memName)) {
			alert("이름을 확인해주세요.");
			$('#MemName').focus();
			return false;
		} else {
			alert("수정이 완료되었습니다.");
			$(this).unbind('click').click()
		}
		
	});
	
	// 관심분야 선택
	$('#interestSelect').on("change", function(){
		// 직접입력이 아니면
		if(event.target.value !== 'default'){
			// 선택값을 텍스트에 넣고 텍스트창 막음
			$("#memJoy1Text").val(event.target.value);
			$("#memJoy1Text").attr("readonly", true);
		} 
	});
	
	
	
});

