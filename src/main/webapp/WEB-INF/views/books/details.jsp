<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
</head>
<body>

    ISBN: <c:out value="${book.isbn}"></c:out> </br>
    Title: <c:out value="${book.title}"></c:out> </br>
    Author <c:out value="${book.author}"></c:out> </br>
    Publisher <c:out value="${book.publisher}"></c:out> </br>


</body>
</html>
