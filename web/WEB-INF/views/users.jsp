<%--
  Created by IntelliJ IDEA.
  User: Icebear
  Date: 04.03.2017
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users</title>
</head>
<body>

<h1>Users List</h1>

<c:if test="${!empty listUsers}">
    <table class="features-table">
        <tr class="param">
            <th>ID</th>
            <th>Name</th>
            <th>E-mail</th>
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
                <td>${user.email}</td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createDate}</td>
                <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<div style="align-content: center">
    <ul class="paging">
        <c:if test="${page > 1}">
            <li><a href="<c:url value="/users"/>">Back</a></li>
            <li><a href="<c:url value="/users"><c:param name="page" value="${page - 1}"/>${page - 1}</c:url>">Previous</a></li>
        </c:if>
        <li><spring:message text="${page}"/></li>
        <c:if test="${!empty listUsers}">
            <li><a href="<c:url value="/users"><c:param name="page" value="${page + 1}"/>${page + 1}</c:url>">Next</a></li>
        </c:if>
    </ul>
</div>

<br/>
<br/>
<c:url var="searchuser" value="/searchresults"/>
<form:form action="${searchuser}" commandName="searcheduser">
    <table width="30%">
        <tr>
            <td><input class="but" type="submit" name="action" value="<spring:message text="Search"/>"/></td>
            <td><form:input path="name"/> <spring:message text="Name"/></td>


        </tr>
    </table>
</form:form>

<form>
    <a class="but" href="/adduser">Add User</a>
</form>

<br/>
<br/>


</body>
</html>
