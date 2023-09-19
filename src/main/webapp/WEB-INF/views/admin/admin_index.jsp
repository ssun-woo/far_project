<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp"/>
	<div id="admin_main">
		<article id="menu">
		<h3>메뉴</h3>
		<hr>
		<ul>
			<li><h4>회원관리 (CEO)</h4></li>
				<li><a href="#" class="button" onClick="open_shop()">입점승인</a></li>
				<li><a href="#" class="button" onClick="close_shop()">폐점승인</a></li>
				<li><a href="#" class="button" onClick="edit_shop()">가게 정보 수정</a></li>
				<li><a href="#" class="button" onClick="list_shop()">회원 목록</a></li>
				
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
		<section id="menu_cont">
			<H3 id="cate_name">[입점 승인]</H3>
			
			<div id="cate_cont">
				<table border="1" id="t1">
					<tr>
						<th id="no">번호</th>
						<th id="shop">가게명</th>
						<th id="cate">업종</th>
						<th id="name">신청자</th>
						<th id="check">승인여부</th>
					</tr>
					<tr>
						<td>1</td>
						<td>가게1</td>
						<td>식당(한식)</td>
						<td>신청자</td>
						<td>접수 완료</td>
					</tr>
				</table>
			</div>
			
			
		</section>
		
		
		
		
	</div>
	
	
<jsp:include page="admin_footer.jsp" />