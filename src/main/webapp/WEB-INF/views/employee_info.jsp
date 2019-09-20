<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/19
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="/img/favicon.png">

    <title>校园智能灌溉系统主页</title>

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
                        <li class="eborder-top">
                            <a href="${pageContext.request.contextPath}/employee/change_password"><i class="icon_profile"></i>修改密码</a>
                        </li>
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
                    <h3 class="page-header"><i class="fa fa-laptop"></i> 主页</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="${pageContext.request.contextPath}/employee/employeeInfo">主页</a></li>
                        <li><i class="fa fa-laptop"></i>总览</li>
                    </ol>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-9 col-md-12" style="width:1180px;height:10px">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-map-marker red"></i><strong>校园地图</strong></h2>
                            <div class="panel-actions">
                                <a href="${pageContext.request.contextPath}/employee/employeeInfo#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                <a href="${pageContext.request.contextPath}/employee/employeeInfo#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                <a href="${pageContext.request.contextPath}/employee/employeeInfo#" class="btn-close"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <div class="panel-body-map" style="width:1150px;height:780px;overflow:hidden;margin:0 auto">
                            <img src="${pageContext.request.contextPath}/img/map.jpg" style="display:block;" id="panel-body-map" width=1150px height=780px;>
                        </div>

                    </div>
                </div>

            </div>



        </section>
    </section>
    <!--main content end-->
</c:if>
    <c:if test="${empty employee}">
        对不起，请先<a href="${pageContext.request.contextPath}/employee/login">登陆</a>
    </c:if>
</section>
<!-- container section start -->

<!-- javascripts -->
<script src="/js/jquery.js"></script>
<script src="/js/jquery-ui-1.10.4.min.js"></script>
<script src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="/js/jquery.scrollTo.min.js"></script>
<script src="/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/js/owl.carousel.js" ></script>
<!-- jQuery full calendar -->
<<script src="/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="/js/calendar-custom.js"></script>
<script src="/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="/js/jquery.customSelect.min.js" ></script>
<script src="/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="/js/sparkline-chart.js"></script>
<script src="/js/easy-pie-chart.js"></script>
<script src="/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="/js/xcharts.min.js"></script>
<script src="/js/jquery.autosize.min.js"></script>
<script src="/js/jquery.placeholder.min.js"></script>
<script src="/js/gdp-data.js"></script>
<script src="/js/morris.min.js"></script>
<script src="/js/sparklines.js"></script>
<script src="/js/charts.js"></script>
<script src="/js/jquery.slimscroll.min.js"></script>
<script>

    var div1 = document.getElementById("panel-body-map");
    var offX = 0,offY = 0;
    div1.onmousedown = function(ev){
        ev.preventDefault(); //阻止浏览器动作，有些浏览器试图拖拽图片的时候，是会把图片单独到一个页面来查看的。
        var oevent = ev || event; //兼容性处理
        var distanceX = oevent.clientX; //记录鼠标点击x位置
        var distanceY = oevent.clientY; //记录鼠标点击y位置
        document.onmousemove = function(ev){ //当鼠标点击后，才对document设置mousemove事件
            var oevent = ev || event;
            x1 = oevent.clientX - distanceX;//oevent.clientX是鼠标移动到的x位置，oevent.clientX-distanceX是移动的距离
            y1 = oevent.clientY - distanceY;
            distanceX = oevent.clientX; //更新distanceX的位置信息。这一步非常重要非常重要非常重要，因为mousemove事件在鼠标移动时触发，而不是鼠标停止移动后触发
            distanceY = oevent.clientY;
            div1.style.marginLeft = (x1 + offX) + "px"; //若x1为正，则鼠标向右移动，设置图片的margin-left为正，向右偏移；为负同理向左偏移。
            div1.style.marginTop = (y1+ offY) +"px"; //offX和offY为前一次的偏移，本次移动是在前一次的基础上发生的，要加上偏移值才是鼠标本次移动后图片的位置。
            offX = x1+offX; //记录此时图片的偏移位置
            offY = y1+offY;
        };
        document.onmouseup = function(){ //鼠标抬起后，就取消document的mousemove事件
            document.onmousemove = null;
        };

    }
    if(document.addEventListener){
        document.addEventListener('DOMMouseScroll',scrollFunc,false);
    }//W3C
    window.onmousewheel=document.onmousewheel=scrollFunc;//IE/Opera/Chrome
    function scrollFunc(e) {
        if(e.target!=document.getElementById("panel-body-map")){
            return;
        }
        var oImg = document.getElementById("panel-body-map");
        var direct = 0;
        e = e || window.event;
        if (e.wheelDelta) { //IE/Opera/Chrome
            if (e.wheelDelta > 0) { //大于0,向前滚，放大
                oImg.width = oImg.width * 1.1;
                oImg.height = oImg.height * 1.1;
            } else { //否则是缩小
                oImg.width = oImg.width / 1.1;
                oImg.height = oImg.height / 1.1;
            }
        } else if (e.detail) { //Firefox
            if (e.detail > 0) {
                oImg.width = oImg.width * 1.1;
                oImg.height = oImg.height * 1.1;
            } else {
                oImg.width = oImg.width / 1.1;
                oImg.height = oImg.height / 1.1;
            }
        }
        if(e.preventDefault) { //阻止浏览器自身事件
            e.preventDefault();
            e.stopPropagation();
        }else{
            e.returnValue = false;
            e.cancelBubble = true;
        }
    }
</script>


</body>
</html>
