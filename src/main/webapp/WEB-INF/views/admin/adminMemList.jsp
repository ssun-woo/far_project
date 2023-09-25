<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="admin_header.jsp"/>


<section id="adMemListSection">
	<h3 id="adMemListTitle">[일반 회원 목록]</h3>
	<div id="adMemListTable">
		<table border="1">
			<tr>
				<th id="adMemName">이름</th>
				<th id="adMemId">아이디</th>
				<th id="adMemTel">연락처</th>
				<th id="adMemEmail">이메일</th>
				<!-- <th id="grade">등급</th> -->
			</tr>
			
			<c:if test="${!empty memList}">
				<c:forEach var="mem" items="${memList}">
					<tr>
						<td>${mem.memName}</td>
						<td>${mem.memId}</td>
						<td>${mem.memTel}</td>
						<td>${mem.memEmail}</td>
					</tr>
				</c:forEach>
			</c:if>
			
			<c:if test="${empty memList}">
				<tr>
					<td colspan="4">일반 회원이 존재하지 않습니다.</td>
				</tr>
			</c:if>
		</table>
	</div>
</section>


<jsp:include page="admin_footer.jsp"/>