<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="/js/jquery.js"></script>
<script src="/js/event.js"></script>
<script src="/js/acc_script.js"></script>
<script src="/js/rs_menu.js"></script>
<script src="/js/rs_pic.js"></script>
<link rel="stylesheet" type="text/css" href="/css/acc_search.css">
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
<link rel="stylesheet" type="text/css" href="/css/jjim.css">
<link rel="stylesheet" type="text/css" href="/css/payment.css">
<link rel="stylesheet" type="text/css" href="/css/rest_com.css">
<link rel="stylesheet" type="text/css" href="/css/restaurant.css">
<link rel="stylesheet" type="text/css" href="/css/shopList.css">
<link rel="stylesheet" type="text/css" href="/css/signupForm.css">
<link rel="stylesheet" type="text/css" href="/css/findId.css">
<link rel="stylesheet" type="text/css" href="/css/findPwd.css">
<link rel="stylesheet" type="text/css" href="/css/top.css">
<link rel="stylesheet" type="text/css" href="/css/topten.css">
<link rel="stylesheet" type="text/css" href="/css/rs_stopic.css">
<link rel="stylesheet" type="text/css" href="/css/topten_culture.css">
<link rel="stylesheet" type="text/css" href="/css/notice.css">
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="/css/notice_list.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>

<body>
	<!-- 이쪽은 가장 Main index를 제외한 Header -->
	<div id="wrap">
		<div class="top">
		
		
			<div class="middle_line">
				<div class="logo">
        			<a href="/"><img src="/images/main/logo.jpg" alt="logo"></a>
   		 	</div>
				
				<div class="search">
				
				</div>
				
				<div class="nav_bar">
					<ul class="top_nav2">
						<c:if test="${id == null}">
							<li><a href="/login">로그인</a></li>
							<li><a href="/signUp">회원가입</a></li>
						</c:if>
						<c:if test="${id != null}">
							<li><a href="/logout">로그아웃</a></li>
						</c:if>
						<li><a href="/my_page">마이페이지</a></li>
					</ul>
				</div>
				
			</div>
			
			
			<div class="end_line">
				<ul>
					<li>
						<i></i>
						<span></span>
					</li>
					<li>
						<i></i>
						<span></span>
					</li>
					<li>
						<i></i>
						<span></span>
					</li>
					<li>
						<i></i>
						<span></span>
					</li>
				</ul>
			</div>
			
		
			
		</div>
		
		
		<hr class="end_hr">
		
