<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header.jsp" />


<div class="culture_list">
	
	<div class="culture_list01">
		<a href="/culture/list?cate=concert">
			<img src="../images/culture/concert.png" alt="콘서트" width="70px" height="60px">
			<p>콘서트</p>
		</a>
	</div>
	<div class="culture_list02">
		<a href="/culture/list?cate=play">
			<img src="../images/culture/play.png" alt="연극" width="70px" height="60px">
			<p>연극</p>
		</a>
	</div>
	<div class="culture_list03">
		<a href="/culture/list?cate=musical">
			<img src="../images/culture/musical.png" alt="뮤지컬" width="70px" height="60px">
			<p>뮤지컬</p>
		</a>
	</div>
	<div class="culture_list04">
		<a href="/culture/list?cate=exhibition">
			<img src="../images/culture/exhibition.png" alt="전시회" width="70px" height="60px">
			<p>전시회</p>
		</a>
	</div>
</div>
<main class="mainEv">
	
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
<jsp:include page="../main/footer.jsp"/>
</main>
