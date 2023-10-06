<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<jsp:include page="new_header.jsp" />


	<div class="mainIndex">
		<main class="mainEv">


			<!--------------------------   광고 메인 베너  -------------------------->

			<section class="evMain">
				<div class="eventMsBox">
					<ul class="eventMs">
						<li><a href=""> <img src="/images/ev_images/intev1.avif"
								alt="">
						</a></li>
						<li><a href=""> <img src="/images/ev_images/intev2.avif"
								alt="">
						</a></li>
						<li><a href=""> <img src="/images/ev_images/intev3.avif"
								alt="">
						</a></li>
						<li><a href=""> <img src="/images/ev_images/intev4.avif"
								alt="">
						</a></li>
						<li><a href=""> <img src="/images/ev_images/intev5.avif"
								alt="">
						</a></li>
						<li><a href=""> <img src="/images/ev_images/intev6.avif"
								alt="">
						</a></li>
					</ul>
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
			<!--------------------------   이벤트 게시물 미리보기  -------------------------->
			
			<div class="evFont">
				<h3><strong>✍️ 인기 후기 게시글</strong></h3>
				<h5 style="color: rgb(90, 90, 90);">누가누가 더 잘 갔다왔나</h5>
				<div class="exBox">
					<ul class="exwrapbox">
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg1.jpg" alt="1"></a>
							</div>
							<div class="extext">
								<p><strong>양양 갔다온썰 푼다!</strong></p>
							</div>
						</li>
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg2.jpg" alt="2"></a>
							</div>
							<div class="extext">
								<p><strong>하노이 충격적 대모험</strong></p>
							</div>
						</li>
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg3.jpg" alt="3"></a>
							</div>
							<div class="extext">
								<p><strong>파리갔다가 이강인 만난썰</strong></p>
							</div>
						</li>
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg4.jpg" alt="4"></a>
							</div>
							<div class="extext">
								<p style="color: black;"><strong>비행기 안에서...</strong></p>
							</div>
						</li>
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg5.jpg" alt="5"></a>
							</div>
							<div class="extext">
								<p><strong>배낭여행 충격적 비밀</strong></p>
							</div>
						</li>
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg5.jpg" alt="5"></a>
							</div>
							<div class="extext">
								<p><strong>마카오 카지노 투어</strong></p>
							</div>
						</li>
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg5.jpg" alt="5"></a>
							</div>
							<div class="extext">
								<p><strong>한국 숨은 맛집</strong></p>
							</div>
						</li>
						<li class="exwrap">
							<div class="eximg">
								<a href=""><img src="/images/ev_images/eximg5.jpg" alt="5"></a>
							</div>
							<div class="extext">
								<p><strong>한국 버거 맛집 TOP10</strong></p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!--------------------------   탑 텐 상단 베너    -------------------------->


			<section class="evMain">
				<div class="evFont">
					<h1>✈️ Top 10</h1>
					<h5 style="color: rgb(93, 93, 93);">한달간 Hot 한 정보들만 다 모였다!!!</h5>
				</div>
				<div class="topTenBox">
					<ul class="topTen">
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<!-- --- 탑텐 이미지 --- -->
									<a href=""> <img src="/images/ev_images/feature-1.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-2.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-3.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-4.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="i/images/ev_images/feature-5.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-6.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-7.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
					</ul>

				</div>

			</section>
			<!--------------------------   이벤트 바로가기 버튼   -------------------------->



			<div class="butev">
				<button>
					<h4>
						<strong>🌮Taco Friday🌮</strong>
					</h4>
					<a href=""></a>
				</button>
				<button>
					<h4>
						<strong>🎂brithDay Party🎊</strong>
					</h4>
					<a href=""></a>
				</button>
				<button>
					<h4>
						<strong>⚽Let's Go Son7️⃣</strong>
					</h4>
					<a href=""></a>
				</button>
			</div>


			<!--------------------------   탑 텐 예술/문화 하단 베너 시작     -------------------------->


			<section class="topTen_cultureMain">
				<div class="evFont">
					<h1>🎫공연 Top 10</h1>
				</div>

				<div class="topTen_cultureBox">
					<ul class="topTen_culture">
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con01.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">

									<h5>&nbsp;&nbsp;제목</h5>
									<h5>&nbsp;&nbsp;가격</h5>

								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con02.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">

									<h5>&nbsp;&nbsp;제목</h5>
									<h5>&nbsp;&nbsp;가격</h5>

								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con03.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">

									<h5>&nbsp;&nbsp;제목</h5>
									<h5>&nbsp;&nbsp;가격</h5>

								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con04.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">

									<h5>&nbsp;&nbsp;제목</h5>
									<h5>&nbsp;&nbsp;가격</h5>

								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con05.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">

									<h5>&nbsp;&nbsp;제목</h5>
									<h5>&nbsp;&nbsp;가격</h5>

								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con06.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">

									<h5>&nbsp;&nbsp;제목</h5>
									<h5>&nbsp;&nbsp;가격</h5>

								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con07.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">

									<h5>&nbsp;&nbsp;제목</h5>
									<h5>&nbsp;&nbsp;가격</h5>

								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con08.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">
									<div>
										<h5>&nbsp;&nbsp;제목</h5>
										<h5>&nbsp;&nbsp;가격</h5>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="tpc">
								<div id="tpcimg">
									<a href=""> <img src="/images/ev_images/int-con09.gif"
										alt="1">
									</a>
								</div>
								<div id="tpctext">
									<div>
										<h5>&nbsp;&nbsp;제목</h5>
										<h5>&nbsp;&nbsp;가격</h5>
									</div>
								</div>
							</div>
						</li>

					</ul>
				</div>




				<!-- <div class="evViewAll">
                    <a href="">
                        <button>공연 전체보기</button>
                    </a>
                </div> -->
			</section>



			<!--------------------------   탑 텐 하단 베너   -------------------------->



			<section class="evMain">
				<div class="evFont">
					<h1>주간 할인 상품</h1>
				</div>

				<div class="topTenBox">
					<ul class="topTen">
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<!-- --- 탑텐 이미지 --- -->
									<a href=""> <img src="/images/ev_images/feature-1.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-2.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-3.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-4.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="i/images/ev_images/feature-5.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-6.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
						<li>
							<div class=tpbox>
								<div class="tpimg">
									<a href=""> <img src="/images/ev_images/feature-7.jpg"
										alt="1">
									</a>
								</div>
								<div id="tpbutton">
									<h4>카테고리</h4>
								</div>
								<div id="tptext">
								<br>
									<!-- ---- 탑텐 텍스트 정보 ---- -->
									<h5>&nbsp;가게이름</h5>
									<h5>&nbsp;가격</h5>
									<h5>&nbsp;상세내용</h5>
								</div>
							</div>
						</li>
					</ul>

				</div>


				<!-- <div class="evViewAll">
                    <a href="">
                        <button>이벤트 전체보기</button>
                    </a>
                </div> -->
			</section>



			<!--------------------------   탑 텐 하단 베너 끝     -------------------------->
			<div>
				<div class="butev">
				<button>
					<h4> 
						<strong>📓공 지 사 항</strong>
					</h4>
					<a href=""></a>
				</button>
				<button>
					<h4>
						<strong>✍️고 객 게 시 판</strong>
					</h4>
					<a href=""></a>
				</button>
				<button>
					<h4>
						<strong>📢문 의 사 항</strong>
					</h4>
					<a href=""></a>
				</button>
				<button>
					<h4>
						<strong>🏪입 점 등 록</strong>
					</h4>
					<a href=""></a>
				</button>
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
					slidesToShow : 3,
					slidesPerRow : 2,
					slidesToScroll : 1,
					arrows : true, //이전 다음 버튼 표시 여부(true or false) ▶기본값 true
					dots : false, // 네비게이션 바 사용

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
					arrows : true, //이전 다음 버튼 표시 여부(true or false) ▶기본값 true
					dots : false, // 네비게이션 바 사용
					appendDots : $('.topTen'), // 네비게이션 바를 추가한 요소에 연결
				});

				$('.exwrapbox').slick({
					infinite : false,
					slidesToShow : 4,
					slidesToScroll : 1,
					arrows : false,
					dots : true,
					appendDots : $('.exwrapbox'),
				});
			</script>



<jsp:include page="footer.jsp" />
		</main>
	</div>

	
	
</body>



