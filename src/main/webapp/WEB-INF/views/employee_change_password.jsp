<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/19
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="/img/favicon.png">

    <title>修改密码</title>

    <!-- Bootstrap CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/css/font-awesome.min.css" rel="stylesheet" />
    <!-- date picker -->

    <!-- color picker -->

    <!-- Custom styles -->
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>
    <script src="/js/lte-ie7.js"></script>
    <![endif]-->

</head>
<body>
<section id="container" class="">
<c:if test="${not empty employee}">

    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
        </div>

        <!--logo start-->
        <a href="${pageContext.request.contextPath}/employee/employeeInfo" class="logo">校园智能灌溉系统 <span class="lite">员工界面</span></a>


        <div class="top-nav notification-row">

            <ul class="nav pull-right top-menu">

                <!-- 人物资料按钮 -->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="/img/avatar1_small.jpg">
                            </span>
                        <span class="username">${employee.name}</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li>
                            <a href="${pageContext.request.contextPath}/employee/login"><i class="icon_paperclip"></i> 切换用户</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/employee/logout"><i class="icon_key_alt"></i> 注销</a>
                        </li>

                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <!--左侧菜单栏-->
    <aside>
        <div id="sidebar"  class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
                <li class="active">
                    <a class="" href="${pageContext.request.contextPath}/employee/employeeInfo">
                        <i class="icon_house_alt"></i>
                        <span>主页</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_document_alt"></i>
                        <span>喷头管理</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="${pageContext.request.contextPath}/springklerHead/list">查看喷头状态</a></li>
                        <li><a class="" href="${pageContext.request.contextPath}/springklerHead/to_add">添加新喷头</a></li>
                        <li><a class="" href="${pageContext.request.contextPath}/springklerHead/update">修改喷头信息</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_desktop"></i>
                        <span>传感器管理</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="${pageContext.request.contextPath}/sensorData/list">查看传感器数据</a></li>
                    </ul>
                </li>

            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!--overview start-->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-laptop"></i>修改密码</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="${pageContext.request.contextPath}/employee/employeeInfo">主页</a></li>
                        <li><i class="fa fa-laptop"></i>修改密码</li>
                    </ol>
                </div>
            </div>

            <section class="panel">
                <header class="panel-heading">
                    修改密码
                </header>
                <div class="panel-body">
                    <div class="form-horizontal ">
                        <form id="gc" action="${pageContext.request.contextPath}/employee/change_password" method="post" >
                            <div class="form-group">
                                <label class="col-sm-1 control-label">原密码</label>
                                <div class="col-sm-4">
                                    <input type="password" required id="password" name="password" class="form-control" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">新密码</label>
                                <div class="col-sm-4">
                                    <input type="password" required id="new1" name="new1" class="form-control" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">确认密码</label>
                                <div class="col-sm-4">
                                    <input type="password" required id="new2" name="new2" class="form-control" placeholder="">
                                </div>
                            </div>
                            <div class="col-lg-offset-1">
                                <input type="submit" value="确认修改">
                            </div>
                        </form>
                    </div>
                </div>
            </section>
            <!--main content end-->
        </section>
    </section>

    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="/js/jquery.scrollTo.min.js"></script>
    <script src="/js/jquery.nicescroll.js" type="text/javascript"></script>

    <!-- jquery ui -->
    <script src="/js/jquery-ui-1.9.2.custom.min.js"></script>

    <!--custom checkbox & radio-->
    <script type="text/javascript" src="/js/ga.js"></script>
    <!--custom switch-->
    <script src="/js/bootstrap-switch.js"></script>
    <!--custom tagsinput-->
    <script src="/js/jquery.tagsinput.js"></script>

    <!-- colorpicker -->

    <!-- bootstrap-wysiwyg -->
    <script src="/js/jquery.hotkeys.js"></script>
    <script src="/js/bootstrap-wysiwyg.js"></script>
    <script src="/js/bootstrap-wysiwyg-custom.js"></script>
    <!-- ck editor -->
    <script type="text/javascript" src="/assets/ckeditor/ckeditor.js"></script>
    <!-- custom form component script for this page-->
    <script src="/js/form-component.js"></script>
    <!-- custome script for all page -->
    <script src="/js/scripts.js"></script>
    <script>
        //对应后台返回的提示
        if ('${status}' != '') {
            if ('${status}' == 1) {
                alert('修改成功,即将跳转至用户详情页！')
                location.href = '${pageContext.request.contextPath}/employee/employeeInfo'
            }else if ('${status}' == 0) {
                alert('原密码输入错误！');
            }
            else if ('${status}' == 2) {
                alert('两次密码不一致！')
            }
        }
    </script>
</c:if>
    <c:if test="${empty employee}">
        对不起，请先<a href="${pageContext.request.contextPath}/employee/login">登陆</a>
    </c:if>
</section>
</body>
</html>
