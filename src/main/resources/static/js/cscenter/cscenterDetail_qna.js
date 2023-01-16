/**
 * cscenter.js
 */
 
 $(document).ready(function(){
 	$("#update").on('click',function(){
			window.location.href = "/cscenter/qnaUpdateForm/{qnaNo}/";
		});
	$("#delete").on('click',function(){
			window.location.href = "/cscenter/deleteQna/{qnaNo}/";
		});
		
		
});