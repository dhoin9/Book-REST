<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Book</title>
</head>
<body>

<form:form method="post" modelAttribute="book">
    ISBN: <form:input path="isbn"/>
         <form:errors path="isbn"/><br/>
    Title: <form:input path="title"/>
    Author <form:input path="author"/>
    Publisher <form:input path="Publisher"/>

    <input type="submit" value="Save">
</form:form>


</body>
</html>