<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="/js/jquery.js"></script>
<script src="/js/admin/ad_ceo.js"></script>
<script src="/js/admin/ad_member.js"></script>
<script src="/js/admin/ad_notice.js"></script>
<script src="/js/admin/ad_CS.js"></script>
<script src="/js/admin/ad_event.js"></script>

<link rel="stylesheet" type="text/css" href="/css/admin/admin_top.css">
<link rel="stylesheet" type="text/css" href="/css/admin/admin_main.css">
<link rel="stylesheet" type="text/css" href="/css/admin/ad_event.css">


</head>
<body>

<div id="top">
	<div id = "logo">
		<img src="/images/main/logo.png" class="logoImg">
		<h3>관리자</h3>
		<div id="page">
			<h4><a href="/main/index.jsp">메인 페이지</a></h4>
			<h4>&nbsp;|&nbsp;</h4>
			<h4>로그인</h4>
		</div>
	</div>
	<hr>
	<article id="menu">
		<h3>메뉴</h3>
		<hr>
		<ul>
			<li><h4>회원관리 (CEO)</h4></li>
				<li><a href="/admin/storePermit" class="button">입점승인</a></li>
				<li><a href="/admin/storeShutdown" class="button">폐점승인</a></li>
				<li><a href="#" class="button">가게 정보 수정</a></li>
				<li><a href="/admin/storeList" class="button">회원 목록</a></li>
				
			<li><h4>회원관리 (일반)</h4></li>
				<li><a href="#" class="button" onClick="list_member()">회원목록</a></li>
				
			<li><h4>고객센터 관리</h4></li>
				<li><a href="#" class="button" onClick="review_report()">불량리뷰 신고</a></li>
				<li><a href="#" class="button" onClick="QnA_member()">문의 (일반)</a></li>
				<li><a href="#" class="button" onClick="QnA_ceo()">문의 (ceo)</a></li>
				
			<li><h4>공지등록</h4></li>
				<li><a href="#" class="button" onClick="member_notice()">일반 공지등록</a></li>
				<li><a href="#" class="button" onClick="ceo_notice()">ceo 공지등록</a></li>
			<li><h4>이벤트등록</h4></li>
				<li><a href="#" class="button" onClick="new_event()">이벤트등록</a></li>
		</ul>
		
		</article>
</div>