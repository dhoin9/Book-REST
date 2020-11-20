<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 17.11.2020
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Author list</title>


</head>
<body>
<table >
    <thead>
    <tr class="d-flex">
        <th class="col-1">ID</th>
        <th class="col-2">Fist Name</th>
        <th class="col-7">Last Name</th>
        <th class="col-2 center">AKCJE</th>
    </tr>
    </thead>
    <tbody class="text-color-lighter">
    <c:set var="count" value="0" scope="page" />
    <c:forEach items="${authors}" var="author">

        <tr class="d-flex">
            <td class="col-1">${author.id}</td>
            <td class="col-2">${author.firstName}</td>
            <td class="col-7">${author.lastName}</td>
            <td class="col-2 d-flex align-items-center justify-content-center flex-wrap">

                <form method="get" action="/author/delete/${author.id}"
                      onsubmit="return window.confirm('Czy jesteś pewien?')">
                    <input type="hidden" name="delete" value="${author.id}">
                    <input  type="submit" value="Usuń">
                </form>
                <a href="/author/edit/${author.id}" >Edit</a>
            </td>

        </tr>
    </c:forEach>
    </tbody>
    </table >
</body>
</html>
