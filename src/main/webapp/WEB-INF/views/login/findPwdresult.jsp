<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../main/new_header2.jsp"/>
<script src="/js/signup.js"></script>
</head>
<body>
	<c:if test="${m != null }">
	<div id="pwdresult">
		<h2>비밀번호 재설정</h2>    
    	<form action="/resetPwd" method="post">
    	<h1>${m.memId }</h1>
    		<div class="joinpwd_wrap">
						<div class="joinpwd_img">
							<img class="join_pwd" src="../images/login/login_pwd.png">
						</div>
						<input id="memPwd" class="joinpwd" type="password" name="memPwd" placeholder="비밀번호">
					</div>
					<br><span id="pwdcheck" class="error-message"></span><br>
					
					<div class="joinpwd_wrap">
						<div class="joinpwd_img">
							<img class="join_pwd" src="../images/login/login_pwd.png">
						</div>
						<input id="memPwdchk" class="joinpwd" type="password" name="memPwdchk" placeholder="비밀번호 확인" ><br>
					</div>
					<br><span id="pwddoublecheck" class="error-message"></span><br>
					<input class="submit" type="submit" value="확인" onclick="return submitForm()"><br>
    	</form>
	</div>
	</c:if>
	
	<c:if test="${m == null }">
		회원정보가 없습니다.
	</c:if>
</body>
</html>