<%@ page language="java" contentType="text/html; charset=UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../main/new_header4.jsp" />
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<div class="main_shop">
<div class="shop_List">
	<div class="filter">
		<div class="filter_top">
			<div>
				<h4>가격 설정</h4>
				<p>1박 기준 요금</p>
			</div>
			<button>필터 초기화</button>
		</div>
		<hr>

		<div class="price_range">
			<h5>가격대</h5>
			<div class="middle">
				<div class="multi-range-slider">
					<input type="range" id="input-left" min="0" max="100" value="25">
					<input type="range" id="input-right" min="0" max="100" value="75">

					<div class="slider">
						<div class="track"></div>
						<div class="range"></div>
						<div class="thumb left"></div>
						<div class="thumb right"></div>
					</div>
				</div>
				<script src="../js/price_range.js"></script>
			</div>
		</div>

		<div class="price_input">
			<input type="text" name="min_price" class="text_box" value="10000">
			~ <input type="text" name="max_price" class="text_box"
				value="16000000">
		</div>
		<hr>
		<div class="theme">
			<h5>테마</h5>
			<input type="checkbox" name="all3"
				onclick="allselect3(this.checked);"> <label>전체</label> <br>
			<input type="checkbox" name="theme"> <label>반려동물</label> <br>
			<input type="checkbox" name="theme"> <label>커플</label> <br>
			<input type="checkbox" name="theme"> <label>가족</label>
		</div>
		<hr>

		<div class="grade">
			<h5>평점</h5>
			<input type="checkbox"> 전체 <br> <input type="checkbox">
			9점이상 <br> <input type="checkbox"> 8점 <br> <input
				type="checkbox"> 7점 <br> <input type="checkbox">
			6점 <br> <input type="checkbox"> 5점
		</div>
		<hr>

		<div class="additional_facilities">
			<h5>부대시설</h5>
			<input type="checkbox"> 전체 <br> <input type="checkbox">
			수영장 <br> <input type="checkbox"> 사우나 <br> <input
				type="checkbox"> 스파 <br> <input type="checkbox">
			키즈라운지 <br>
		</div>

	</div>
	<div class="list_page">
		<div class="list_top">
			<ul>
				<li class="cate_name"><c:if test="${param.cate == 'motel'}">
						<img src="../images/acc/motel.png">
					</c:if> <c:if test="${param.cate == 'hotel'}">
						<img src="../images/acc/hotel.png">
					</c:if> <c:if test="${param.cate == 'pension'}">
						<img src="../images/acc/poolhouse.png">
					</c:if> <c:if test="${param.cate == 'camping'}">
						<img src="../images/acc/camping.png">
					</c:if></li>
				<li class="region_name"><c:if
						test="${param.detail_cate == 'motel'}">
						'<span class="fontcolor"><strong> .🏩모텔 </strong></span>' 검색결과
					</c:if> <c:if test="${param.detail_cate == 'hotel'}">
						'<span class="fontcolor"><strong> 🛎️호텔 </strong></span>' 검색결과
					</c:if> <c:if test="${param.detail_cate == 'pension'}">
						'<span class="fontcolor"><strong> 🏠팬션 / 풀빌라 </strong></span>' 검색결과
					</c:if> <c:if test="${param.detail_cate == 'camping'}">
						'<span class="fontcolor"><strong> 🏕️캠필 /글램핑 </strong></span>' 검색결과
					</c:if></li>
				<li>&nbsp;&nbsp;['${countStore }'개의 검색 결과]</li>
			</ul>


		</div>

		<div class="list_main">
			<div class="row">
				<div class="col-md-9">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							id="popularity-tab" data-toggle="tab" href="#popularity"
							role="tab" aria-controls="popularity" aria-selected="true">인기순</a></li>
						<li class="nav-item"><a class="nav-link" id="rating-tab"
							data-toggle="tab" href="#rating" role="tab"
							aria-controls="rating" aria-selected="false">평점 높은 순</a></li>
						<li class="nav-item"><a class="nav-link" id="price-tab"
							data-toggle="tab" href="#price" role="tab" aria-controls="price"
							aria-selected="false">낮은 가격순</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="popularity"
							role="tabpanel" aria-labelledby="popularity-tab">
							<!-- 인기순 콘텐츠가 여기에 들어갑니다 -->
							<c:forEach var="store" items="${list.content }">

								<div class="list_div">
									<div class="img">
										<a
											href='/acc/cont?detail_cate=${store.detailCate}&store_num=${store.storeNum}'><img
											src="/upload/store_logo${store.storeLogo}"></a>
									</div>
									<div class="list_cont">
										<div class="list_name">
											<h3>${store.storeName }</h3>
										</div>
										<div class="list_addr">
											<p>${store.storeAddr1 }</p>
										</div>
										<div class="list_detail">
											<div class="cate_list">호텔</div>
										</div>
										<div class="list_star">
											<p>⭐⭐⭐⭐</p>
											<p id="list_count">리뷰 196</p>
										</div>

									</div>
									<div class="list_cont2">
										<div class="list_JJim">
											<div class="jjim_but">
												<button type="button" onclick="imgToggle()">
													<div id="yes">💖</div>
												</button>
												<button>
													<div id="no">💔</div>
												</button>
											</div>
										</div>


										<div class="list_price">
											<h2>
												<strong>75,000원</strong>
											</h2>
											<h5>* 세금 포함된 가격입니다</h5>
										</div>
									</div>
								</div>

							</c:forEach>
							<hr>
						</div>
						<div class="tab-pane fade" id="rating" role="tabpanel"
							aria-labelledby="rating-tab">
							<!-- 평점 높은 순 콘텐츠가 여기에 들어갑니다 -->
							<c:forEach var="store" items="${list.content }">

								<div class="list_div">
									<div class="img">
										<a
											href='/acc/cont?detail_cate=${store.detailCate}&store_num=${store.storeNum}'><img
											src="/upload/store_logo${store.storeLogo}"></a>
									</div>
									<div class="list_cont">
										<div class="list_name">
											<h3>${store.storeName }</h3>
										</div>
										<div class="list_addr">
											<p>${store.storeAddr1 }</p>
										</div>
										<div class="list_detail">
											<div class="cate_list">호텔</div>
										</div>
										<div class="list_star">
											<p>⭐⭐⭐⭐</p>
											<p id="list_count">리뷰 196</p>
										</div>

									</div>
									<div class="list_cont2">
										<div class="list_JJim">
											<div class="jjim_but">
												<button type="button" onclick="imgToggle()">
													<div id="yes">💖</div>
												</button>
												<button>
													<div id="no">💔</div>
												</button>
											</div>
										</div>


										<div class="list_price">
											<h2>
												<strong>75,000원</strong>
											</h2>
											<h5>* 세금 포함된 가격입니다</h5>
										</div>
									</div>
								</div>

							</c:forEach>
							<hr>
						</div>
						<div class="tab-pane fade" id="price" role="tabpanel"
							aria-labelledby="price-tab">
							<!-- 낮은 가격순 콘텐츠가 여기에 들어갑니다 -->
							<c:forEach var="store" items="${list.content }">

								<div class="list_div">
									<div class="img">
										<a
											href='/acc/cont?detail_cate=${store.detailCate}&store_num=${store.storeNum}'><img
											src="/upload/store_logo${store.storeLogo}"></a>
									</div>
									<div class="list_cont">
										<div class="list_name">
											<h3>${store.storeName }</h3>
										</div>
										<div class="list_addr">
											<p>${store.storeAddr1 }</p>
										</div>
										<div class="list_detail">
											<div class="cate_list">호텔</div>
										</div>
										<div class="list_star">
											<p>⭐⭐⭐⭐</p>
											<p id="list_count">리뷰 196</p>
										</div>

									</div>
									<div class="list_cont2">
										<div class="list_JJim">
											<div class="jjim_but">
												<button type="button" onclick="imgToggle()">
													<div id="yes">💖</div>
												</button>
												<button>
													<div id="no">💔</div>
												</button>
											</div>
										</div>


										<div class="list_price">
											<h2>
												<strong>75,000원</strong>
											</h2>
											<h5>* 세금 포함된 가격입니다</h5>
										</div>
									</div>
								</div>

							</c:forEach>
							<hr>
						</div>
					</div>

				</div>

			</div>
		</div>

		<div class="pagination">

			<c:if test="${not empty list}">
				<div class="pagination-list">
					<table>
						<tr>
							<td><a href="?page=0">첫 페이지 /</a></td>




							<td><a href="?page=${list.totalPages - 1}">/ 마지막 페이지</a></td>
						</tr>

					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>
<jsp:include page="../main/footer.jsp" />
</div>

<script>
	var currentPage = $
	{
		list.number
	}; // 현재 페이지 번호
	var pageSize = 5; // 한 번에 보여줄 페이지 인덱스 수

	if (endPage > totalPages) {
		endPage = totalPages;
	}

	if (currentPage > 0) { // 현재 페이지가 1보다 큰 경우에만 "이전" 링크를 생성
		document.write('<td><a href="?detail_cate=${param.detail_cate}&page='
				+ (currentPage - 1) + '">이전</a></td>');
	} else {
		document.write('');
	}

	for (var i = startPage; i <= endPage; i++) {
		document.write('<td><a href="?detail_cate=${param.detail_cate}&page='
				+ (i - 1) + '">' + i + '</a></td>');
	}

	if (currentPage < totalPages - 1) { // 현재 페이지가 마지막 페이지에서 두 번째 페이지보다 작을 경우에만 "다음" 표시
		document.write('<td><a href="?detail_cate=${param.detail_cate}&page='
				+ (currentPage + 1) + '">다음</a></td>');
	}
	console.log(currentPage);
</script>

