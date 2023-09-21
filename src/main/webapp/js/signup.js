$(document).ready(function() {
  // 아이디 입력 필드에 포커스를 주었을 때에만 이벤트 핸들러를 연결
  $("#memId").on("focus", function() {
    $(this).on("input", function() {
      idcheck($(this).val()); // jQuery로 값을 가져와서 함수에 전달
    });
  });

  // 나머지 입력 필드의 이벤트 핸들러는 동일하게 유지
  $("#memPwd").on("input", function() {
    pwdcheck($(this).val());
  });

  $("#memPwdchk").on("input", function() {
    pwddoublecheck($(this).val(), $("#memPwd").val());
  });

  $("#memEmail").on("input", function() {
    emailcheck($(this).val());
  });

  $("#memTel").on("input", function() {
    telcheck($(this).val());
  });
});

function idcheck(memId) {
  memId = String(memId).trim(); // 입력값을 문자열로 변환하고 양 끝의 공백을 제거합니다.

  if (memId.length < 6) {
    $warnidtext = "<font color='red'><strong>아이디는 6자 이상이어야 합니다.</strong></font>"
    $('#idcheck').text('');
    $('#idcheck').show();
    $('#idcheck').append($warnidtext);
    return false;
  } else if (memId.length > 16) {
    $warnidtext = "<font color='red'><strong>아이디는 16자 이하이어야 합니다.</strong></font>"
    $('#idcheck').text('');
    $('#idcheck').show();
    $('#idcheck').append($warnidtext);
    return false;
  } else if (!validId(memId)) {
    $warnvalid = "<font color='red'><strong>아이디는 영소문자와 숫자만 가능합니다.</strong></font>"
    $('#idcheck').text('');
    $('#idcheck').show();
    $('#idcheck').append($warnvalid);
    return false;
  } else {
    // AJAX 요청 시작
    var flag = false; // 사용 가능한 아이디인지 여부를 저장하는 변수를 추가
    $.ajax({
      type: 'post',
      url: '/signup/check',
      data: {
        'memId': memId
      },
      datatype: 'text',
      async: false, // 동기적으로 AJAX 요청을 수행
      success: function($cnt) {
        if ($cnt == 1) {
          $warnidtext = "<font color='red'><strong>이미 사용중인 아이디입니다.</strong></font>"
          $('#idcheck').text('');
          $('#idcheck').show();
          $('#idcheck').append($warnidtext);
          $('#memId').focus();
        } else {
          $warnidtext = "<font color='blue'><strong>사용 가능한 아이디입니다.</strong></font>"
          $('#idcheck').text('');
          $('#idcheck').show();
          $('#idcheck').append($warnidtext);
          flag = true; // 사용 가능한 아이디일 경우 true로 설정
          
        }
      },
      error: function() {
        // 에러 처리
        alert('서버 오류로 인해 아이디 확인에 실패했습니다.');
      }
    });

    return flag; // flag 변수를 반환하여 사용 가능한 아이디인 경우에만 true를 반환
  }
}

function submitForm() {
  var memId = document.getElementById('memId').value;
  var memPwd = document.getElementById('memPwd').value;
  var memName = document.getElementById('memName').value;
  var memEmail = document.getElementById('memEmail').value;
  var memTel = document.getElementById('memTel').value;

  if (memId == "") {
    alert('아이디를 입력하세요');
    $('#memId').val('').focus();
    return false;
  }

  if (!idcheck(memId)) {
    alert('ID를 확인해주세요.');
    $('#memId').val('').focus();
    return false;
  }

  // 나머지 입력 항목 검증 코드 추가

  // 모든 입력이 유효한 경우에만 true를 반환하도록 수정
  return true;
}



function pwdcheck(memPwd) { // 비밀번호 값을 매개변수로 받음
  if (memPwd.length < 8) {
    $warnpwdtext = "<font color='red'><strong>비밀번호는 8자 이상이어야합니다.</strong></font>"
    $('#pwdcheck').text('');
    $('#pwdcheck').show();
    $('#pwdcheck').append($warnpwdtext);
    return false;
  } else if (memPwd.length > 16) {
    $warnpwdtext = "<font color='red'><strong>비밀번호는 16자 이하이어야합니다.</strong></font>"
    $('#pwdcheck').text('');
    $('#pwdcheck').show();
    $('#pwdcheck').append($warnpwdtext);
    return false;
  } else if (!validpwd(memPwd)) {
    $warnvalpwd = "<font color='red'><strong>비밀번호 형식이 일치하지않습니다.</strong></font>"
    $('#pwdcheck').text('');
    $('#pwdcheck').show();
    $('#pwdcheck').append($warnvalpwd);

    return false;
  } else {
    $('#pwdcheck').hide();
    return true;
  }
}

