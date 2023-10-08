<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<meta charset="UTF-8">
<title></title>
<script src="../js/jquery.js"></script>
<script src="../js/store_main.js"></script>

<link rel="stylesheet" type="text/css" href="../css/ceo_top.css">
<link rel="stylesheet" type="text/css" href="../css/ceo_main.css">
<link rel="stylesheet" type="text/css" href="../css/ceo_footer.css">
<link rel="stylesheet" type="text/css" href="../css/cs.css">
<link rel="stylesheet" type="text/css" href="../css/store_main.css">
<link rel="stylesheet" type="text/css"
	href="../css/reservation_main.css">
<link rel="stylesheet" type="text/css"
	href="../css/store_registration.css">
<link rel="stylesheet" type="text/css"
	href="../css/store_menu_regis.css">
<link rel="stylesheet" type="text/css"
	href="../css/store_registration.css">

</head>

	<div id="wrap">
		<div id="top">
			<div id="logo">
				<a href="/"><img src="../images/main/logo.png" class="logoImg"></a>
				<h3>CEO 페이지</h3>
			</div>
			<hr>
		</div>

		<div id="ceo_main">
			<div id="ceo_middle">
				<div id="ceo_list">
					<div class="ceo_list">
						<div class="ceo_box" id="booking" onclick="location='/ceo/store_list_resvChk'">
							<img src="../images/ceo/booking.png">
							<p>예약관리</p>
						</div>
					</div>
					<div class="ceo_list">
						<div class="ceo_box" id="review" onclick="loadCeoPage2()">
							<img src="../images/ceo/review.png">
							<p>리뷰관리</p>
						</div>
					</div>
					<div class="ceo_list">
						<div class="ceo_box" id="shop"
							onclick="location='/ceo/store_list'">
							<img src="../images/ceo/shop.png">
							<p>가게관리</p>
						</div>
					</div>
					<div class="ceo_list">
						<div class="ceo_box" id="center">
							<a href="/customer_service"> <img
								src="../images/ceo/center.png">
								<p>고객센터</p>
							</a>
						</div>
					</div>
					<!-- 
			<div id="notice">
				<p>공지</p>
			</div>
			 -->
				</div>