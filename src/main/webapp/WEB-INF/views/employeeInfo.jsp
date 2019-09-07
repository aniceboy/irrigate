<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/4
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
<div>
    <c:if test="${not empty employee}">
        <div>欢迎您，${employee.name}先生
            <a href="${pageContext.request.contextPath}/employee/logout">注销</a>
            <a href="${pageContext.request.contextPath}/employee/change_password">修改密码</a>
            <a href="${pageContext.request.contextPath}/employee/login">切换用户</a>
        </div>
    </c:if>
    <c:if test="${empty employee}">
        对不起，请先<a href="${pageContext.request.contextPath}/employee/login">登陆</a>
    </c:if>
</div>
</body>
</html>
