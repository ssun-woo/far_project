<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP; 
        IMP.init("imp17372284"); 
        
        function requestPay() {
            IMP.request_pay({
                pg: 'kakaopay',
                pay_method: "card",
                merchant_uid: 'merchant_' + new Date().getTime(),   // 주문번호
                name: '룸101',
                amount: '35000',                         // 숫자 타입
                buyer_email: 'han98ok@naver.com',
                buyer_name: '김수빈',
                buyer_tel: '01077777777'
            }, function (rsp) { // callback 
                $.ajax({
                   type: 'POST',
                   url: '/verify/' + rsp.imp_uid
                }).done(function(data) {
                    if(rsp.paid_amount === data.response.amount){
                        alert("결제 성공");
                    } else {
                        alert("결제 실패");
                    }
                });
            });
        }
    </script>
    <meta charset="UTF-8">
    <title>Sample Payment</title>
</head>
<body>
    <button onclick="requestPay()">결제하기</button> <!-- 결제하기 버튼 생성 -->
</body>
</html>