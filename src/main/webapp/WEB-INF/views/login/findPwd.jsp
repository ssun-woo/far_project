<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FAR</title>
    <script>
        function showScreen(screenId) {
            var screens = document.getElementsByClassName("screen");
            for (var i = 0; i < screens.length; i++) {
                screens[i].style.display = "none";
            }
            document.getElementById(screenId).style.display = "block";
        }
        
         window.onload = function() {
            showScreen('screen1'); // 기본 화면 설정
        }; 
    </script>
    
    <jsp:include page="../main/new_header2.jsp"/>
</head>
<body>
<div id="findPwdwrap">
	<h2 id="findPwdTitle">비밀번호 찾기</h2>
	
	<div id="memclassTitle">
	회원 유형
	</div>
	<select id="memclassSelect">
		<option>개인 회원</option>
		<option>개인 사업자 회원</option>
	</select>
	
	<br>
	<div id="findSelect">
    	<input type="radio" id="emailRadio" name="screen" value="screen1" checked="checked" onclick="showScreen('findPwdByEmail')"> 이메일
    	<input type="radio" id="telRadio" name="screen" value="screen2" onclick="showScreen('findPwdByTel')"> 휴대폰 번호
	</div>
	
    <div id="findPwdByEmail" class="screen">
        <form name="findPwdByEmail" action="">
        	<div id="findPwdByEmailIdTitle">아이디</div>
        	<input id="findPwdByEmailIdInput" type="text"><br>
        
        	<div id="findPwdByEmailNameTitle">이름</div>
        	<input id="findPwdByEmailNameInput" type="text"><br>
        	
        	<div id="findPwdByEmailTitle">이메일<br></div>
        	<input id="findPwdByEmailInput" type="text"><br>
        	
        	<input id="findPwdEmailSubmit" type="submit" value="확인">
        </form>
    </div>

    <div id="findPwdByTel" class="screen" style="display: none;">
        <form name="findPwdByTel" action="">
        	<div id="findPwdByEmailIdTitle">아이디</div>
        	<input id="findPwdByEmailIdInput" type="text"><br>
        	
        	<div id="findPwdByTelNameTitle">이름</div>
        	<input id="findPwdByTelNameInput" type="text"><br>
        	
        	<div id="findPwdByTelTitle">휴대폰 번호</div><br>
        	<input id="findPwdByTelInput" type="text"><br>
        	<input id="findPwdByTelSubmit" type="submit" value="확인">
        </form>
    </div>
    </div>
</body>
</html>