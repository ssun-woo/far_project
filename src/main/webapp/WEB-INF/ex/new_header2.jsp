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

<style>

	.top{
		width: 1400px;
		height: 200px;
		margin-top: 30px;
		margin-left: 50px;
	}
	
	.nav_bar{
		float:left;
		margin-left: 180px;
		margin-top: 37px;
	}
	
	.top_nav2 {
		list-style: none;
		display: flex;
		margin-top: 0px;
		margin-bottom: 0px;
		float: right;
		
	}
	
	.top_nav2 li{
		height: 26px;
		width: 80px;
		margin-left: 0px;
		text-align: center;
		line-height: 26px;
	}
	
	.top_nav2 a{
		text-decoration: none;
		color: inherit;	
	}
	
	.middle_line{
		clear: both;
		height: 100px;
		margin-left: 11px;
		margin-right: 60px;
	}
	
	.logo{
		height: 100px;
		width: 220px;
		float: left;
		position: relative;
		display: inline-block;
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
		margin-left: 11px;
		margin-right: 60px;
		height: 60px;
	}
	
	.end_line ul{
		list-style: none;
		display: flex;
		margin-top: 10px;
		padding-left: 0px;
	}
	
	.end_line li{
		height: 40px;
		width: 90px;
		margin-right: 50px;
		text-align: center;
		line-height: 30px;
	}
	
	.end_line i{
		display: block;
		height: 40px;
		width: 40px;
		float: left;
	}
	
	.end_line span{
		display: block;
		width: 32px;
		float: left;
		margin-top: 10px;
		margin-left: 5px;
	}
	
	.end_line img{
		height: 40px;
		width: 40px;
	}
	
	.end_line a{
		text-decoration: none;
		color: black;	
	}
	
	 /* 스타일을 추가합니다. */
        .logo-container {
            position: relative;
            display: inline-block;
        }

        .logo-popup {
            display: none;
            position: absolute;
            top: 100%;
            left: 80px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 10px;
            width: 120px;
        }

        .logo-popup ul {
            list-style: none;
            padding: 0;
        }

        .logo-popup li {
            margin: 5px 0;
        }

        /* 마우스를 로고 이미지 위로 올렸을 때 팝업을 표시합니다. */
        .logo:hover .logo-popup {
            display: block;
        }
        
        .logo-popup a{
        	text-decoration: none;
        	color: black;
        }
        
        .logo-popup hr{
        	color: black;
        	opacity: 0.5;
        }
        
        .end_hr{
        	opacity: 0.5;
        	margin-top: -30px;
        }
	
	
	
</style>
</head>

<body>
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
				
				<div class="nav_bar">
					<ul class="top_nav2">
						<c:if test="${session.id == null}">
							<li><a href="/login">로그인</a></li>
							<li><a href="/signUp">회원가입</a></li>
						</c:if>
						<c:if test="${session.id != null}">
							<li><a href="/logout">로그아웃</a></li>
						</c:if>
						<li><a href="/my_page">마이페이지</a></li>
					</ul>
				</div>
				
			</div>
			
			
			<div class="end_line">
				<ul>
					<li>
						<a href="/acc/cate_list">
						<i><img src="/images/main/travel.png" alt="숙소"></i>
						<span>숙소</span>
						</a>
					</li>
					<li>
						<a href="/resto/cate_list">
						<i><img src="/images/main/restaurant.png" alt="식당"></i>
						<span>식당</span>
						</a>
					</li>
					<li>
						<a href="/culture/cate_list">
						<i><img src="/images/main/ticket.png" alt="문호"></i>
						<span>문화</span>
						</a>
					</li>
					<li>
						<a href="/beauty/cate_list">
						<i><img src="/images/main/makeup.png" alt="뷰티"></i>
						<span>뷰티</span>
						</a>
					</li>
				</ul>
			</div>
			
		
			
		</div>
		
		<hr class="end_hr">
		
	