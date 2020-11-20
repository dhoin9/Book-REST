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
<form:form method="post" modelAttribute="author">
    First Name: <form:input path="firstName"/>
    Last Name: <form:input path="lastName"/>
    <input type="submit" value="Save">
</form:form>
</body>
</html>
<%--${book.publisher.name}--%>