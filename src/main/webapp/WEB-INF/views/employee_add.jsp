<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/7
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增员工</title>
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
                    <small>新增区域</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/employee/add" method="post">
        员&nbsp;&nbsp;工&nbsp;&nbsp;
        工号：<input type="text" name="en"><br><br><br>
        员工名字：<input type="text" name="name"><br><br><br>
        员工区域：<input type="text" name="areaan"><br><br><br>
        员工职位：<input type="text" name="post"><br><br><br>
        <input type="submit" value="添加"  >
    </form>
</div>
</body>
</html>

