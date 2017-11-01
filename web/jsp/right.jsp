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
<div id="content" style="background-color:#EEEEEE;height:1000px;width:950px;">
    <c:if test="${!empty fileList }">
        <c:forEach var="list" items="${fileList }" >

            <a href="file?act=${list.value}">${list.key}</a> <br>
        </c:forEach>
    </c:if>
</div>
</body>
</html>
