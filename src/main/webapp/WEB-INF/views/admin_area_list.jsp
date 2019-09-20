<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/19
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png">

    <title>区域列表</title>

    <!-- Bootstrap CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="/css/owl.carousel.css" type="text/css">
    <link href="/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="/css/fullcalendar.css">
    <link href="/css/widgets.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/style-responsive.css" rel="stylesheet" />
    <link href="/css/xcharts.min.css" rel=" stylesheet">
    <link href="/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>
    <script src="/js/lte-ie7.js"></script>
    <![endif]-->
</head>

<body>
<!-- container section start -->
<section id="container" class="">
<c:if test="${not empty admin}">

    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
        </div>

        <!--logo start-->
        <a href="${pageContext.request.contextPath}/admin/adminInfo" class="logo">校园智能灌溉系统 <span class="lite">管理员界面</span></a>


        <div class="top-nav notification-row">

            <ul class="nav pull-right top-menu">

                <!-- 人物资料按钮 -->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="${pageContext.request.contextPath}/img/avatar1_small.jpg">
                            </span>
                            <span class="username">${admin.name}</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="${pageContext.request.contextPath}/admin/change_password"><i class="icon_profile"></i>修改密码</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/login"><i class="icon_paperclip"></i> 切换用户</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/logout"><i class="icon_key_alt"></i> 注销</a>
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
                    <a class="" href="${pageContext.request.contextPath}/admin/adminInfo">
                        <i class="icon_house_alt"></i>
                        <span>主页</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_document_alt"></i>
                        <span>区域管理</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="${pageContext.request.contextPath}/area/admin/list">查看区域</a></li>
                        <li><a class="" href="${pageContext.request.contextPath}/area/admin/to_add">添加新区域</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_desktop"></i>
                        <span>员工管理</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="${pageContext.request.contextPath}/employee/list">查看员工信息</a></li>
                        <li><a class="" href="${pageContext.request.contextPath}/employee/to_add">添加员工信息</a></li>
                        <li><a class="" href="${pageContext.request.contextPath}/employee/update">修改员工信息</a></li>
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
                    <h3 class="page-header"><i class="fa fa-laptop"></i>查看区域</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="${pageContext.request.contextPath}/admin/adminInfo">主页</a></li>
                        <li><i class="fa fa-laptop"></i>查看区域</li>
                    </ol>
                </div>
            </div>
                <div class="panel-body">
                    <form class="form-horizontal " method="get">

                        <div class="row">
                            <div class="col-md-4 column">
                                <a class="btn btn-primary"  href="${pageContext.request.contextPath}/area/admin/to_add">新增</a>
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
                    </form>
                </div>
        <script src="/js/jquery.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <!-- nice scroll -->
        <script src="/js/jquery.scrollTo.min.js"></script>
        <script src="/js/jquery.nicescroll.js" type="text/javascript"></script>

        <!-- jquery ui -->
        <script src="/js/jquery-ui-1.9.2.custom.min.js"></script>

        <!--custom checkbox & radio-->
        <script type="text/javascript" src="js/ga.js"></script>
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
    </section>
</c:if>
</section>
</body>
</html>
