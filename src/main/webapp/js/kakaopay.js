
var IMP = window.IMP;
var totalPrice = document.getElementById("totalPrice"); 
IMP.init("imp17372284"); 

/*
function requestPay() {
    IMP.request_pay({
        pg: 'kakaopay',
        pay_method: "card",
        merchant_uid: 'merchant_' + new Date().getTime(),   // 주문번호
        name: '${room.roomName}',
        amount: ${totalPrice},                         // 숫자 타입
        buyer_email: '${member.memEmail}',
        buyer_name: '${member.memId}',
        buyer_tel: '${member.memTel}'
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
*/

function chk() {
	console.log(IMP);
	
}
