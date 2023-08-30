<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />



<div class="main">
	<div class="menu">
		<div class="menu_list01">
			<a href="/accommodation/acc_index.jsp"> <img
				src="/images/main/travel.png" alt="숙소" width="70px" height="60px">
				<p>숙소</p>
			</a>
		</div>
		<div class="menu_list02">
			<a href="/restaurant/rest_index.jsp"> <img
				src="/images/main/restaurant.png" alt="식당" width="70px"
				height="60px">
				<P>식당</P>
			</a>
		</div>
		<div class="menu_list03">
			<a href="/culture/culture_index.jsp"> <img
				src="/images/main/ticket.png" alt="문화" width="70px" height="60px">
				<P>문화</P>
			</a>
		</div>
		<div class="menu_list04">
			<a href="/beauty/beaty_index.jsp"> <img
				src="/images/main/makeup.png" alt="뷰티" width="70px" height="60px">
				<p>뷰티</p>
			</a>
		</div>
	</div>
	<div></div>

	<div class="evFont">
		<h1>오늘의 추천</h1>
	</div>

	<section class="eventMs">
		<div>
			<a href="https://google.com"> <img
				src="/images/ev_images/intev1.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.naver.com"> <img
				src="/images/ev_images/intev2.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.yanolja.com"> <img
				src="/images/ev_images/intev3.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.goodchoice.kr"> <img
				src="/images/ev_images/intev4.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.airbnb.co.kr"> <img
				src="/images/ev_images/intev5.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.airbnb.co.kr"> <img
				src="/images/ev_images/intev6.avif" alt="">
			</a>
		</div>
	</section>

	<script type="text/javascript">
		$('.eventMs').slick({
			slidesToShow : 2,
			slidesToScroll : 1,
			autoplay : true,
			autoplaySpeed : 12000,
		});
	</script>

	<div class="evFont">
		<h1>Top 10</h1>
	</div>

	<section class="topTen">

		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-1.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-2.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-3.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-4.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-5.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-6.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-7.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-8.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-9.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/feature-10.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>

	</section>
	<div class="evViewAll">
		<a href="https://google.com">
			<button>Top 10 전체보기</button>
		</a>
	</div>
	<div class="evFont">
		<h1>공연 Top 10</h1>
	</div>
	
	<section class="topTen_culture">
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con01.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;노엘 갤러거 떳다</h4>
				<h4>&nbsp;&nbsp;잠실 주경기장 이겠지?</h4>
				<h4>가격 : 존나 비쌉니다</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con02.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;SomeDay Festival</h4>
				<h4>&nbsp;&nbsp;솔직히 뭔지 몰루</h4>
				<h4>가격만 혜자면 갈만하겟지?</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con03.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;샘쓰미스 와 혀빨이</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con04.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;데이븯 첫 내한</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con05.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;틴탑 이면 아이돌인가?</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con06.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;10cm 썸머  Vol.3</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con07.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;Happy day</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con08.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;시경이형 콘서뜨</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con09.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;켄도 공연 왓다!</h4>
			</div>
		</div>
		<div class="tpbox_culture">
			<a href="https://google.com"> <img
				src="/images/ev_images/int-con10.gif" alt="1">
			</a>
			<div id="tptext_culture">
				<h4>&nbsp;&nbsp;하나 혹은 일</h4>
			</div>
		</div>
		
	</section>
	<div class="evViewAll">
		<a href="https://google.com">
			<button>공연 Top 10 전체보기</button>
		</a>
	</div>

	<div class="evFont">
		<h1>주간 할인 상품</h1>
	</div>
	
	<section class="topTen">

		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest01.jpg" alt="1">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest02.jpg" alt="2">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest03.jpg" alt="3">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest04.jpg" alt="4">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest05.jpg" alt="5">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest06.jpg" alt="6">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest07.jpg" alt="7">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest08.jpg" alt="8">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest09.jpg" alt="9">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>
		<div class=tpbox>
			<a href="https://google.com"> <img
				src="/images/ev_images/yj_rest10.jpg" alt="10">
			</a>
			<div id="tptext">
				<h4>&nbsp;방 보고 가요</h4>
			</div>
		</div>

	</section>


</div>
<div class="evViewAll">
	<a href="https://google.com">
		<button>주간 할인 상품 전체보기</button>
	</a>
</div>


<script type="text/javascript">
	$('.topTen').on(
			'init reInit afterChange',
			function(event, slick, currentSlide) {
				const $prevButton = $(this).find('.slick-prev');
				const $nextButton = $(this).find('.slick-next');

				if (currentSlide === 0) {
					$prevButton.hide();
				} else {
					$prevButton.show();
				}

				if (currentSlide === slick.slideCount
						- slick.options.slidesToShow) {
					$nextButton.hide();
				} else {
					$nextButton.show();
				}
			});

	$('.topTen').slick({
		infinite : false,
		slidesToShow : 4,
		slidesToScroll : 1,
		 
	});
	
	$('.topTen_culture').on(
			'init reInit afterChange',
			function(event, slick, currentSlide) {
				const $prevButton = $(this).find('.slick-prev');
				const $nextButton = $(this).find('.slick-next');

				if (currentSlide === 0) {
					$prevButton.hide();
				} else {
					$prevButton.show();
				}

				if (currentSlide === slick.slideCount
						- slick.options.slidesToShow) {
					$nextButton.hide();
				} else {
					$nextButton.show();
				}
			});

	$('.topTen_culture').slick({
		infinite : false,
		slidesToShow : 4,
		slidesToScroll : 1,
	});
</script>





<jsp:include page="footer.jsp" />

