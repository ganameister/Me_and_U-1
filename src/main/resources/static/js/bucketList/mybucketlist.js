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
	
	
	// 줄긋기 css
	$('.listCompleteBtn').on('click',function() {
  		//현재 row의 정보 가져오기 
  		var thisRow = $(this).closest('tr'); 
  
	    //주소 input 값 가져오기
	    thisRow.find('td:eq(1)').css("text-decoration","line-through");
  	});
  	
  	$('.listCompleteBtn').on('click',function() {
  		$.ajax({
	 		type:"post",
	 		url:"/myBKList/FinishedmyBKList",
	 		success:function(result){
	 			if(result == 0){
	 				var thisRow = $(this).closest('tr');
	 				thisRow.find('td:eq(1)').css("text-decoration","line-through");				
	 			}
	 		},
	 		error:function(){
	 			alert("실패");
	 		}
	 	}); // ajax 종료
  	});
  	
  	// 나의 버킷리스트 등록
  	/* $('#listInsertBtn').on('click', function() {
 		event.preventDefault();
 	
 		$.ajax({
 			type:"post",
 			url:"/InsertmyBKList",
 			data:{"listInsertText":$('#listInsertText').val()},
 			dataType:"text",
 			success:function(result) {
 				if (result != null) {
 					alert("나의 버킷리스트가 등록되었습니다");
 					$("#boardTextList").append("<p>" + result + "</p>");
 				} else {
 					alert("나의 버킷리스트를 불러오지 못했습니다");
 				}
 			},
 			error:function() {
 				alert("실패했습니다 다시 시도해주세요");
 			},
 			complete:function() {
 			}
 		});
 	});*/
 	
 	// 나의 버킷리스트 삭제
 	$('#deletemyBKLBtn').on('click', function(){
 	 	// 선택 여부 확인 : 하나라도 선택하면 true, 아무것도 선택하지 않으면 false
 	 	var checked = $('.chkDelete').is(':checked');
 	 	
 	 	if(checked) { //하나라도 선택한 경우
 	 		var answer = confirm("선택된 버킷리스트를 삭제하시겠습니까?");
 	 		
 	 		if(answer) {
 	 		// 체크된 체크박스의 cartNo를 배열에 추가
 	 		var checkArr = new Array();
 	 		$('.chkDelete:checked').each(function(){
 	 			checkArr.push($(this).attr("data-mybkListNo"));
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
 	
	/** ========== 나의 버킷리스트 js 구간 끝 ========== **/
	
 });

  	