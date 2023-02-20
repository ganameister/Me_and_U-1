/**
 * gatherListView.js
 */
 

$(document).ready(function(){

    //$("gatherJoy").val(ctgVal).prop("selected", true);

    //등록 페이지로 이동
    $('#newRegisterBtn').on('click',function(){
        location.href="/regGatherRegister";

    });

    var barProgress = jQuery(".progressbar");
     //barProgress.eq(1).progressbar({value:75});
    barProgress.eq(1).find(".ui-progressbar-value").css({"background":"#FFCC66"});

    $('#gatherJoy').on("change", function(){
        $("#ctgSelectForm").submit();
    });


    $('#gatherArea').on("change", function() {
        $("#ctgSelectForm").submit();
    });


});//레디 종료