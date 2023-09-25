<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="idresult">
    <h3>아이디 결과:</h3>
    	<c:if test="${m != null}">
        	<p>회원 아이디: ${m.memId}</p>
    	</c:if>
    	
    	<c:if test="${m == null}">
        	<p>회원 정보가 없습니다. 다시 확인해주세요</p>
    	</c:if>
</div>

</body>
</html>