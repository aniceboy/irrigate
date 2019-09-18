<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/8
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>传感器列表</title>
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
                    <small>传感器列表 —— 显示所有传感器</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary"  href="${pageContext.request.contextPath}/employee/employeeInfo">返回</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>序列号</th>
                    <th>传感器方向</th>
                    <th>喷头ID</th>
                    <th>位置</th>
                    <th>时间</th>
                    <th>温度</th>
                    <th>湿度</th>
                    <th>工作状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="sensorData">
                    <tr>
                        <th>${sensorData.id}</th>
                        <th>${sensorData.direction}</th>
                        <th>${sensorData.springklerId}</th>
                        <th>${sensorData.location}</th>
                        <th>${sensorData.rTime}</th>
                        <th>${sensorData.tData}</th>
                        <th>${sensorData.hData}</th>
                        <th>${sensorData.sData}</th>
                        <td>
                            <a href="${pageContext.request.contextPath}/sensorData/goto_tDataCharts?direction=${sensorData.direction}&sprinklerId=${sensorData.springklerId}">温度图</a>|
                            <a href="${pageContext.request.contextPath}/sensorData/goto_hDataCharts?direction=${sensorData.direction}&sprinklerId=${sensorData.springklerId}">湿度图</a>|
                            <a href="${pageContext.request.contextPath}/sensorData/remove?id=${sensorData.id}">删除</a>
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
