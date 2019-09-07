<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增区域</title>
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
    <form action="${pageContext.request.contextPath}/area/admin/add" method="post">
        区&nbsp;&nbsp;域&nbsp;&nbsp;
        编号：<input type="text" name="an"><br><br><br>
        区域名称：<input type="text" name="name"><br><br><br>
        区域地址：<input type="text" name="location"><br><br><br>
        区域数量：<input type="text" name="number"><br><br><br>
        <input type="submit" value="添加"  >
    </form>
</div>
</body>
</html>

