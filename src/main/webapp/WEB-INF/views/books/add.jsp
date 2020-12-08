<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Book</title>

    <h1>New Book</h1>
</head>
<body>

<form:form method="post" modelAttribute="book">
    ISBN: <form:input path="isbn"/>
    <form:errors path="isbn" style="color:red"/><br/>
    Title: <form:input path="title"/>
    <form:errors path="title" style="color:red"/><br/>
    Author <form:input path="author"/>
    <form:errors path="author" style="color:red"/><br/>
    Publisher <form:input path="publisher"/>
    <form:errors path="publisher" style="color:red"/><br/>

    <input type="submit" value="Save">
</form:form>


</body>
</html>