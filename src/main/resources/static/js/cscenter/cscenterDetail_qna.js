/**
 * cscenter.js
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
*/		
		
});