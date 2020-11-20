<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post"  modelAttribute="student">
    First Name <form:input path="firstName"/>
    Last Name<form:input path="lastName"/></br>
    Male: <form:radiobutton path="gender" value="M"/>
    Female: <form:radiobutton path="gender" value="F"/></br>
    Country: <form:select path="country" items="${countries}"/></br>
    Note:<form:textarea path="notes"/>
    Mailings:<form:checkbox path="mailingList"/></br>
    Skills:<form:select path="programmingSkills" items="${skills}" multiple="true"/></br>
    Hobbies:<form:checkboxes path="hobbies" items="${hobbies}"/></br>




    <input type="submit" value="Save">
</form:form>




</body>
</html>