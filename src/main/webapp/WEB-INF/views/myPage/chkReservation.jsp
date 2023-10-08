<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>


<head>
<link
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<jsp:include page="../main/new_header.jsp" />
<meta charset="UTF-8">
<style link="../css/chkreservation.css"></style>
</head>
<body>
   <div class="main" style="width: 1300; margin: 0 auto;">
      <div class="chk_list">
         <table class="table table-hover">
            <thead>
               <tr>
                  <th style="text-align: center;">업체 이름</th>
                  <th style="text-align: center;">방 정보</th>
                  <th style="text-align: center;">체크인 날짜</th>
                  <th style="text-align: center;">체크아웃 날짜</th>
               </tr>
            </thead>
            <c:if test="${!empty resvList}">
               <c:forEach var="resv" items="${resvList}">
                  <tr>
                     <td style="text-align: center;">${resv.storeName}</td>
                     <td style="text-align: center;">${resv.roomName}</td>
                     <td style="text-align: center;">${resv.startDay}<%-- <fmt:parseDate value="${resv.startDay}" var="startDay" pattern="yyyy-MM-dd HH:mm:ss" />
                     <fmt:formatDate value="${startDay}" pattern="yyyy-MM-dd" /> --%>
                     </td>
                     <td style="text-align: center;">${resv.endDay}<%-- <fmt:parseDate value="${resv.endDay}" var="endDay" pattern="yyyy-MM-dd HH:mm:ss" />
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
   </div>
</div>
</body>
</html>