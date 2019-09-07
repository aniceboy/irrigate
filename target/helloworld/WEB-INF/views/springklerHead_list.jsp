<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/7
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>area列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>喷头列表 —— 显示所有喷头</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary"  href="${pageContext.request.contextPath}/springklerHead/to_add">新增</a>
        </div>
        <div class="col-md-5 column">
            <a class="btn btn-primary"  href="${pageContext.request.contextPath}/employee/employeeInfo">返回</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>喷头编号</th>
                    <th>安装位置</th>
                    <th>安装时间</th>
                    <th>工作状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="springklerHead">
                    <tr>
                        <td>${springklerHead.springklerId}</td>
                        <td>${springklerHead.location}</td>
                        <td>${springklerHead.installtime}</td>
                        <td>${springklerHead.state}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/springklerHead/to_update?springklerId=${springklerHead.springklerId}">更改</a> |
                            <a href="${pageContext.request.contextPath}/springklerHead/remove?springklerId=${springklerHead.springklerId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
