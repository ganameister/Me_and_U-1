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
	
	
	// 카테고리 필터링
	$cateBtn = $(".cateBtn");
	$cateBtn.each(function(index) {
		var search = ["", "여행", "운동", "게임", "문화", "음악","기타"];
		$('#categ' + (index+1)).on('click', function() {
			if(search[index] == "") {
				$(".itemContainer").show();
			} else {
				$(".itemContainer").hide();
				$('.itemContainer[value*=' + search[index] + ']').show();
			}
		});
	});
	
	// 최신순, 조회순, 이름순 정렬
	$("#sortcomBKList").change(function(){
        $("#sortForm").submit();
    });
	
	
	//등록폼 진입
	$('#registerBtn').on('click',function() {
		window.location.href = "/comBKList/comBKListRegister";
	});
	
	//업로드한 이미지로 이미지 변경하기
	$('#uploadFileOrigin').on('change', function(e1){
		//파일 데이터 가져오기
 		var file = e1.target.files[0];
 		console.log(file);
 		var reader = new FileReader();
 		reader.onload =function(e2){
			$('#preview').attr('src', e2.target.result);
		}
		reader.readAsDataURL(file);
	}); //이미지 클릭 이벤트 종료
	
	// 모두의 버킷리스트 등록 시 공백일 때
	$('.info_Input').on('click',function() {
	
		// 제목이 공백일 때
		if($('.gatherInfo_input3').val() == "") {
			alert("제목을 입력하세요");
			$('.gatherInfo_input3').focus();
			return false;
		// 카테고리를 선택 안했을 때
		} else if($('.selectCTG').val() == "카테고리 선택") {
			alert("카테고리를 선택하세요");
			$('.selectCTG').focus();
			return false;
		// 한줄 설명이 공백일 때
		} else if($('.gatherInfo_input2').val() == "") {
			alert("한줄 설명을 입력하세요");
			$('.gatherInfo_input2').focus();
			return false;
		// 이미지 선택을 안했을 때
		} else if($('#uploadFileOrigin').val() == "") {
			alert("이미지를 선택하세요");
			$('#uploadFileOrigin').focus();
			return false;
		// 상세 설명이 공백일 때
		} else if($('#summernote').val() == "") {
			alert("상세 설명을 입력하세요");
			$('#summernote').focus();
			return false;
		}
	});
		
		
 });
 
 

  	