/** index.js **/

/* 스크롤 효과 */
window.onload = function(){
    class FolderScroll {
        constructor(wrapper, sticky) {
            this.wrapper = wrapper;
            this.sticky = sticky;
            this.children = this.sticky.querySelectorAll(".section");
            this.length = this.children.length;
            this.headerVh = 6;
            this.contentVh = 94.5 - this.headerVh * this.length;
            this.start = 0;
            this.end = 0;
        }

        init() {
            this.start = this.wrapper.offsetTop + 100;
            this.end = this.wrapper.offsetTop + this.wrapper.offsetHeight - window.innerHeight - 100;

            for (let i = 0; i < this.children.length; i++) {
                let child = this.children[i];
                child.style.bottom = (-100 + this.headerVh * (this.length - i)) + "vh";
                child.querySelector(".title").style.height = this.headerVh + "vh";
                child.querySelector(".content").style.height = this.contentVh + "vh";
            }
        }

        animate() {
            for (let i = 0; i < this.children.length; i++) {
                let child = this.children[i];
                let unit = (this.end - this.start) / this.length;
                let s = this.start + unit * i + 100;
                let e = this.start + unit * (i + 1);

                if (window.scrollY <= s) {
                    child.style.transform = `translate3d(0, 0, 0)`;
                } else if (window.scrollY >= e) {
                    child.style.transform = `translate3d(0, -${this.contentVh}%, 0)`;
                } else {
                    child.style.transform = `translate3d(0, ${((window.scrollY - s) / (unit - 100)) * -this.contentVh}%, 0)`;
                }
            }
        }
    }

    let mainContent1 = document.querySelector(".main-content-1");
    let sticky = document.querySelector(".sticky");
    let folderScroll = new FolderScroll(mainContent1, sticky);
    folderScroll.init();

    window.addEventListener("resize", function() {
        folderScroll.init();
    });
    window.addEventListener("scroll", function() {
        folderScroll.animate();
    });
}


 /** ========== 슬라이드 쇼 js 구간 ========== **/
$(document).ready(function(){
 	// 이동한 이미지의 index 값 저장 (현재 위치)
	var movedIndex = 0;
	
	// 실제로 슬라이드 패널을 움직이는 함수
	function moveSlide(index){
		//전달 받은 index 값을 movedIndex에 저장
		movedIndex = index;
		
		// 슬라이드 이동
		//var largemoveLeft = -(index * 1920); // 왼쪽으로 이동 거리
		//$('#largeSlidePanel').animate({'left': largemoveLeft}, 'slow');
		
		//var smallmoveLeft = -(index * 1600); // 왼쪽으로 이동 거리
		//$('#smallslidePanel').animate({'left': smallmoveLeft}, 'slow');
		var largemoveLeft = -(index * 100);
		$('#largeSlidePanel').animate({'left': largemoveLeft+'vw'}, 'slow');

		var smallmoveLeft = -(index * 83.3);
		$('#smallslidePanel').animate({'left': smallmoveLeft+'vw'}, 'slow');
	}
	
	//슬라이드 자동 랜덤 슬라이드
	let loopInterval = setInterval(() => {
   		var randomNum = Math.floor(Math.random() * 6);
   		moveSlide(randomNum);
	}, 5000);
	
	// 슬라이드에 마우스가 올라간 경우 루프 멈추기
	$('.prevNextButton').on("mouseover", () => {
	  clearInterval(loopInterval);
	});

	// 슬라이드에서 마우스가 나온 경우 루프 재시작하기
	$('.prevNextButton').on("mouseout", () => {
	  	loopInterval = setInterval(() => {
   			var randomNum = Math.floor(Math.random() * 6);
   			moveSlide(randomNum);
		}, 6000);
	});
	
	// prev 버튼 클릭하면 앞으로 이동
	$('#prevButton').on('click', function(){
		if(movedIndex !=0)  // 첫 번째가 아니면
			movedIndex = movedIndex - 1; // 인덱스 값 - 1
		else
			movedIndex = 5;
		
		moveSlide(movedIndex);  // 실제로 슬라이드 패널을 움직이는 함수 호출하면 계산된 인덱스값 전달
	});	
	
	// next 버튼 클릭하면 뒤로 이동
	$('#nextButton').on('click', function(){
		if(movedIndex != 5)  // 마지막이 아니면
			movedIndex = movedIndex + 1; // 인덱스 값 + 1
		else
			movedIndex = 0;
		
		moveSlide(movedIndex); // 실제로 슬라이드 패널을 움직이는 함수 호출하면 계산된 인덱스값 전달
	});
	/** ========== 슬라이드 쇼 js 구간 끝 ========== **/
	
	$(window).on('scroll',function(){
		if($(document).scrollTop() >= $('#slideShowBox').height())
		{	
			$(".Mainnavbar").attr("class","navbar");
		}
		else
		{
			$(".navbar").attr("class","Mainnavbar");
		}
	});
 });

