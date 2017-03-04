<%--
  Created by IntelliJ IDEA.
  User: Icebear
  Date: 04.03.2017
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Search result</title>
</head>
<body>
<a href="<c:url value="/users"/>">Back to users list</a>
<br/>
<br/>
<h1>Search results</h1>

<c:if test="${!empty listUsers}">
    <table class="features-table">
        <tr class="param">
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Admin</th>
            <th>Creation date</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createDate}</td>
                <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
