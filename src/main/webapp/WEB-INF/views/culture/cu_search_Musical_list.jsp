<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../main/header2.jsp" />
<div class="accSearch">
	<div class="location">
		<div class="locationList">
			<ul id="regionList">
				<li data-region="서울"><a href="cu_Musical_list.jsp">서울</a></li>
				<li data-region="경기">경기</li>
				<li data-region="강원">강원</li>
				<li data-region="경상">경상</li>
				<li data-region="전라">전라</li>
				<li data-region="충청">충청</li>
				<li data-region="제주">제주</li>
			</ul>
		</div>
		<div class="cityList">
			<ul id="cityList"></ul>
		</div>
	</div>
</div>
<jsp:include page="../main/footer.jsp" />