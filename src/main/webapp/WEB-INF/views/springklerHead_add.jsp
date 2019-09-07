<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/7
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增喷嚏</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增喷头</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/springklerHead/add" method="post">
        喷&nbsp;&nbsp;头&nbsp;&nbsp;
        编号：<input type="text" name="springklerId"><br><br><br>
        喷头位置：<input type="text" name="location"><br><br><br>
        工作状态：<input type="text" name="state"><br><br><br>
        <input type="submit" value="添加"  >
    </form>
</div>
</body>
</html>
