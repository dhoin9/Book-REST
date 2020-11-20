<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 17.11.2020
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Book</title>


</head>
<body>
<form:form method="post" modelAttribute="book">
    Title: <form:input path="title" value="${book.title}"/></br>
    Description <form:input path="description" value="${book.description}"/></br>
    Rating: <form:input path="rating" value="${book.rating}"/></br>
    Publisher: <form:select path="publisher.id" items="${publisher}" itemLabel="name" itemValue="id"/></br>

    <input type="submit" value="Save">
</form:form>
</body>
</html>
<%--${book.publisher.name}--%>