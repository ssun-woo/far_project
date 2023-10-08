<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../main/new_header4.jsp"/>

<div class="payment_msg">
      <h1>예약이 완료됐습니다</h1>
   </div>
<div class="payment_end">
   
   
   <div class="payment_product">
      <table width="100%">
         <tr>
            <th>
               <div class="product_img">
                  <img src="/upload/store_logo${s.storeLogo}">
               </div>
            </th>
         </tr>
         <tr>
            <td>예약기간(일): ${resvDTO.startDay } - ${resvDTO.endDay }</td>
         </tr>
         
         <tr>
            <td>가게 및 상품: ${resvDTO.storeName }, ${resvDTO.roomName }</td>
         </tr>
         
         <tr>
            <td>결제 금액: ${resvDTO.amount }원</td>
         </tr>
         
         <tr style="height: 60px;">
            <th colspan="2">
               <input type="button" onclick="location='/my_page/chkResv'" value="최근 예약 내역" class="reservation_list">
            </th>
         </tr>
      </table>
   </div>

</div>

<jsp:include page="../main/footer.jsp"/>