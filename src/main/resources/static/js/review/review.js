/**
 * review.js
 */
 

$(document).ready(function(){    
 
    
    $cateBtn = $(".cateBtn");
	$cateBtn.each(function(index) {
		var search = ["", "여행", "운동", "음식", "문화", "음악","기타"];
	
		$('#categ' + (index+1)).on('click', function() {
			if(search[index] === "") {
				$(".review_container").show();
			} else {
				$(".review_container").hide();
				$('.review_container[value*=' + search[index] + ']').show();
			}
		});
	});
	
	
	var num=0;
	$(".heartbtnImg").on('click',function(){
		
		if(num==0){
			$(this).attr('src','/images/redheart.png');
			num=1;
		}else {
			$(this).attr('src','/images/heart.png');
			num=0;
		}
	}); 

	$("#newPost").on('click',function(){
			window.location.href = "/reviewRegister";
		});	
   
    
    
	//삭제
 	$(".deleteReviewBTN").on("click", function(){
        var reviewNo = $(this).val();

        if(confirm("정말 삭제하시겠습니까?")){
            $.ajax({
                type: "post",
                   url: "/deleteReview",
                   data: {"reviewNo": reviewNo},
                   success: function(data){
                      alert("삭제가 완료되었습니다.");
                      location.href="/reviewListView";
                },
                    error: function(error){
                     alert("실패");
                    }
             });
        }
    });	
    
    
    $('#searchForm').on('submit', function(){ 	
    
 		event.preventDefault();
 		
 		var formData = $(this).serialize();	
 			
	    $.ajax({
	      type:"post",
	      url:"reviewSearch",
	      data: formData,
 		  success:function(result){
 				$('#searchResultBox').html(result);
 		  },
	      error:function(){
	        alert("검색 내용을 선택해주세요.");
	      }
	    }); 	
  	});
    
    
    
    
    
    
    
    
    
    
 /*   $('#enter').on('click', function(){ 	
 		event.preventDefault();
 			
	    $.ajax({
	      type:"get",
	      url:"/showSearchResult",
	      data: {"keyword":$('#searchReview').val()},
	      dataType: "text",
	      success:function(result){ 
	        $('#reviewContainer').html(result);
	      },
	      error:function(){
	        alert("검색어를 입력해주세요.");
	      }
	    }); 	
  	});
    
    
 */   
    
    
    
    
    
    
    
 /*   
    //수정
	$(".updateReviewBTN").on("click", function(){
       var reviewNo = $(this).val();
       if(confirm("정말 수정하시겠습니까?"+reviewNo)){
         $.ajax({
		        type: "post",					        
		       	url: "/jsp/review/reviewUpdateForm/{reviewNo}",
		       	data: {"reviewNo": reviewNo},		       				
		       	success: 
				       	function(data){            
				        	location.href="/jsp/review/reviewUpdateForm";    
				    	},
				        error: function(error){
				         alert("실패");
				        }
     	});     }      
    });		
*/	
	
	/**	
 $(document).ready(function(){
 	$("#update").on('click',function(){
			location.href = "/cscenter/qnaUpdateForm/${qna.qnaNo}";
		});
	

	
	$("#delete").on('click',function(){
			var answer = confirm("삭제하시겠습니까?");
			if(answer){
				location.href = "<c:url value='/cscenter/deleteQna/${qna.qnaNo}'/>";
			}
		});
		onclick="reviewUpdate();"
		<script type="text/javascript">
		function reviewUpdate(){
				location.href = "<c:url value='/review/reviewUpdateForm/${rev.reviewNo}'/>";			
		}		
		</script>
*/
	
	
	   
});