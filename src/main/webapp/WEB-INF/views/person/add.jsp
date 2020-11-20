<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="person">
    <form:input path="login" placeholder="write your login"/>
    <form:input path="email"/>
    <form:password path="password"/>
    <input type="submit"/>
</form:form>
</body>
</html>