<%--
  Created by IntelliJ IDEA.
  User: gm
  Date: 2017/10/24
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>
<div id="menu" style="background-color:#FFE4C4;height:1000px;width:150px;float:left;">
    <br>
    <a href="file?act=c:/" target="body">系统保留(C:)</a> <br>
    <br>
    <a href="file?act=e:/" target="body">新加卷(E:)</a> <br>
    <br>
    <a href="file?act=f:/" target="body">新加卷(F:)</a> <br>
</div>
</body>
</html>
