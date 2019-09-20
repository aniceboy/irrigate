<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/19
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    //获取绝对路径路径
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>" />
    <meta charset="utf-8">
    <title></title>
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.common.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


</head>
<body>
<div>
    <ul class="breadcrumb" style="margin: 0px;">
        <li>湿度记录</li>
    </ul>
</div>

<div id="pie" style="width: 500px;height: 300px;"></div>
<script>
    //获取到json的长度.
    function getJsonLength(json){
        var jsonLength = 0;
        for (var i in json) {
            jsonLength++;
        }
        return jsonLength;
    }
    var direction =  ${direction};
    var springklerId = 1;
    //初始化echarts
    var pieCharts = echarts.init(document.getElementById("pie"));
    //设置属性
    pieCharts.setOption({
        title: {
            text: '湿度记录'
        },
        xAxis : {
            // data: []
        },
        yAxis: [
            {
                type : 'value'
            }
        ],
        series : [
        ]
    });
    //显示一段动画
    pieCharts.showLoading();
    var names=[];    //类别数组（实际用来盛放X轴坐标值）
    var nums=[];    //销量数组（实际用来盛放Y坐标值）
    //异步请求数据
    $.ajax({
        type: "get",
        //async: true,
        url: '${pageContext.request.contextPath}/sensorData/get_hDataCharts?direction='+direction+'&springklerId'+springklerId,
        dataType: "json",
        success: function (result) {
            var resultLength = getJsonLength(result);
            if (result != null && result !="" && resultLength >0 ) {
                //挨个取出类别并填入类别数组 //x坐标的值
                for(var i=0; i<resultLength; i++){
                    //alert(result.list[i].bookName);
                    //console.info(result[i]);
                    names.push(new Date(parseInt(result[i].rTime)));
                }
                //alert(names);
                //挨个取出销量并填入销量数组 //y坐标的值
                for(var i=0; i<resultLength; i++){
                    nums.push(result[i].hData);
                }
                //alert(nums);
                //隐藏加载动画
                pieCharts.hideLoading();//隐藏加载动画
                //加载数据图表
                pieCharts.setOption({
                    xAxis: { //x坐标的值
                        data: names,
                        type: 'category',
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{ //y坐标的值
                        type:'line',
                        data: nums
                    }],
                });
            }else{
                pieCharts.hideLoading();//隐藏加载动画
                alert("没有数据");
            }
        }
    })
</script>

</body>
</html>
