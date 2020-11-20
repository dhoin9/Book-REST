<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book List</title>
</head>
<body>

<table border="1">
    <thead>
    <th>lp</th>
    <th>isbn</th>
    <th>title</th>
    <th>author</th>
    <th>action</th>

    </thead>
    <tbody>
    <c:set var="count" value="0" scope="page" />
    <c:forEach items="${books}" var="book">
        <c:set var="count" value="${count + 1}" scope="page"/>
        <tr>
            <td><c:out value="${count}"/></td>
            <td><c:out value="${book.isbn}"/></td>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><a href="<c:out value="/admin/books/edit/${book.id}"/>">Edit</a>
                <a href="<c:out value="/admin/books/details/${book.id}"/>">Details</a>
                <a href="<c:out value="/admin/books/delete/${book.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

