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
	<section id="menu_cont">
			<H3 id="cate_name">[페점 승인]</H3>
			
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
</body>
</html>