<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/7
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改区域</title>
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
                    <small>修改员工</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/employee/update" method="post">
        <input type="hidden" name="en" value="${employee.en}"/>
        员工名字：<input type="text" name="name" value="${employee.name}"/>
        员工区域：<input type="text" name="areaan" value="${employee.areaan}"/>
        员工职位：<input type="text" name="post" value="${employee.post}"/>
        <input type="submit" value="提交" />
    </form>
</div>
</body>
</html>
