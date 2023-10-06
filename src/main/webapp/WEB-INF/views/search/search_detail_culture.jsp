<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/sc_detail.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>문화 검색결과</title>
</head>
<body>
<div class="searchArea">
	<jsp:include page="../main/new_header2.jsp" />

	<div class="tabArea">
		<ul class="n1 nav nav-tabs" id="myTabs">
			<li class="nav-item"><a class="nav-link" 
				href="/search?keyword=${keyword}">통합검색</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/search/acc?keyword=${keyword}">숙소</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/search/food?keyword=${keyword}">음식</a></li>
			<li class="nav-item"><a class="nav-link active"
				href="/search/culture?keyword=${keyword}">문화</a></li>
		</ul>
	</div>
	<div id="tab-content">

		<!-------------- 숙소 ---------------->

		<h3 class="mainText">-예술/문화</h3>
		<div class="culture_all result-section" id="cultureResults">
			<div class="titleTab">
				<div class="subWrap">
					<ul class="n2 nav nav-tabs" id="accommodationTabs">
						<li class="nav-item"><a class="nav-link"
							href="/search/culture?keyword=${keyword}&orderby=id">통합</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/search/culture?keyword=${keyword}&orderby=views">낮은 가격순</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/search/culture?keyword=${keyword}&orderby=likes">추천순</a></li>
					</ul>
				</div>
			</div>
			<c:set var="cultureCount" value="0" />
			<c:choose>
				<c:when test="${empty stores}">
					<!-- 데이터가 없을 때 메시지 표시 -->
					<br>
					<h4>&nbsp;&nbsp;" 검색 결과에 대한 정보가 존재하지 않습니다 "</h4>
					<br>
				</c:when>
				<c:otherwise>
					<!-- 데이터가 있는 경우, 데이터를 반복하여 표시 -->
					<c:forEach var="store" items="${stores}" varStatus="loop">
						<c:if test="${store.cate == 'culture'}">
							<!-- 최대 2개의 결과만 출력 -->
							<div class="box_list">
								<ul class="box_meun">
									<li class="box_prd">
										<div class="box_img">
											<a href='/acc/cont?detail_cate=${store.detailCate}&store_num=${store.storeNum}'><img src="/upload/store_logo${store.storeLogo}" alt="culture"></a>
										</div>
										<div class="box_text">
											<div data-row>
												<div data-cell>
													<div class="infoIcon">
														<i class="icon icondHot">${store.detailCate}</i> <i
															class="icon"> ${store.storeAddr1} </i>
													</div>
												</div>
											</div>
											<div data-row>
												<div data-cell>
													<a href="">
														<h5 class="infoTitle">${store.storeName}</h5>
													</a>
													<p class="infoSubTitle">이벤트</p>
												</div>
												<div data-cell>
													<div class="infoPrice" tabindex="0">
														<p class="final">
															<span class="bilnd">판매가</span> <strong>가격</strong> 원 ~
														</p>
													</div>
												</div>
											</div>
											<div data-row="bottom">
												<div data-cell>
													<p class="infoInfostar">
														<!-- 가게 등급 -->
														${'<span>⭐</span>'.repeat(Math.floor(store.storeScore))}    <!-- 오류는 뜨지만 아주 잘 작동함...! -->
														<strong>(${store.storeScore})</strong>
													</p>
													<p class="info">
														<!-- 가게 상세 주소 -->
														${store.storeAddr2}
													</p>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<c:set var="cultureCount" value="${accCount + 1}" />
						</c:if>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>

	</div>
	<br>

	<script>
    // 예술/문화 카테고리 결과 처리
    if (${empty stores || cultureCount == 0}) {
        // 결과가 없을 때 "검색 결과에 대한 정보가 존재하지 않습니다" 메시지를 표시하고 "더보기" 버튼을 숨깁니다
        document.getElementById("cultureResults").innerHTML = '<br><h4>&nbsp;&nbsp;"검색 결과에 대한 정보가 존재하지 않습니다"</h4><br>';
        document.getElementById("cultureMore").style.display = "none";
    }
    
    document.getElementById('cultureTabs').addEventListener('click', function (e) {
        e.preventDefault();
        switchTab('culture', e.target.getAttribute('href').substr(1));
    });
	</script>



	<!-- footer -->
	<jsp:include page="../main/footer.jsp" />
	</div>
</body>
