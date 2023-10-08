<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../js/store_main.js"></script>

<jsp:include page="ceo_header.jsp" />

<div id="contentArea">
	<div class="storeMainWrap">
		<div >
			<div id="storeContentArea">
				<form>
					<table class="table table-hover">
					<thead>
						<tr style="text-align: center;">
							<th colspan="4">예약 확인</th>
						</tr>
						<tr>
							<th>No.</th>
							
							<th>업종</th>
							
							<th>상세 업종</th>
							
							<th>가게 이름</th>
						
						</tr>
					</thead>
						<tbody>
							<c:if test="${!empty slist}">
								<c:forEach var="s" items="${slist}" varStatus="loop">

									<tr
										onclick="location='/ceo/store_rsev_list?store_num=${s.storeNum}'">
										<td style="color: blue;">${s.storeNum}</td>
										<td>${s.cate}</td>
										<td>${s.detailCate}</td>
										<td>${s.storeName}</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty slist}">
								<tr class="text-center">
									<td colspan="4">동록된  정보가 존재하지 않습니다.</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="ceo_footer.jsp" />

