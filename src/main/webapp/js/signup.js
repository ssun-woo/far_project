function join_check(){

    $mem_id = $.trim($('#mem_id').val());
    $mem_pwd = $.trim($('#mem_pwd').val());
    $mem_pwdchk = $.trim($('#mem_pwdchk').val());
    $mem_name = $.trim($('#mem_name').val());
    $mem_email = $.trim($('#mem_email').val());
    $mem_tel = $.trim($('#mem_tel').val());
    
    if($mem_id == ""){
       alert('아이디를 입력하세요');
       $('#mem_id').val('').focus();
       return false;
    } else if($mem_id.length < 6) {
 		$warnidtext = "<font color='red'><strong>아이디는 6자 이상이어야합니다.</strong></font>"
 		$('#idcheck').text('');
 		$('#idcheck').show();
 		$('#idcheck').append($warnidtext);
 		return false;
 	} else if($mem_id.length > 16) {
 		$warnidtext = "<font color='red'><strong>아이디는 16자 이하이어야합니다.</strong></font>"
 		$('#idcheck').text('');
 		$('#idcheck').show();
 		$('#idcheck').append($warnidtext);
 		return false;
 	} else if(!(validId($mem_id))) {
 		$warnvalid = "<font color='red'><strong>아이디는 영소문자와 숫자만 가능합니다.</strong></font>"
 			$('#idcheck').text('');
 			$('#idcheck').show();
 			$('#idcheck').append($warnvalid);
 			
 			return false;
 	} else {
 		$('#idcheck').hide();
 	}
 
    if($mem_pwd == ""){
       alert('비밀번호를 입력하세요');
       $('#mem_pwd').val('').focus();
       return false;
    } else if($mem_pwd.length < 8) {
 		$warnpwdtext = "<font color='red'><strong>비밀번호는 8자 이상이어야합니다.</strong></font>"
 		$('#pwdcheck').text('');
 		$('#pwdcheck').show();
 		$('#pwdcheck').append($warnpwdtext);
 		return false;
 	} else if($mem_pwd.length > 16) {
 		$warnpwdtext = "<font color='red'><strong>비밀번호는 16자 이하이어야합니다.</strong></font>"
 		$('#pwdcheck').text('');
 		$('#pwdcheck').show();
 		$('#pwdcheck').append($warnpwdtext);
 		return false;
 	} else if(!(validpwd($mem_pwd))) {
 		$warnvalpwd = "<font color='red'><strong>비밀번호 형식이 일치하지않습니다.</strong></font>"
 			$('#pwdcheck').text('');
 			$('#pwdcheck').show();
 			$('#pwdcheck').append($warnvalpwd);
 			
 			return false;
 	} else {
 		$('#pwdcheck').hide();
 	}
 	
 	if(!($mem_pwd == $mem_pwdchk)) {
 		$warnequalpwd = "<font color='red'><strong>비밀번호가 일치하지않습니다.</strong></font>"
 		$('#pwddoublecheck').text('');
 		$('#pwddoublecheck').show();
 		$('#pwddoublecheck').append($warnequalpwd);
 		
 		return false;
 	}
 	
 	 if($mem_name == ""){
       alert('이름를 입력하세요');
       $('#mem_pwd').val('').focus();
       return false;
    }
 	
 	
 	
 	
 	
 	
 }
 
 function validId() {
	var pattern = new RegExp(/^[a-z0-9]/);
	return pattern.test($mem_id);
}

function validpwd() {
	var pattern = new RegExp(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/);
	return pattern.test($mem_pwd);
}