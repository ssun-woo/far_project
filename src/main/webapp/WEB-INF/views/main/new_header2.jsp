<%@page import="javax.sound.sampled.AudioFormat.Encoding"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="/js/jquery.js"></script>
<script src="/js/acc_script.js"></script>
<script src="/js/rs_menu.js"></script>
<script src="/js/rs_pic.js"></script>
<script src="/js/acc_cont.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/sc_detail.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/acc_search.css">
<link rel="stylesheet" type="text/css" href="/css/acc_cont.css">
<link rel="stylesheet" type="text/css" href="/css/accommodation.css">
<link rel="stylesheet" type="text/css" href="/css/beauty.css">
<link rel="stylesheet" type="text/css" href="/css/cs.css">
<link rel="stylesheet" type="text/css" href="/css/culture.css">
<link rel="stylesheet" type="text/css" href="/css/ev.css">
<link rel="stylesheet" type="text/css" href="/css/footer.css">
<link rel="stylesheet" type="text/css" href="/css/loginForm.css">
<link rel="stylesheet" type="text/css" href="/css/main.css">
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
<link rel="stylesheet" type="text/css" href="/css/myPage_info.css">
<link rel="stylesheet" type="text/css" href="/css/Jjim.css">
<link rel="stylesheet" type="text/css" href="/css/payment.css">
<link rel="stylesheet" type="text/css" href="/css/rest_com.css">
<link rel="stylesheet" type="text/css" href="/css/restaurant.css">
<link rel="stylesheet" type="text/css" href="/css/shopList.css">
<link rel="stylesheet" type="text/css" href="/css/signupForm.css">
<link rel="stylesheet" type="text/css" href="/css/findId.css">
<link rel="stylesheet" type="text/css" href="/css/findPwd.css">
<link rel="stylesheet" type="text/css" href="/css/top2.css">
<link rel="stylesheet" type="text/css" href="/css/topten.css">
<link rel="stylesheet" type="text/css" href="/css/rs_stopic.css">
<link rel="stylesheet" type="text/css" href="/css/topten_culture.css">
<link rel="stylesheet" type="text/css" href="/css/notice.css">
<link rel="stylesheet" type="text/css" href="/css/acc_cont.css">
<link rel="stylesheet" type="text/css" href="/css/starEx.css">
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="/css/new_search.css">
<link rel="stylesheet" type="text/css" href="/css/daterangepicker.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a88d036132dec983608208b58361c621"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="/js/new_search.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<%
String uri = request.getAttribute("javax.servlet.forward.request_uri").toString();
String enco = java.net.URLEncoder.encode(uri, "UTF-8");
%>

</head>

<body>

	<input type="hidden" id="currentURLInput" name="currentURL" />
	<!-- 이쪽은 가장 Main index를 제외한 Header -->
	<div id="wrap">
		<div class="top">

			<div class="middle_line">
				<div class="logo">
					<a href="/"><img src="/images/main/logo.jpg" alt="logo"></a>
					<div class="logo-popup">
						<ul>
							<li><a href="/">홈</a></li>
							<hr>
							<li><a href="/acc/cate_list">숙소</a></li>
							<li><a href="/resto/cate_list">식당</a></li>
							<li><a href="/culture/cate_list">문화</a></li>
							<li><a href="/beauty/cate_list">뷰티</a></li>
						</ul>
					</div>
				</div>

				<div class="search">
					<div class="search_bar">

						<form onsubmit="performSearch(); return false;">

							<div class="search_input">
								<input type="text" name="index_search" class="index_search"
									id="index_search">
							</div>
							<div class="search_button">
								<button class="searchButton" type="submit">
									<img src="/images/main/search_icon.png" class="searchIcon">
								</button>
							</div>
						</form>
						<script>
							// 리다이렉션
							function performSearch() {
								var keyword = document
										.getElementById("index_search").value
										.trim();
								console.log("검색어 : " + keyword);
								window.location.href = "/search?keyword="
										+ encodeURIComponent(keyword);
								keyword = "%" + keyword + "%";
							}
						</script>
					</div>

				</div>

				<div class="nav_bar">
					<ul class="top_nav2">

						<c:if test="${memId != null && memId != 'anonymousUser'}">
							<li>${memId }님</li>
							<li><a href="/logout">로그아웃</a></li>
						</c:if>
						<c:if test="${memId == null || memId == 'anonymousUser'}">
							<li><a href='/loginForm?uri=<%=enco%>'>로그인</a></li>
							<li><a href="/signUp">회원가입</a></li>
						</c:if>

						<li><a href="/chkResv">마이페이지</a></li>

						<c:if test="${memClass == 'Role_c' }">
							<li><a href="ceo/index">내 가게 관리</a></li>
						</c:if>

						<c:if test="${memClass == 'Role_a' }">
							<li><a href="admin/index">페이지 관리</a></li>
						</c:if>
					</ul>
				</div>

			</div>
			<div class="end_line">
				<ul>
					<li><a> <i></i> <span></span>
					</a></li>
					<li>
					<li><a> <i></i> <span></span>
					</a></li>
					<li>
					<li><a> <i></i> <span></span>
					</a></li>
					<li>
					<li><a> <i></i> <span></span>
					</a></li>
				</ul>
			</div>
		</div>

		<hr class="end_hr">