<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FAR</title>
    
    
    <jsp:include page="../main/new_header2.jsp"/>
</head>
<body>
<div id="findIdwrap">
    <h2 id="findIdTitle">아이디 찾기</h2>
    
    <div> <!-- 이 부분을 추가하였습니다 -->
        <form name="findIdByEmail" action="/findPwd" method="post">
        
        <div id="findPwddByEmail" class="screen">
        		<div id="findPwdByEmailNameTitle">아이디</div>
                <input id="findPwdByEmailNameInput" type="text" name="memId"><br>
            
                <div id="findPwdByEmailNameTitle">이름</div>
                <input id="findPwdByEmailNameInput" type="text" name="memName"><br>
                
                <div id="findPwdByEmail">이메일 또는 전화번호<br></div>
                <input id="findPwdByEmailInput" type="text" name="emailortel"><br>
                
                <input id="findPwdEmailSubmit" type="submit" value="확인">
            </form>
        </div>
    </div>
</div>
</body>
</html>