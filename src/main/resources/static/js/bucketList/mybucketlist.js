/**
 *  mybucketlist.js
 */
 
/** ========== 슬라이드 쇼 js 구간 ========== **/
 $(document).ready(function(){
	// 이동한 이미지의 index 값 저장 (현재 위치)
	var movedIndex = 0;
	
	// 실제로 슬라이드 패널을 움직이는 함수
	function moveSlide(index){
		//전달 받은 index 값을 movedIndex에 저장
		movedIndex = index;
		
		// 슬라이드 이동
		var moveLeft = -(index * 1600); // 왼쪽으로 이동 거리
		$('#slidePanel').animate({'left': moveLeft}, 'slow');
	}
	
	//슬라이드 자동 랜덤 슬라이드
	let loopInterval = setInterval(() => {
   		var randomNum = Math.floor(Math.random() * 3);
   		moveSlide(randomNum);
	}, 4000);
	
	// 슬라이드에 마우스가 올라간 경우 루프 멈추기
	$('.prevNextButton').on("mouseover", () => {
	  clearInterval(loopInterval);
	});

	// 슬라이드에서 마우스가 나온 경우 루프 재시작하기
	$('.prevNextButton').on("mouseout", () => {
	  	loopInterval = setInterval(() => {
   			var randomNum = Math.floor(Math.random() * 3);
   			moveSlide(randomNum);
		}, 4000);
	});
	
	// prev 버튼 클릭하면 앞으로 이동
	$('#prevButton').on('click', function(){
		if(movedIndex !=0)  // 첫 번째가 아니면
			movedIndex = movedIndex - 1; // 인덱스 값 - 1
		else
			movedIndex = 2;
		
		moveSlide(movedIndex);  // 실제로 슬라이드 패널을 움직이는 함수 호출하면 계산된 인덱스값 전달
		
		$('.controlButton').attr('src', '/images/controlButton1.png');
		
		$('.controlButton').eq(movedIndex).attr('src', '/images/controlButton2.png');
	});	
	
	// next 버튼 클릭하면 뒤로 이동
	$('#nextButton').on('click', function(){
		if(movedIndex != 2)  // 마지막이 아니면
			movedIndex = movedIndex + 1; // 인덱스 값 + 1
		else
			movedIndex = 0;
		
		moveSlide(movedIndex); // 실제로 슬라이드 패널을 움직이는 함수 호출하면 계산된 인덱스값 전달
		
		$('.controlButton').attr('src', '/images/controlButton1.png');
		
		$('.controlButton').eq(movedIndex).attr('src', '/images/controlButton2.png');
	});
	
	// 초기 슬라이더 위치 랜덤하게 지정
	//var randomNum = Math.floor(Math.random() * 5); // 0 ~ 4 : 5개
	//moveSlide(randomNum); 
	
	// 컨트롤 버튼 
	$('.controlButton').on('click', function() {
		var index = $(this).index();

		$('.controlButton').attr('src', '/images/controlButton1.png');
		
		$('.controlButton').eq(index).attr('src', '/images/controlButton2.png');
	});

	$('.controlButton').each(function(index){		
		// 클릭했을 때 현재 인덱스 값을 moveSlide() 함수에게 전달
		$(this).on('click', function() {
			moveSlide(index);
		})
	});
	
	
	/** ========== 슬라이드 쇼 js 구간 끝 ========== **/
	
	
	/** ========== 나의 버킷리스트 js 구간 시작 ========== **/
	
 	
 	// 나의 버킷리스트 등록 시 공백일 때
 	$('#listInsertBtn').on('click', function() {
 		if($('#mybkListWrite').val() == "") {
 			alert("이루고 싶은 것을 입력하세요");
 			$('#mybkListWrite').focus();
 			return false;
 		}
 	});
 	
 	// 나의 버킷리스트 삭제
 	$('#deletemyBKLBtn').on('click', function(){
 	 	// 선택 여부 확인 : 하나라도 선택하면 true, 아무것도 선택하지 않으면 false
 	 	var checked = $('.myBKLchkDelete').is(':checked');
 	 	
 	 	if(checked) { //하나라도 선택한 경우
 	 		var answer = confirm("선택된 버킷리스트를 삭제하시겠습니까?");
 	 		
 	 		if(answer) {
 	 		// 체크된 체크박스의 mybkListNo를 배열에 추가
 	 		var checkArr = new Array();
 	 		$('.myBKLchkDelete:checked').each(function(){
 	 			checkArr.push($(this).val());
 	 		});
 	 		
 	 		// 서버로 전송
 	 		$.ajax({
	 			type:"post",
	 			url:"/myBKList/deletemyBKList",
	 			data:{"chbox":checkArr},
	 			success:function(result){
	 				if(result == 1){	 					
	 					location.href="/myBKList";
	 				}
	 			},
	 			error:function(){
	 				alert("실패");
	 			}
	 		}); // ajax 종료 	
 	 	
 	 		}
 	 	
 	 	} else { //아무것도 선택하지 않은 경우
 	 		alert("선택된 버킷리스트가 없습니다");
 	 	}
 	 });
 	 
 	//완료버튼 클릭 시 테이블의 mybkListFinished 값 체크 후 변경
 	$('.MYcompleteBtn').on('click',function() {
 		var mybkListNo = $(this).val();
 	
  		$.ajax({
	 		type:"post",
	 		url:"/myBKList/FinishedmyBKList",
	 		data:{ "mybkListNo": mybkListNo },
	 		success:function(result){
	 			if(result == 0){
	 				alert("완료!");
	 				location.href="/myBKList";
	 			}
	 			else {
	 				alert("완료 취소!");
	 				location.href="/myBKList";
	 			}
	 		},
	 		error:function(){
	 			alert("실패");
	 		}
	 	}); // ajax 종료
  	});
  	
  	// mybkListFinished의 값이 1이면 CSS 적용 0이면 해제
  	$('.mybkListFinished').each(function() {
		if ($(this).val() == 1) {
		$(this).closest('td').prev().addClass("completed");
		}
	    else {
	    	$(this).closest('td').prev().removeClass("completed");
	    }
	});
	
	//전체, 완료, 미완료 라디오 버튼 
	$("#AllViewMY").change(function(){
      if($(this).is(":checked")){
         $("td .mybkListFinished[value='1']").parent().parent().show();
         $("td .mybkListFinished[value='0']").parent().parent().show();
      }
   	});
	$("#CompletedMY").change(function(){
      if($(this).is(":checked")){
         $("td .mybkListFinished[value='1']").parent().parent().show();
         $("td .mybkListFinished[value='0']").parent().parent().hide();
      }
      else {
      	$("td .mybkListFinished[value='0']").parent().parent().show();
      }
   });
   $("#NotCompletedMY").change(function(){
      if($(this).is(":checked")){
         $("td .mybkListFinished[value='0']").parent().parent().show();
         $("td .mybkListFinished[value='1']").parent().parent().hide();
      }
      else {
      	$("td .mybkListFinished[value='1']").parent().parent().show();
      }
   });
	
  	
	/** ========== 나의 버킷리스트 js 구간 끝 ========== **/
	
	
	/** ========== 모두의 버킷리스트 js 구간 시작 ========== **/
	
	
	// 모두의 버킷리스트 삭제
 	$('#deletemycomBKLBtn').on('click', function(){
 	 	// 선택 여부 확인 : 하나라도 선택하면 true, 아무것도 선택하지 않으면 false
 	 	var checked = $('.mycomBKLchkDelete').is(':checked');
 	 	
 	 	if(checked) { //하나라도 선택한 경우
 	 		var answer = confirm("선택된 버킷리스트를 삭제하시겠습니까?");
 	 		
 	 		if(answer) {
 	 		// 체크된 체크박스의 mybkListNo를 배열에 추가
 	 		var checkArr = new Array();
 	 		$('.mycomBKLchkDelete:checked').each(function(){
 	 			checkArr.push($(this).val());
 	 		});
 	 		
 	 		// 서버로 전송
 	 		$.ajax({
	 			type:"post",
	 			url:"/myBKList/deletemycomBKList",
	 			data:{"chbox":checkArr},
	 			success:function(result){
	 				if(result == 1){	 					
	 					location.href="/myBKList";
	 				}
	 			},
	 			error:function(){
	 				alert("실패");
	 			}
	 		}); // ajax 종료 	
 	 	
 	 		}
 	 	
 	 	} else { //아무것도 선택하지 않은 경우
 	 		alert("선택된 버킷리스트가 없습니다");
 	 	}
 	 });
 	 
 	 //완료버튼 클릭 시 테이블의 mycombkListFinished 값 체크 후 변경
 	$('.COMcompleteBtn').on('click',function() {
 		var mycombkListNo = $(this).val();
 	
  		$.ajax({
	 		type:"post",
	 		url:"/myBKList/FinishedmycomBKList",
	 		data:{ "mycombkListNo": mycombkListNo },
	 		success:function(result){
	 			if(result == 0){
	 				alert("완료!");
	 				location.href="/myBKList";
	 			}
	 			else {
	 				alert("완료 취소!");
	 				location.href="/myBKList";
	 			}
	 		},
	 		error:function(){
	 			alert("실패");
	 		}
	 	}); // ajax 종료
  	});
  	
  	// mycombkListFinished의 값이 1이면 CSS 적용 0이면 해제
  	$('.mycombkListFinished').each(function() {
		if ($(this).val() == 1) {
		$(this).closest('td').prev().prev().addClass("completed");
		}
	    else {
	    	$(this).closest('td').prev().prev().removeClass("completed");
	    }
	});
	
	//전체, 완료, 미완료 라디오 버튼 
	$("#AllViewCOM").change(function(){
      if($(this).is(":checked")){
         $("td .mycombkListFinished[value='1']").parent().parent().show();
         $("td .mycombkListFinished[value='0']").parent().parent().show();
      }
   	});
	$("#CompletedCOM").change(function(){
      if($(this).is(":checked")){
         $("td .mycombkListFinished[value='1']").parent().parent().show();
         $("td .mycombkListFinished[value='0']").parent().parent().hide();
      }
      else {
      	$("td .mycombkListFinished[value='0']").parent().parent().show();
      }
   });
   $("#NotCompletedCOM").change(function(){
      if($(this).is(":checked")){
         $("td .mycombkListFinished[value='0']").parent().parent().show();
         $("td .mycombkListFinished[value='1']").parent().parent().hide();
      }
      else {
      	$("td .mycombkListFinished[value='1']").parent().parent().show();
      }
   });
   
   $('.combkdetailView').on('click',function() {
 		var combkListNo = $(this).val();
 		
 		location.href="/comBKList/comBkListDetailpage/" + combkListNo;
 	});
	
	/** ========== 모두의 버킷리스트 js 구간 끝 ========== **/
	
 });

  	