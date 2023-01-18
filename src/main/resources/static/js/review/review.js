/**
 * review.js
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
	
	//업로드한 이미지로 이미지 변경하기
	$('#imgUpload').on('change', function(e1){
		//파일 데이터 가져오기
 		var file = e1.target.files[0];
 		console.log(file);
 		var reader = new FileReader();
 		reader.onload =function(e2){
			$('#preview').attr('src', e2.target.result);
		}
		reader.readAsDataURL(file);
		
		/*
		// 파일명 추출
 		var fileName = $('#imgUpload').val().split("\\").pop(); // 파일명만 추출
 		console.log(fileName);
 		
 		$.ajax({
 			type:"post",
 			url:"imgPull",
 			enctype:"multipart/form-data",
 			processData:false,
 			contentType:false, 			
 			data: form,
 			//data: formData,
 			success:function(result){
 				$('#preview').attr("src",'/upload/'+fileName);
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료  */	  
 		
	}); //이미지 클릭 이벤트 종료
/**
	$(funcion(){
		var num=0;
		$(".heartBtn").on('click',function(){
			if(num==0){
				$('this').attr('src','/images/redheart.png');
				num =1;
			}else {
				$('this').attr('src','/images/heart.png');
				num=0;
			}
		});
	});
	

	 	$('input').click(function(){
	  if($(this).hasClass("active")){
	    $(this).removeClass("active");
	  }else{
	    $(this).addClass("active");  
	  }
	});
*/	
	
    
});