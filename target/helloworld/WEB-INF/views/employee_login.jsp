<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/19
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="/img/favicon.png">

    <title>员工登录</title>

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

<div class="container" >
    <div class="login-form">
        <h3 style="margin-bottom:0;text-align:center;">员工登录</h3>
        <div class="login-wrap">

            <form id="gc" action="${pageContext.request.contextPath}/employee/login" method="post">

                <p class="login-img"><i class="icon_lock_alt"></i></p>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_profile"></i></span>
                    <input type="text" required id="an" name="an" class="form-control" placeholder="用户名" autofocus>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                    <input type="password" required id="password" name="password" class="form-control" placeholder="密码">
                </div>
                <label class="checkbox">
                    <input type="checkbox" value="remember-me"> 记住密码
                    <span class="pull-right"> <a href="#"> 忘记密码?</a></span>
                </label>
                <button class="btn btn-primary btn-lg btn-block" type="submit">登录</button>
            </form>
        </div>
    </div>

    <script>
        //对应后台返回的提示
        if ('${status}' != '') {
            if ('${status}' == 0) {
                alert('登录成功,即将跳转至用户详情页！')
                location.href = '${pageContext.request.contextPath}/employee/employeeInfo'
            }else if ('${status}' == 1) {
                alert('该账户不存在！');
            }
            else if ('${status}' == 2) {
                alert('密码错误！')
            }
        }
    </script>
</div>


</body>
</html>