function pwddoublecheck(memPwdchk, memPwd) { // 비밀번호와 비밀번호 확인 값을 매개변수로 받음
  if (memPwd !== memPwdchk) {
    $warnequalpwd = "<font color='red'><strong>비밀번호가 일치하지않습니다.</strong></font>"
    $('#pwddoublecheck').text('');
    $('#pwddoublecheck').show();
    $('#pwddoublecheck').append($warnequalpwd);

    return false;
  } else {
    $('#pwddoublecheck').hide();
    return true;
  }
}

function emailcheck(memEmail) { // 이메일 값을 매개변수로 받음
  if (!validemail(memEmail)) {
    $warnvalemail = "<font color='red'><strong>이메일 형식이 일치하지않습니다. ex)aaa@OOO.com</strong></font>"
    $('#emailcheck').text('');
    $('#emailcheck').show();
    $('#emailcheck').append($warnvalemail);

    return false;
  } else {
    $('#emailcheck').hide();
    return true;
  }
}

function telcheck(memTel) { // 전화번호 값을 매개변수로 받음
  if (!validtel(memTel)) {
    $warnvaltel = "<font color='red'><strong>숫자만 입력해주세요('-'제외)</strong></font>"
    $('#telcheck').text('');
    $('#telcheck').show();
    $('#telcheck').append($warnvaltel);

    return false;
  } else {
    $('#telcheck').hide();
    return true; // 유효한 전화번호 형식인 경우 true를 반환
  }
}

function submitForm() {
  
  var memId = document.getElementById('memId').value;
  var memPwd = document.getElementById('memPwd').value;
  var memPwdchk = document.getElementById('memPwdchk').value;
  var memName = document.getElementById('memName').value;
  var memEmail = document.getElementById('memEmail').value;
  var memTel = document.getElementById('memTel').value;

  if (memId == "") {
    alert('아이디를 입력하세요');
    $('#memId').val('').focus();
    return false;
  } else if (!idcheck(memId)) {
    alert('ID를 확인해주세요.');
    $('#memId').val('').focus();
    return false;
  }

  if (memPwd == "") {
    alert('비밀번호를 입력하세요');
    $('#memPwd').val('').focus();
    return false;
  } else if (!pwdcheck(memPwd)) {
    alert('비밀번호를 확인해주세요');
    $('#memPwd').val('').focus();
    return false;
  } else if (!pwddoublecheck(memPwdchk, memPwd)) {
    alert('비밀번호가 일치하지않습니다');
    $('#memPwdchk').val('').focus();
    return false;
  }

  if (memName == "") {
    alert('이름을 입력하세요');
    $('#memName').val('').focus();
    return false;
  }

  if (memEmail == "") {
    alert('이메일을 입력하세요');
    $('#memEmail').val('').focus();
    return false;
  } else if (!emailcheck(memEmail)) {
    alert('이메일을 확인해주세요');
    $('#memEmail').val('').focus();
    return false;
  }

  if (memTel == "") {
    alert('전화번호를 입력하세요');
    $('#memTel').val('').focus();
    return false;
  } else if (!telcheck(memTel)) {
    alert('전화번호 형식이 일치하지 않습니다.');
    $('#memTel').val('').focus();
    return false;
  } 

  return true;
  
}

function validId(memId) {
  var pattern = new RegExp(/^[a-z0-9]+$/);
  return pattern.test(memId);
}

function validpwd(memPwd) {
  var pattern = new RegExp(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/);
  return pattern.test(memPwd);
}

function validemail(memEmail) {
  var pattern = new RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
  return pattern.test(memEmail);
}

function validtel(memTel) {
  var pattern = new RegExp(/^[0-9]+$/);
  return pattern.test(memTel);
}