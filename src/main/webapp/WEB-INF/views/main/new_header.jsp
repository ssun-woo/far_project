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
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

</head>

<body>
	<!-- 가장 Main index의 헤더 -->
	<div id="wrap">
		<div class="top">
		
		
			<div class="middle_line">
				<div class="logo">
        			<a href="/"><img src="/images/main/logo.jpg" alt="logo"></a>
   		 	</div>
				
				<div class="search">
					<div class="search_bar">
						<form onsubmit="performSearch(); return false;">	
							<div class="search_input">
								<input type="text" name="index_search" class="index_search" id="index_search">
							</div>
							<div class="search_button">
								<button class="searchButton" type="submit">
									<img src="/images/main/search_icon.png" class="searchIcon">
								</button>		
							</div>
						</form>
						<script>	// 리다이렉션
						    function performSearch() {
						        var keyword = document.getElementById("index_search").value.trim();
						        console.log("검색어 : " + keyword);
						        window.location.href = "/search?keyword=" + encodeURIComponent(keyword);
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
							<li><a href="/loginForm">로그인</a></li>
							<li><a href="/signUp">회원가입</a></li>
						</c:if>

						<li><a href="/my_page">마이페이지</a></li>
						
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
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		