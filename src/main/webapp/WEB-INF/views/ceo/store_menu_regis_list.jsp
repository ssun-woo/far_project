<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<form>
		<table border="1">
			<tr style="text-align: center;">
				<th colspan="4">가게 목록</th>
			</tr>
			<tr>
				<th>no.</th>
				<th>업소 분류</th>
				<th>상세 분류</th>
				<th>가게 이름</th>
			</tr>
			<c:if test="${!empty slist}">
				<c:forEach var="s" items="${slist}">
					<tr>
						<td>${s.store_num}</td>
						<td>${s.cate}</td>
						<td>${s.detail_cate}</td>
						<td>
							<a href="store_menu_regis.jsp?mem_id=${s.mem_id}">
								${s.store_name}
							</a>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty slist}">
				<tr style="text-align: center;">
					<td colspan="4">등록된 가게가 없습니다.</td>
				</tr>
			</c:if>
		</table>
	</form>
	
	<style>
	    table {
	        border-collapse: collapse;
	        width: 800px;
	    }
	
	    th, td {
	        padding: 8px;
	        text-align: left;
	    }
	
	    th {
	        background-color: #f2f2f2;
	    }
	
	    a {
	        text-decoration: none;
	        color: blue;
	    }
	
	    a:hover {
	        text-decoration: underline;
	    }
	</style>
	