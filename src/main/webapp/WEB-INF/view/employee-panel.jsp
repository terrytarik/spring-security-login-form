<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: taras
  Date: 15.02.2020
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

bitch's name: <security:authentication property="principal.username"/>
<br>
bitch's role: <security:authentication property="principal.authorities"/>
<br>

<security:authorize access="hasRole('MANAGER')">
    <a href="${pageContext.request.contextPath}/managerPage">Manager's info</a>
</security:authorize>

<security:authorize access="hasRole('ADMIN')">
    <a href="${pageContext.request.contextPath}/adminPage">Admin's info</a>
</security:authorize>
<form:form method="post" action="${pageContext.request.contextPath}/logout">
    <input type="submit" value="Logout">
</form:form>

</body>
</html>
