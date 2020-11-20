<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 17.11.2020
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book list</title>
<c:forEach items="${books}" var="book">
    "${book}" <a href="/bookform/edit/${book.id}" >Edit</a>  <a href="/bookform/delete/${book.id}" >Delete</a></br>

</c:forEach>
</head>
<body>

</body>
</html>
