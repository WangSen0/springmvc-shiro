<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/31
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>main</title>
</head>
<body>

    <shiro:authenticated>
        用户[<shiro:principal/>]已身份验证通过
    </shiro:authenticated><br/>
    <shiro:notAuthenticated>
        未身份验证（包括记住我）
    </shiro:notAuthenticated><br/>
    <shiro:hasRole name="admin">
        用户[<shiro:principal/>]拥有角色 admin<br/>
    </shiro:hasRole>
    <shiro:hasRole name="user">
        用户[<shiro:principal/>]拥有角色 user<br/>
    </shiro:hasRole>
    <a href="/logout">logout</a><br/>
    <a href="/admin">admin</a> <a href="/user">user</a>
</body>
</html>
