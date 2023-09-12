$(document).ready(function() {
  // 아이디 입력 필드에 포커스를 주었을 때에만 이벤트 핸들러를 연결
  $("#mem_id").on("focus", function() {
    $(this).on("input", function() {
      idcheck($(this).val()); // jQuery로 값을 가져와서 함수에 전달
    });
  });

  // 나머지 입력 필드의 이벤트 핸들러는 동일하게 유지
  $("#mem_pwd").on("input", function() {
    pwdcheck($(this).val());
  });

  $("#mem_pwdchk").on("input", function() {
    pwddoublecheck($(this).val(), $("#mem_pwd").val());
  });

  $("#mem_email").on("input", function() {
    emailcheck($(this).val());
  });

  $("#mem_tel").on("input", function() {
    telcheck($(this).val());
  });
});

function idcheck(mem_id) {
  mem_id = String(mem_id).trim(); // 입력값을 문자열로 변환하고 양 끝의 공백을 제거합니다.

  if (mem_id.length < 6) {
    $warnidtext = "<font color='red'><strong>아이디는 6자 이상이어야 합니다.</strong></font>"
    $('#idcheck').text('');
    $('#idcheck').show();
    $('#idcheck').append($warnidtext);
    return false;
  } else if (mem_id.length > 16) {
    $warnidtext = "<font color='red'><strong>아이디는 16자 이하이어야 합니다.</strong></font>"
    $('#idcheck').text('');
    $('#idcheck').show();
    $('#idcheck').append($warnidtext);
    return false;
  } else if (!validId(mem_id)) {
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
        'mem_id': mem_id
      },
      datatype: 'text',
      async: false, // 동기적으로 AJAX 요청을 수행
      success: function($cnt) {
        if ($cnt == 1) {
          $warnidtext = "<font color='red'><strong>이미 사용중인 아이디입니다.</strong></font>"
          $('#idcheck').text('');
          $('#idcheck').show();
          $('#idcheck').append($warnidtext);
          $('#mem_id').focus();
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
  var mem_id = document.getElementById('mem_id').value;
  var mem_pwd = document.getElementById('mem_pwd').value;
  var mem_name = document.getElementById('mem_name').value;
  var mem_email = document.getElementById('mem_email').value;
  var mem_tel = document.getElementById('mem_tel').value;

  if (mem_id == "") {
    alert('아이디를 입력하세요');
    $('#mem_id').val('').focus();
    return false;
  }

  if (!idcheck(mem_id)) {
    alert('ID를 확인해주세요.');
    $('#mem_id').val('').focus();
    return false;
  }

  // 나머지 입력 항목 검증 코드 추가

  // 모든 입력이 유효한 경우에만 true를 반환하도록 수정
  return true;
}



function pwdcheck(mem_pwd) { // 비밀번호 값을 매개변수로 받음
  if (mem_pwd.length < 8) {
    $warnpwdtext = "<font color='red'><strong>비밀번호는 8자 이상이어야합니다.</strong></font>"
    $('#pwdcheck').text('');
    $('#pwdcheck').show();
    $('#pwdcheck').append($warnpwdtext);
    return false;
  } else if (mem_pwd.length > 16) {
    $warnpwdtext = "<font color='red'><strong>비밀번호는 16자 이하이어야합니다.</strong></font>"
    $('#pwdcheck').text('');
    $('#pwdcheck').show();
    $('#pwdcheck').append($warnpwdtext);
    return false;
  } else if (!validpwd(mem_pwd)) {
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

function pwddoublecheck(mem_pwdchk, mem_pwd) { // 비밀번호와 비밀번호 확인 값을 매개변수로 받음
  if (mem_pwd !== mem_pwdchk) {
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

function emailcheck(mem_email) { // 이메일 값을 매개변수로 받음
  if (!validemail(mem_email)) {
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

function telcheck(mem_tel) { // 전화번호 값을 매개변수로 받음
  if (!validtel(mem_tel)) {
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
  
  var mem_id = document.getElementById('mem_id').value;
  var mem_pwd = document.getElementById('mem_pwd').value;
  var mem_pwdchk = document.getElementById('mem_pwdchk').value;
  var mem_name = document.getElementById('mem_name').value;
  var mem_email = document.getElementById('mem_email').value;
  var mem_tel = document.getElementById('mem_tel').value;

  if (mem_id == "") {
    alert('아이디를 입력하세요');
    $('#mem_id').val('').focus();
    return false;
  } else if (!idcheck(mem_id)) {
    alert('ID를 확인해주세요.');
    $('#mem_id').val('').focus();
    return false;
  }

  if (mem_pwd == "") {
    alert('비밀번호를 입력하세요');
    $('#mem_pwd').val('').focus();
    return false;
  } else if (!pwdcheck(mem_pwd)) {
    alert('비밀번호를 확인해주세요');
    $('#mem_pwd').val('').focus();
    return false;
  } else if (!pwddoublecheck(mem_pwdchk, mem_pwd)) {
    alert('비밀번호가 일치하지않습니다');
    $('#mem_pwdchk').val('').focus();
    return false;
  }

  if (mem_name == "") {
    alert('이름을 입력하세요');
    $('#mem_name').val('').focus();
    return false;
  }

  if (mem_email == "") {
    alert('이메일을 입력하세요');
    $('#mem_email').val('').focus();
    return false;
  } else if (!emailcheck(mem_email)) {
    alert('이메일을 확인해주세요');
    $('#mem_email').val('').focus();
    return false;
  }

  if (mem_tel == "") {
    alert('전화번호를 입력하세요');
    $('#mem_tel').val('').focus();
    return false;
  } else if (!telcheck(mem_tel)) {
    alert('전화번호 형식이 일치하지 않습니다.');
    $('#mem_tel').val('').focus();
    return false;
  } 

  return true;
  
}

function validId(mem_id) {
  var pattern = new RegExp(/^[a-z0-9]+$/);
  return pattern.test(mem_id);
}

function validpwd(mem_pwd) {
  var pattern = new RegExp(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/);
  return pattern.test(mem_pwd);
}

function validemail(mem_email) {
  var pattern = new RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
  return pattern.test(mem_email);
}

function validtel(mem_tel) {
  var pattern = new RegExp(/^[0-9]+$/);
  return pattern.test(mem_tel);
}