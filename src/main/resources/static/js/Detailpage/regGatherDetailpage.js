/**
 * comBKListDetailpage.js
 */
 
 $(document).ready(function() {
	//삭제 버튼
	$("#deleteRegBTN").on("click", function(){
	    var regGatherNo = $(this).data("reggatherno");
	    if(confirm("정말 삭제하시겠습니까?")){
	    	$.ajax({
	        	type: "get",
	       		url: "/deleteregG",
	       		data: {"regGatherNo": regGatherNo},
	       		success: function(data){
	          		alert("삭제가 완료되었습니다.");
	          		location.href="/regGatherListView";
	        	},
	       		 error: function(error){
	         		alert("실패");
	       		 }
	     	});
	    }
	});
	
	// (나의 버킷리스트) 모두의 버킷리스트 목록에 추가 (중복 검사 포함)
	$('#TryBTN').on('click',function() {
    var regGatherNo = $(this).data("reggatherno");
    if(confirm("모임에 들어가시겠습니까?")){
        $.ajax({	// 중복 검사
            type: "get",
            url: "/mypage/regGatherInsertCheck",
            data: {"regGatherNo": regGatherNo},
            success: function(data){
                if(data == 0){
                    $.ajax({
                        type: "get",
                        url: "/mypage/regGatherInsert",
                        data: {"regGatherNo": regGatherNo},
                        success: function(data){
                            alert("목록 추가 완료.");
                            location.href="/mypage";
                        },
                        error: function(error){
                            alert("로그인 후 이용해주세요.2");
                        }
                    });
                }else{
                    alert("동일한 모임이 존재합니다.");
                }
            },
            error: function(error){
                alert("로그인 후 이용해주세요.3");
            }
        });
    }
});
	
});
 
 