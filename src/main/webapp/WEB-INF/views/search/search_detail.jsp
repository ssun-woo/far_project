<%-- search_detail.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results for "<c:out value="${keyword}" />"</h1>
    
    <!-- Store Results -->
    <h2>Stores</h2>
    <ul>
        <c:forEach var="store" items="${stores}">
            <li>${store.store_name} - ${store.store_addr} - ${store.cate}</li>
        </c:forEach>
    </ul>
</body>
</html>