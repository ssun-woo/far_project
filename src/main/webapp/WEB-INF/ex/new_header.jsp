<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- <script src="/js/jquery.js"></script>
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
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
 -->
<style>
	
	
	.top{
		width: 1400px;
		height: 200px;
		margin-top: 20px;
		border : 1px solid black;
		margin-left: 10px;
	}
	
	.top_line{
		height: 35px;
		margin-left: -30px;
		
	}
	
	.top_nav {
		list-style: none;
		display: flex;
		margin-top: 0px;
		margin-bottom: 0px;
		float: left;
	}
	
	.top_nav li{
		width: 80px;
		height: 35px;
		text-align: center;
		border : 1px solid black;
		line-height: 35px;
	}
	
	.top_nav li:hover{
		cursor: pointer;
	}
	
	
	.top_nav2 {
		list-style: none;
		display: flex;
		margin-top: 0px;
		margin-bottom: 0px;
		float: right;
		margin-right: 60px;
	}
	
	.top_nav2 li{
		height: 26px;
		width: 100px;
		border : 1px solid black;
		margin-left: 0px;
		text-align: center;
		line-height: 35px;
	}
	
	.top_nav2 a{
		text-decoration: none;
		color: inherit;	
	}
	
	.middle_line{
		clear: both;
		height: 100px;
		border: 1px solid black;
		margin-left: 11px;
		margin-right: 60px;
	}
	
	.logo{
		height: 100px;
		width: 220px;
		float: left;
	}
	
	.logo img{
		height: 60px;
		width: 210px;
		margin-top: 20px;
		margin-left: 5px;
	}
	
	.index_search{
		height: 30px;
		width: 400px;
		border: hidden;
		margin-left: 20px;
		overflow: hidden;
		outline: none;
	}
	
	.search{
		height: 100px;
		width: 600px;
		float: left;
	}
	
	.search_bar{
		height: 50px;
		border: 1px solid black;
		margin-top: 25px;
		margin-left: 30px;
		margin-right: 100px;
		border-radius: 30px;
		
	}
	
	.searchButton{
		border: 0px;
		margin-top: 10px;
		height: 23px;
		background-color: white;
			
	}
	
	.searchIcon{
		height: 25px;
	}
	
	.search_input{
		float: left;
		margin-top: 10px;
	}
	
	.end_line{
		clear: both;
		border: 1px solid black;
		margin-left: 11px;
		margin-right: 60px;
		height: 60px;
	}
	
	
</style>
</head>

<!-- 가장 Main Index의 Header -->

<body>
	<div id="wrap">
		<div class="top">
			
			<div class="top_line">
				<ul class="top_nav">
					<li class="nav_home" onclick="location='/'">홈</li>
					<li class="nav_acc" onclick="location='/acc/cate_list'">숙소</li>
					<li class="nav_resto">식당</li>
					<li class="nav_culture">문화</li>
					<li class="nav_beauty">뷰티</li>
				</ul>
				
				<ul class="top_nav2">
					<c:if test="${session.id == null}">
						<li><a href="/login">로그인</a></li>
						<li><a href="/signUp">회원가입</a></li>
					</c:if>
					<c:if test="${session.id != null}">
						<li><a href="/logout">로그아웃</a></li>
					</c:if>
					
					<li><a href="/my_page">마이페이지</a></li>
					<li><a href="/customer_service">고객센터</a></li>
					
				</ul>
			</div>
			
			<div class="middle_line">
				<div class="logo">
					<a href="/"><img src="/images/main/logo.jpg" alt="logo"></a>
				</div>
				
				<div class="search">
					<div class="search_bar">
						<form>	
							<div class="search_input">
								<input type="text" name="index_search" class="index_search">
							</div>
							<div class="search_button">
								<button class="searchButton" type="submit">
									<img src="/images/main/search_icon.png" class="searchIcon">
								</button>		
							</div>
						</form>
					</div>
				
				</div>
				
			</div>
			
		
			
		</div>
		
	