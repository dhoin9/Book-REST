<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Book</title>
</head>
<body>

<form:form method="post" modelAttribute="book">
    Title: <form:input path="title"/>
    Description <form:input path="description"/>
    Publisher: <form:select path="publisher.id" items="${publisher}" itemLabel="name" itemValue="id"/></br>
    Rating: <form:input path="rating"/></br>
    <%--    Male: <form:radiobutton path="gender" value="M"/>--%>
    <%--    Female: <form:radiobutton path="gender" value="F"/></br>--%>
    <%--    Country: <form:select path="country" items="${countries}"/></br>--%>
    <%--    Note:<form:textarea path="notes"/>--%>
    <%--    Mailings:<form:checkbox path="mailingList"/></br>--%>
        Authors: <form:select path="authorLis" items="${authors}" itemLabel="lastName"  itemValue="id" multiple="true"/></br>
    <%--    Hobbies:<form:checkboxes path="hobbies" items="${hobbies}"/></br>--%>


    <input type="submit" value="Save">
</form:form>


</body>
</html>