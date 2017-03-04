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
    <title>Edit User</title>
</head>
<body>
<a href="<c:url value="/users"/>">Back to users list</a>
<br/>
<br/>
<h1>Edit User</h1>


<c:url var="addAction" value="/users/edit"/>

<form:form action="${addAction}" commandName="user">
    <table class="features-table">
        <tr>
            <td class="param"><form:label path="id">ID</form:label></td>
            <td><form:input readonly="true" path="id" value="${user.id}" /></td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="name">
                    <spring:message text="Username"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="age">
                    <spring:message text="Age"/>
                </form:label>
            </td>
            <td>
                <form:input path="age"/>
            </td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="email">
                    <spring:message text="Email"/>
                </form:label>
            </td>
            <td>
                <form:input path="email"/>
            </td>
        </tr>

        <tr>
            <td class="param"><form:label path="admin"><spring:message text="Admin"/></form:label></td>
            <td>
                <form:checkbox path="admin" value="${user.admin}"/>
            </td>
        </tr>
        <tr>
            <td><form:input type="hidden" path="createDate" value="${user.createDate}" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit" value="<spring:message text="Edit User"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
