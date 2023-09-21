<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="admin_header.jsp"/>
	<table border="1"><tr>
		<th id="no">번호</th><th id="shop">가게명</th>
		<th id="cate">업종</th><th id="name">신청자</th><th id="check">승인여부</th></tr>
		<tr><td>1</td><td><a href="#" calss="button" onClick="shop()">가게1</a></td>
		<td>미용업 (네일)</td><td>신청자3</td><td>폐점완료</td></tr>
	</table>
</body>
</html>