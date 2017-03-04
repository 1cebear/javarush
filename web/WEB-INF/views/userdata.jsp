<%--
  Created by IntelliJ IDEA.
  User: Icebear
  Date: 04.03.2017
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>User Data</title>
</head>
<body>
<a href="<c:url value="/users"/>">Back to users list</a>
<br/>
<br/>
<h1>User Details</h1>

<table class="features-table">
    <tr class="param">
        <th>ID</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Age</th>
        <th>Admin</th>
        <th>Creation date</th>
    </tr>
    <tr class="value">
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.email}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createDate}</td>
    </tr>
</table>
</body>
</html>
