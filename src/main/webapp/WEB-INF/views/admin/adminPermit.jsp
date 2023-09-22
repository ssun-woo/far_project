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
						<th id="check">승인 여부</th>
						<th id="confirm">확인</th>
					</tr>
        
<c:forEach var="permit" items="${permitList}">
    <form name="submitPermit" action="storeOKList" method="post">
    	<tr>
            <td><input type="hidden" name="storeNum" value="${permit.storeNum}">${permit.storeNum}</td>
            <td><input type="hidden" name="storeName" value="${permit.storeName}">${permit.storeName}</td>
            <td><input type="hidden" name="cate" value="${permit.cate}">${permit.cate}(${permit.detailCate})</td>
            <td><input type="hidden" name="memId" value="${permit.memId}">${permit.memId}</td>
            <td>
                <input type="radio" name="oorx" value="accept"> 승인
                <input type="radio" name="oorx" value="denied"> 거부
            </td>
            <td><input type="submit" name="action" value="확인">
        </tr>
    </form>
</c:forEach>
</table>
</div>
</section>
</body>
</html>