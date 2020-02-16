<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: taras
  Date: 14.02.2020
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <%--    <style>--%>
    <%--        * {--%>
    <%--            font-family: 'Quicksand', sans-serif;;--%>
    <%--        }--%>

    <%--        .login_form {--%>
    <%--            width: 450px;--%>
    <%--            height: 400px;--%>
    <%--            position: absolute;--%>
    <%--            left: 50%;--%>
    <%--            top: 50%;--%>
    <%--            transform: translate(-50%, -50%);--%>
    <%--            border: 1px solid #009879;--%>
    <%--            background: #009879;--%>
    <%--        }--%>

    <%--        .login_error {--%>
    <%--            color: #cd0400;--%>
    <%--        }--%>

    <%--        .login_internal_content {--%>
    <%--            position: absolute;--%>
    <%--            top: 50%;--%>
    <%--            left: 20%;--%>
    <%--            transform: translate(-20%, -50%);--%>

    <%--        }--%>

    <%--        .login_internal_content p {--%>
    <%--            margin: 0;--%>
    <%--            padding: 0;--%>
    <%--            font-weight: bold;--%>
    <%--        }--%>

    <%--        .login_form .login_internal_content input:not(:last-of-type){--%>
    <%--            border: none;--%>
    <%--            border-bottom: 1px solid #098879;--%>
    <%--            background-color: transparent;--%>
    <%--            height: 40px;--%>
    <%--            color: #ffffff;--%>
    <%--            width: 100%;--%>
    <%--            margin-bottom: 20px;--%>
    <%--            outline: none;--%>
    <%--        }--%>

    <%--        input:-webkit-autofill {--%>
    <%--            -webkit-box-shadow: inset 0 0 0 50px #009879 !important; /* Цвет фона */--%>
    <%--            -webkit-text-fill-color: #ffffff !important; /* цвет текста */--%>
    <%--            font-family: 'Quicksand', sans-serif;--%>
    <%--        }--%>

    <%--    </style>--%>
</head>
<body>
<div class="login_form">
    <div class="login_internal_content">
        <form:form action="${pageContext.request.contextPath}/authenticateUser" method="post">
            <c:if test="${param.error != null}">
                <p class="login_error">Invalid username or password</p>
            </c:if>
            <c:if test="${param.logout != null}">
                <p>logout</p>
            </c:if>
            <p>Username:</p>
            <input type="text" name="username">
            <p>Password:</p>
            <input type="password" name="password">
            <br><br>
            <input type="submit" value="Login">
        </form:form>
    </div>
</div>
</body>
</html>
