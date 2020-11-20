<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Book</title>
</head>
<body>

<form:form method="post" modelAttribute="author">
    First Name: <form:input path="firstName"/>
    Last Name: <form:input path="lastName"/>

    <input type="submit" value="Save">
</form:form>


</body>
</html>