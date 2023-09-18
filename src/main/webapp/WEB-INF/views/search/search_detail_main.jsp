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
<title>통합 검색결과</title>
</head>
<jsp:include page="../main/new_header2.jsp" />

<body>
	<div class="searchArea">
		<!-- 상단 카테고리 -->

		<div class="tabArea">
			<ul class="n1 nav nav-tabs" id="myTabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="/search?keyword=${keyword}">통합검색</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/search/acc?keyword=${keyword}">숙소</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/search/food?keyword=${keyword}">음식</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/search/culture?keyword=${keyword}">문화</a></li>
			</ul>
		</div>

		<!-- 상단 카테고리 -->

		<div class="searchMain">
			<div id="tab-content">
				<div class="tab-pane fade show active" id="main">
					<div class="sc_textBox">
						<h4 class="mainText">
							<strong> "${keyword}" </strong> 에 대한 결과 검색
						</h4>
					</div>
					<br>
					<hr>

					<!-- 숙소 -->

					<h3 class="mainText">-숙소</h3>
					<div class="acc_all result-section" id="accommodationResults">
						<div class="titleTab">
							<div class="subWrap">
								<ul class="n2 nav nav-tabs" id="accommodationTabs">
									<li class="nav-item"><a class="nav-link active"
										th:href="@{/community/tab/{category_name}(category_name=${category_name}, orderby='id')}">최신순</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										th:href="@{/community/tab/{category_name}(category_name=${category_name}, orderby='views')}">조회순</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										th:href="@{/community/tab/{category_name}(category_name=${category_name}, orderby='likes')}">추천순</a>
									</li>
								</ul>
							</div>
						</div>
						<c:set var="accCount" value="0" />
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
									<c:if test="${store.cate == 'acc' && accCount < 2}">
										<!-- 최대 2개의 결과만 출력 -->
										<div class="box_list">
											<ul class="box_meun">
												<li class="box_prd">
													<div class="box_img">
														<a href=""><img src="images/ev_images/feature-4.jpg"
															alt="acc"></a>
													</div>
													<div class="box_text">
														<div data-row>
															<div data-cell>
																<div class="infoIcon">
																	<i class="icon icondHot">${store.detail_cate}</i> 
																	<i class="icon"> ${store.store_addr} </i>
																</div>
															</div>
														</div>
														<div data-row>
															<div data-cell>
																<a href="">
																	<h5 class="infoTitle">${store.store_name}</h5>
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
																<p class="infoInfostar">등급</p>
																<p class="info">상세주소</p>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
										<c:set var="accCount" value="${accCount + 1}" />
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="addListBtn" id="accList">
						<a href="/search/acc?keyword=${keyword}" id="accommodationMore">
							<span class="addView">숙소 더보기</span>
						</a>
					</div>
				</div>
				<br>

				<!-- 음식 -->

				<h3 class="mainText">-음식</h3>
				<div class="food_all result-section" id="foodResults">
					<div class="titleTab">
						<div class="subWrap">
							<ul class="n2 nav nav-tabs" id="accommodationTabs">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#all_rest">통합</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#look_rest">조회순</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#good_rest">추천순</a></li>
							</ul>
						</div>
					</div>
					<c:set var="foodCount" value="0" />
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
								<c:if test="${store.cate == 'food' && foodCount < 2}">
									<!-- 최대 2개의 결과만 출력 -->
									<div class="box_list">
										<ul class="box_meun">
											<li class="box_prd">
												<div class="box_img">
													<a href=""><img src="img/feature-6.jpg" alt="acc"></a>
												</div>
												<div class="box_text">
													<div data-row>
														<div data-cell>
															<div class="infoIcon">
																<i class="icon icondHot">${store.detail_cate}</i> 
																<i class="icon"> ${store.store_addr} </i>
															</div>
														</div>
													</div>
													<div data-row>
														<div data-cell>
															<a href="">
																<h5 class="infoTitle">${store.store_name}</h5>
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
															<p class="infoInfostar">등급</p>
															<p class="info">상세주소</p>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<c:set var="foodCount" value="${foodCount + 1}" />
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="addListBtn" id="foodList">
					<a href="/search/food?keyword=${keyword}" id="foodMore"> <span
						class="addView">음식 더보기</span></a>
				</div>
			</div>
			<br>

			<!-- 예술/문화 -->

			<h3 class="mainText">-예술/문화</h3>
			<div class="culture_all result-section" id="cultureResults">
				<div class="titleTab">
					<div class="subWrap">
						<ul class="n2 nav nav-tabs" id="accommodationTabs">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#all_rest">통합</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#look_rest">조회순</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#good_rest">추천순</a></li>
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
							<c:if test="${store.cate == 'culture' && cultureCount < 2}">
								<!-- 최대 2개의 결과만 출력 -->
								<div class="box_list">
									<ul class="box_meun">
										<li class="box_prd">
											<div class="box_img">
												<a href=""><img src="img/feature-6.jpg" alt="acc"></a>
											</div>
											<div class="box_text">
												<div data-row>
													<div data-cell>
														<div class="infoIcon">
														<i class="icon icondHot">${store.detail_cate}</i> 
														<i class="icon"> ${store.store_addr} </i>
														</div>
													</div>
												</div>
												<div data-row>
													<div data-cell>
														<a href="">
															<h5 class="infoTitle">${store.store_name}</h5>
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
														<p class="infoInfostar">등급</p>
														<p class="info">상세주소</p>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<c:set var="cultureCount" value="${cultureCount + 1}" />
							</c:if>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="addListBtn" id="cultureList">
				<a href="/search/culture?keyword=${keyword}" id="cultureMore"> <span
					class="addView">예술/문화 더보기</span></a>
			</div>
		</div>
	</div>

	<script>
    // 숙소 카테고리 결과 처리
    if (${empty stores || accCount == 0}) {
        // 결과가 없을 때 "검색 결과에 대한 정보가 존재하지 않습니다" 메시지를 표시하고 "더보기" 버튼을 숨깁니다
        document.getElementById("accommodationResults").innerHTML = '<br><h4>&nbsp;&nbsp;"검색 결과에 대한 정보가 존재하지 않습니다"</h4><br>';
        document.getElementById("accommodationMore").style.display = "none";
    }

    // 음식 카테고리 결과 처리
    if (${empty stores || foodCount == 0}) {
        // 결과가 없을 때 "검색 결과에 대한 정보가 존재하지 않습니다" 메시지를 표시하고 "더보기" 버튼을 숨깁니다
        document.getElementById("foodResults").innerHTML = '<br><h4>&nbsp;&nbsp;"검색 결과에 대한 정보가 존재하지 않습니다"</h4><br>';
        document.getElementById("foodMore").style.display = "none";
    }

    // 예술/문화 카테고리 결과 처리
    if (${empty stores || cultureCount == 0}) {
        // 결과가 없을 때 "검색 결과에 대한 정보가 존재하지 않습니다" 메시지를 표시하고 "더보기" 버튼을 숨깁니다
        document.getElementById("cultureResults").innerHTML = '<br><h4>&nbsp;&nbsp;"검색 결과에 대한 정보가 존재하지 않습니다"</h4><br>';
        document.getElementById("cultureMore").style.display = "none";
    }
    
   
    // 활성 탭을 기반으로 탭을 전환하고 내용을 표시하고 숨깁니다
    function switchTab(category, tabName) {
        const tabs = document.getElementById(`${category}Tabs`).getElementsByTagName('a');
        for (let i = 0; i < tabs.length; i++) {
            tabs[i].classList.remove('active');
        }
        document.getElementById(tabName).classList.add('active');
        // 선택한 탭에 따라 내용을 표시하고 숨기는 논리를 추가할 수 있습니다.
        // 예를 들어, "최신순" 및 "추천순"에 따라 항목을 정렬하기 위한 논리를 사용할 수 있습니다.
    }

    // 탭을 클릭할 때 탭을 전환하는 이벤트 리스너 추가
    document.getElementById('accommodationTabs').addEventListener('click', function (e) {
        e.preventDefault();
        switchTab('accommodation', e.target.getAttribute('href').substr(1));
    });

    document.getElementById('foodTabs').addEventListener('click', function (e) {
        e.preventDefault();
        switchTab('food', e.target.getAttribute('href').substr(1));
    });

    document.getElementById('cultureTabs').addEventListener('click', function (e) {
        e.preventDefault();
        switchTab('culture', e.target.getAttribute('href').substr(1));
    });
</script>








	<!-- footer -->
	<jsp:include page="../main/footer.jsp" />
</body>