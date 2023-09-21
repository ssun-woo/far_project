<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../main/new_header2.jsp"/>

<div class="shop_List">
	<div class="filter">
	 <div class="filter_top">
		<h3>필터</h3>
		<button type="reset" Id="reset">
		필터 초기화
		</button>
	 </div>
	 <hr>
	 
	 <div class="price_range">
	 <h4>가격대</h4>
	 <div class="middle">
		<div class = "multi-range-slider">
			<input type="range" id="input-left" min="0" max="100" value="25">
			<input type="range" id="input-right" min="0" max="100" value="75">
		
			<div class="slider">
				<div class="track"></div>
				<div class="range"></div>
				<div class="thumb left"></div>
				<div class="thumb right"></div>
			</div>
		</div>
			<script src="../js/price_range.js"></script>
	</div>
	 </div>
	 
	 <div class="price_input">
	 		<input type="text" name="min_price" class="text_box" value="10000">
	 		~
	 		<input type="text" name="max_price" class="text_box" value="16000000">
	 	</div> 
	 <hr>
	 <div class="theme">
	 	<h4>테마</h4>
	 		<input type="checkbox" name="all3" onclick="allselect3(this.checked);">
	 		<label>전체</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>반려동물</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>커플</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>가족</label>
	 		
	 </div>
	 <hr>
	 
	 <div class="grade">
	 	<h4>평점</h4>
	 		<input type="checkbox"> 전체
	 		<br>
	 		<input type="checkbox"> 9점이상
	 		<br>
	 		<input type="checkbox"> 8점
	 		<br>
	 		<input type="checkbox"> 7점
	 		<br>
	 		<input type="checkbox"> 6점
	 		<br>
	 		<input type="checkbox"> 5점
	 		
	 </div>
	 <hr>
	 
	 <div class="additional_facilities">
	 	<h4>부대시설</h4>
	 		<input type="checkbox"> 전체
	 		<br>
	 		<input type="checkbox"> 수영장
	 		<br>
	 		<input type="checkbox"> 사우나
	 		<br>
	 		<input type="checkbox"> 스파
	 		<br>
	 		<input type="checkbox"> 키즈라운지
	 		<br>
	 		
	 </div>
	</div>
	<div class="list_page">
	<div class="list_top">
	<ul>
		<li>
			<c:if test="${param.cate == 'motel'}">
				<img src="../images/acc/motel.png">
			</c:if>
			<c:if test="${param.cate == 'hotel'}">
				<img src="../images/acc/hotel.png">
			</c:if>
			<c:if test="${param.cate == 'pension'}">
				<img src="../images/acc/poolhouse.png">
			</c:if>
			<c:if test="${param.cate == 'camping'}">
				<img src="../images/acc/camping.png">
			</c:if>
		
		</li>
		<li class="region_name">
			<c:if test="${param.detail_cate == 'motel'}">
				'모텔' 검색결과
			</c:if>
			<c:if test="${param.detail_cate == 'hotel'}">
				'호텔' 검색결과
			</c:if>
			<c:if test="${param.detail_cate == 'pension'}">
				'펜션/풀빌라' 검색결과
			</c:if>
			<c:if test="${param.detail_cate == 'camping'}">
				'캠핑/글램핑' 검색결과
			</c:if>
		</li>
		<li >&nbsp;&nbsp;['${countStore }'개의 검색 결과]</li>
		<li class="space"></li>
		<li class="sort">인기순</li>
		<li class="separator">|</li>
        <li class="sort">평점높은순</li>
        <li class="separator">|</li>
        <li class="sort">낮은요금순</li>
	</ul>
	</div>
	<div class="list_main">
		<hr>
	</div>
		<c:forEach var="store" items="${list.content }">
		
		<div class="list_div">
		
		<a href='/acc/cont?cate=${store.detailCate}&store_num=10'><img src="../images/acc/motel1-2.jpg"></a>
		
		<div class="list_cont">
			<div class="shop_Name">
				<h3>${store.storeName }</h3>
			</div>
			
			<p>등급미정</p>
			<p>${store.storeAddr1 } ${store.storeAddr2 }</p>
			<br>
			<p>자가 무료주차 가능</p>
		</div>
		<div class="list_cont2">
			<h2>75,000원</h2>
			<p>★★★★☆</p>
			<p>리뷰 196</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		</div>
		</c:forEach> 
	<hr>
	</div>
	
</div>
<div class="pagination">
    <c:if test="${not empty list}">
        <div class="pagination-list">
            <table border="1">
            	<tr>
            		<td><a href="?page=0">첫 페이지</a></td>
            
            <script>
                var currentPage = ${list.number}; // 현재 페이지 번호
                var pageSize = 5; // 한 번에 보여줄 페이지 인덱스 수

                var startPage = Math.floor(currentPage / pageSize) * pageSize + 1;
                var endPage = startPage + pageSize - 1;
                var totalPages = ${list.totalPages};

                if (endPage > totalPages) {
                    endPage = totalPages;
                }
				
                if (currentPage > 0) { // 현재 페이지가 1보다 큰 경우에만 "이전" 링크를 생성
                    document.write('<td><a href="?detail_cate=${param.detail_cate}&page=' + (currentPage - 1) + '">이전</a></td>');
                } else {
                	document.write('');
                }
                
                for (var i = startPage; i <= endPage; i++) {
                    document.write('<td><a href="?detail_cate=${param.detail_cate}&page=' + (i - 1) + '">' + i + '</a></td>');
                }
				
                if (currentPage < totalPages - 1) { // 현재 페이지가 마지막 페이지에서 두 번째 페이지보다 작을 경우에만 "다음" 표시
                    document.write('<td><a href="?detail_cate=${param.detail_cate}&page=' + (currentPage + 1) + '">다음</a></td>');
                }
                console.log(currentPage);
            </script>
            
            <td><a href="?page=${list.totalPages - 1}">마지막 페이지</a></td>
            </tr>
            </table>
        </div>
    </c:if>
	</div>
	
<jsp:include page="../main/footer.jsp"/>