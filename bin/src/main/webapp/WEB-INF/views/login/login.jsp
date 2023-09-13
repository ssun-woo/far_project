<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp"/>
<title>로그인</title>
</head>
<body>
	<div class="far">
		<h1>FAR</h1>
	</div>
	<div class="wrap">
		<div class="login_form">
			<form name="frmLogin" action="">
				<div class="id_wrap">
					<div class="id_img">
						<img class="login_id" src="../images/login/login_id.png">
					</div>
					<input class="id" type="text" name="user_id" placeholder="아이디">
				</div>
				
				<div class="pwd_wrap">
					<div class="pwd_img">
						<img class="login_pwd" src="../images/login/login_pwd.png">
					</div>
					<input class="pwd" type="password" name="user_pwd" placeholder="비밀번호">
				</div>
				<br>
				<input class="submit" type="submit" value="로그인"><br>
			</form>
			<br><br>
			<span><a href="signUp"><u>회원가입</u></a>&nbsp;|&nbsp;<a href="findId"><u>아이디 찾기</u></a>&nbsp;|&nbsp;<a href="findPwd"><u>비밀번호 찾기</u></a>&nbsp;</span>
		</div>
	</div>
</body>
</html>