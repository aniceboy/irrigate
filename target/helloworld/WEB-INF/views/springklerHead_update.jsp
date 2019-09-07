<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/7
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改喷头</title>
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
                    <small>修改喷头</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/springklerHead/update" method="post">
        <input type="hidden" name="springklerId" value="${springklerHead.springklerId}"/>
        喷头位置：<input type="text" name="location" value="${springklerHead.location}"/>
        安装时间：<input type="text" name="installtime" value="${springklerHead.installtime}"/>
        工作状态：<input type="text" name="state" value="${springklerHead.state}"/>
        <input type="submit" value="提交" />
    </form>
</div>
</body>
</html>