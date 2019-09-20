<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/19
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--    <meta charset="utf-8">-->
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="/img/favicon.png">

    <title>校园智能灌溉系统登录</title>

    <!-- Bootstrap CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-img3-body">

<div class="container">
    <div style="height: 500px">
        <br/><br/><br/><br/><br/><br/>
        <h1 style="margin-bottom:0;text-align:center;">欢迎使用校园智能灌溉系统</h1>
    </div>
    <div style="height:100px;width:300px;float:left;">
    </div>
    <div class="col-sm-10 col-sm-offset-1" style="height:100px;width:540px;float: left">
        <div class="row" >
            <div class="col-sm-4 layout-box" >
                <a href="${pageContext.request.contextPath}/admin/login">
                    <button class="btn btn-primary btn-lg btn-block" type="submit">管理员登录</button>
                </a>
            </div>
            <div class="col-sm-4 layout-box">
                <a href="${pageContext.request.contextPath}/employee/login">
                    <button class="btn btn-primary btn-lg btn-block" type="submit">用户登录</button>
                </a>
            </div>
        </div>
    </div>
</div>


</body>
</html>
