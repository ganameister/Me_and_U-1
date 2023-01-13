/**
 * memberJoin.js
 */

$(document).ready(function() {
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
	
	
	
	
	
	
	
	
	
	
	
});