<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="admin_header.jsp"/>
		
		<section id="menu_cont">
			<H3 id="cate_name">[입점 승인]</H3>
			
			<div id="cate_cont">
				<table border="1" id="t1">
					<tr>
						<th id="no">번호</th>
						<th id="shop">가게명</th>
						<th id="cate">업종</th>
						<th id="name">신청자</th>
						
					</tr>
					<c:forEach var="permitOk" items="${permitOkList }">
					<tr>
						<td>${permitOk.storeNum }</td>
						<td>${permitOk.storeName }</td>
						<td>${permitOk.cate }(${permitOk.detailCate })</td>
						<td>${permitOk.memId }</td>
						
					</tr>
					</c:forEach>
				</table>
			</div>
			
			
		</section>
</body>
</html>