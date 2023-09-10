<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>검색결과</title>
</head>

<style>
.mainText {
	margin-left: 15px;
}

.tab-content {
	padding: 20px;
	/* Add padding as needed */
}

.button {
	background-color: #007BFF;
	color: white;
	padding: 10px 20px;
	border: none;
	cursor: pointer;
}

.box_img {
	height: 320px;
	width: 320px;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-left: 10px;
	margin-right: 10px;
}

.box_img img {
	height: 90%;
	width: 90%;
	margin: auto;
}

.n2.nav.nav-tabs {
	display: flex;
	justify-content: flex-end;
}

.nav-item {
	margin-left: 10px;
	/* Add some margin between tab items if needed */
}

/* 메인 컨테이너 스타일 */
.box_list {
	margin: 20px;
}

/* 제품 박스 스타일 */
.box_prd {
	display: flex;
	margin-bottom: 20px;
	border-bottom: 1px solid #e5e5e5;
	background-color: #fff;
}

/* 제품 정보 스타일 */
.box_text {
	flex: 1;
}

/* infoIcon 섹션 스타일 */
.infoIcon {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 10px;
	font-size: 14px;
}

/* "호텔" 아이콘 스타일 */
.icondHot {
	background-color: #fff;
	color: #007BFF;
	padding: 2px 5px;
	border: 1px solid #007BFF;
	border-radius: 4px;
	margin-right: 5px;
}

/* 위치 정보 스타일 */
.infoIcon i:nth-child(2) {
	color: #777;
}

/* 제품 제목 스타일 */
.infoTitle {
	font-size: 18px;
	margin: 0;
}

/* 제품 부제목 스타일 */
.infoSubTitle {
	color: #777;
	font-size: 14px;
	margin-top: 5px;
}

/* 가격 섹션 스타일 */
.infoPrice strong {
	font-size: 24px;
	color: #007BFF;
	font-weight: bold;
}

/* 별점 및 주소 스타일 */
.infoInfostar {
	color: #777;
	font-size: 14px;
	margin-bottom: 5px;
}

.info {
	color: #777;
	font-size: 14px;
}
</style>
<!-- header  -->

<body>
	<!-- 탭 네비게이션을 상단으로 이동 -->
	<div class="tabArea">
		<ul class="n1 nav nav-tabs" id="myTabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#rest">숙소</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#food">음식</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#cultrue">문화</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#beauty">뷰티</a></li>
		</ul>
	</div>
	<div id="tab-content">
		<div class="tab-pane fade show active" id="rest">
			<div class="sc_textBox">
				<h4 class="mainText">
					<br> <strong> " " </strong> 에 대한 결과 검색
				</h4>
			</div>
			<div class="rest_all">
				<div class="titleTab">
					<div class="subWrap">
						<ul class="n2 nav nav-tabs">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#all_rest">통합</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#hot_rest">인기순</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#row_rest">낮은가격순</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#high_rest">높은가격순</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#many_rest">판매 많은순</a></li>

						</ul>
					</div>
				</div>
			</div>
			<div class="box_list">
				<ul class="box_meun">
					<li class="box_prd">
						<div class="box_img">
							<a href=""><img src="img/int_rest01.jpg" alt="sup01"></a>
						</div>
						<div class="box_text">
							<div data-row>
								<div data-cell>
									<div class="infoIcon">
										<i class="icon icondHot">호텔</i> <i class="icon"> 경기 / 고양시
										</i>
									</div>
								</div>
							</div>
							<div data-row>
								<div data-cell>
									<a href="">
										<h5 class="infoTitle">소노캄 고양</h5>
									</a>
									<p class="infoSubTitle">전 객실 미니바 무료 이벤트</p>
								</div>
								<div data-cell>
									<div class="" infoPrice" tabindex="0">
										<p class="final">
											<span class="bilnd">판매가</span> <strong>161,000</strong> 원 ~
										</p>
									</div>
								</div>
							</div>
							<div data-row="bottom">
								<div data-cell>
									<p class="infoInfostar">등급 : 5성급</p>
									<p class="info">경기도 고양시 일산동구 태극로 20</p>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="box_list">
				<ul class="box_meun">
					<li class="box_prd">
						<div class="box_img">
							<a href=""><img src="img/int_rest01.jpg" alt="sup01"></a>
						</div>
						<div class="box_text">
							<div data-row>
								<div data-cell>
									<div class="infoIcon">
										<i class="icon icondHot">호텔</i> <i class="icon"> 경기 / 고양시
										</i>
									</div>
								</div>
							</div>
							<div data-row>
								<div data-cell>
									<a href="">
										<h5 class="infoTitle">소노캄 고양</h5>
									</a>
									<p class="infoSubTitle">전 객실 미니바 무료 이벤트</p>
								</div>
								<div data-cell>
									<div class="" infoPrice" tabindex="0">
										<p class="final">
											<span class="bilnd">판매가</span> <strong>161,000</strong> 원 ~
										</p>
									</div>
								</div>
							</div>
							<div data-row="bottom">
								<div data-cell>
									<p class="infoInfostar">등급 : 5성급</p>
									<p class="info">경기도 고양시 일산동구 태극로 20</p>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<div class="tab-pane fade" id="food">
			<p>김치찌개 된장찌개 볶음밥 짜장면 탕수육 치킨 피자 맥주 소주 위스키 등등.</p>
		</div>
		<div class="tab-pane fade" id="cultrue">
			<p>콘서트 연극 뮤지컬 페스티벌 페러글라딩 투어 채험 등등</p>
		</div>
		<div class="tab-pane fade" id="beauty">
			<p>미용실 네일샾 피부미용 테닝 헬스 요가 필라테스 등등</p>
		</div>
	</div>
	<!-- </div>
	</div> -->
	<!-- footer -->
</body>

</html>