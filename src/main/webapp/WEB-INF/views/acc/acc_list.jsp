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
						'<span class="fontcolor"><strong> .모텔 </strong></span>' 검색결과
					</c:if> <c:if test="${param.detail_cate == 'hotel'}">
						'<span class="fontcolor"><strong> 호텔 </strong></span>' 검색결과
					</c:if> <c:if test="${param.detail_cate == 'pension'}">
						'<span class="fontcolor"><strong> 팬션 / 풀빌라 </strong></span>' 검색결과
					</c:if> <c:if test="${param.detail_cate == 'camping'}">
						'<span class="fontcolor"><strong> 캠필 /글램핑 </strong></span>' 검색결과
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
						role="tab" aria-controls="popularity" aria-selected="true">최신순</a></li>
					<li class="nav-item"><a class="nav-link" id="rating-tab"
						data-toggle="tab" href="#rating" role="tab" aria-controls="rating"
						aria-selected="false">평점 높은 순</a></li>
					<li class="nav-item"><a class="nav-link" id="price-tab"
						data-toggle="tab" href="#price" role="tab" aria-controls="price"
						aria-selected="false">낮은 가격순</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade show active" id="popularity"
						role="tabpanel" aria-labelledby="popularity-tab">
						<!-- 인기순 콘텐츠가 여기에 들어갑니다 -->
						<c:forEach var="store" items="${list }" varStatus="loop">

							<div class="list_div">
								<div class="img">
									<a
										href='/acc/cont?detail_cate=${store.detailCate}&store_num=${store.storeNum}'><img
										src="/upload/store_logo${store.storeLogo}"></a>
								</div>
								<div class="list_cont">
									<div class="list_name">
										<h4>${store.storeName }</h4>
									</div>
									<div class="list_addr">
										<p>${store.storeAddr1 }</p>
									</div>
									<div class="list_detail">
										<div class="cate_list">${store.detailCate}</div>
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
											<strong>${lowPrice[store.storeNum]}원 ~</strong>
										</h2>
										<h5>* 세금 포함된 가격입니다</h5>
									</div>
								</div>
							</div>
							<hr>
						</c:forEach>

					</div>

				</div>

			</div>

		</div>

	</div>


</div>
   
<jsp:include page="../main/footer.jsp"/>
