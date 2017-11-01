<%--
  Created by IntelliJ IDEA.
  User: gm
  Date: 2017/10/24
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>File Action</title>
    <style type="text/css">
        *{
            font-size:10pt;
        }
        body{
            text-align:center;
        }
        .table{
            width:1024px;
            height:100%;
            border:1px solid gray;/*固定边框,1像素*/
            border-collapse: collapse;/*单线的列表边框*/
        }
        .table td{
            border:1px solid gray;/*固定边框,1像素*/
        }
        iframe {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>


<table class="table" align="center">
    <tr>
        <td width="120" style="padding:5px;" align="center" valign="top">
            <iframe frameborder="0" scrolling="no" width="120" src="<c:url value='/jsp/left.jsp'/>" name="left"></iframe>
        </td>
        <td>
            <iframe frameborder="0" scrolling="no" src="<c:url value='/jsp/body.jsp'/>" name="body"></iframe>
        </td>
    </tr>
</table>
</body>
</html>
