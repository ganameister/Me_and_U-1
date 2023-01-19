/**
 * comBKListDetailpage.js
 */
 
 $(document).ready(function() {
 	//삭제 버튼
	$("#deleteComBKListBTN").on("click", function(){
    var combkListNo = $(this).data("combklistno");
    if(confirm("정말 삭제하시겠습니까?")){
      $.ajax({
        type: "GET",
        url: "/comBKList/deletecomBKList",
        data: {"combkListNo": combkListNo},
        success: function(data){
          alert("삭제가 완료되었습니다.");
          location.href="/comBKList";
        },
        error: function(error){
          alert("실패");
        }
      });
    }
  });
 });
 
 