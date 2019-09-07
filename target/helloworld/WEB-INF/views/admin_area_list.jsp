<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <small>区域列表 —— 显示所有区域</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary"  href="${pageContext.request.contextPath}/area/admin/to_add">新增</a>
        </div>
        <div class="col-md-5 column">
            <a class="btn btn-primary"  href="${pageContext.request.contextPath}/admin/adminInfo">返回</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>区域编号</th>
                    <th>区域名称</th>
                    <th>区域地址</th>
                    <th>区域数量</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="area">
                    <tr>
                        <td>${area.an}</td>
                        <td>${area.name}</td>
                        <td>${area.location}</td>
                        <td>${area.number}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/area/admin/to_update?an=${area.an}">更改</a> |
                            <a href="${pageContext.request.contextPath}/area/admin/remove?an=${area.an}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
