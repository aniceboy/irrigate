<%--
  Created by IntelliJ IDEA.
  User: 牛萌
  Date: 2019/9/4
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录页面</title>
</head>
<body>
<div>
    <form id="gc" action="${pageContext.request.contextPath}/admin/login" method="post" >
        用户名：<input type="text" required id="an" name="an"><br>
        密  码：<input type="password" required id="password" name="password"><br>
        <input type="submit" value="登录">
    </form>
</div>
</body>
<script>
    //对应后台返回的提示
    if ('${status}' != '') {
        if ('${status}' == 0) {
            alert('登录成功,即将跳转至用户详情页！')
            location.href = '${pageContext.request.contextPath}/admin/adminInfo'
        }else if ('${status}' == 1) {
            alert('该账户不存在！');
        }
        else if ('${status}' == 2) {
            alert('密码错误！')
        }
    }
</script>
</html>
