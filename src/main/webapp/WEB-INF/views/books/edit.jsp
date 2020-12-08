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
    ISBN: <form:input path="isbn" />   <form:errors path="isbn"/></br>
    Title: <form:input path="title"/>  <form:errors path="title"/></br>
    Author <form:input path="author"/> <form:errors path="author"/></br>
    Publisher <form:input path="publisher"/><form:errors path="publisher"/></br>

    <input type="submit" value="Save">
</form:form>
</body>
</html>
<%--${book.publisher.name}--%>