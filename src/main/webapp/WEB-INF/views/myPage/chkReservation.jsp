<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../main/new_header.jsp" />
<meta charset="UTF-8">
<style link="../css/chkreservation.css"></style>
</head>
<body>
<div>
   <div class="myPageInclude_logo">예약 내역</div>
      <div class="myPage_select">
      <select>
         <option>숙소</option>
         <option>식당</option>
         <option>문화</option>
         <option>뷰티</option>
      </select>
   </div>
   </div>
   <hr>
   <div class="chk_list">
      <table border="1">
         <tr>
            <th style="width: 180px;">업체 이름</th>
            <th style="width: 100px;">방 정보</th>
            <th style="width: 180px;">체크인 날짜</th>
            <th style="width: 180px;">체크아웃 날짜</th>
         </tr>
         <c:if test="${!empty resvList}">
            <c:forEach var="resv" items="${resvList}">
               <tr>
                  <td style="text-align: center;">${resv.storeName}</td>
                  <td style="text-align: center;">${resv.roomName}</td>
                  <td style="text-align: center;">${resv.startDay}
                     <%-- <fmt:parseDate value="${resv.startDay}" var="startDay" pattern="yyyy-MM-dd HH:mm:ss" />
                     <fmt:formatDate value="${startDay}" pattern="yyyy-MM-dd" /> --%>
                  </td>
                  <td style="text-align: center;">${resv.endDay}
                     <%-- <fmt:parseDate value="${resv.endDay}" var="endDay" pattern="yyyy-MM-dd HH:mm:ss" />
                     <fmt:formatDate value="${endDay}" pattern="yyyy-MM-dd" /> --%>
                  </td>
               </tr>
            </c:forEach>
         </c:if>
         <c:if test="${empty resvList}">
            <tr>
               <td colspan="4" style="text-align: center;">예약 내역이 없습니다.</td>
            </tr>
         </c:if>
      </table>
   </div>
</body>
</html>