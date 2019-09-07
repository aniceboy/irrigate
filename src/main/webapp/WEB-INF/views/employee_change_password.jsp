<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/7
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员修个密码页面</title>
</head>
<body>
<div>
    <form id="gc" action="${pageContext.request.contextPath}/employee/change_password" method="post" >
        原 密 码：<input type="password" required id="password" name="password"><br>
        新 密 码：<input type="password" required id="new1" name="new1"><br>
        确认密码：<input type="password" required id="new2" name="new2"><br>
        <input type="submit" value="确认修改">
    </form>
</div>
</body>
<script>
    //对应后台返回的提示
    if ('${status}' != '') {
        if ('${status}' == 1) {
            alert('修改成功,即将跳转至用户详情页！')
            location.href = '${pageContext.request.contextPath}/employee/employeeInfo'
        }else if ('${status}' == 2) {
            alert('原密码输入错误！');
        }
        else if ('${status}' == 0) {
            alert('两次密码不一致！')
        }
    }
</script>
</html>