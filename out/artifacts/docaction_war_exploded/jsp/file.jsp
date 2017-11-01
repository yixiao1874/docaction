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

<%--<div id="container" style="width:950px">--%>

    <%--<div id="header" style="background-color:#A9A9A9;width:950px;">--%>
        <%--<h1 style="margin-bottom:0;">资源管理</h1></div>--%>

    <%--<div id="menu" style="background-color:#FFE4C4;height:500px;width:150px;float:left;">--%>
        <%--<br>--%>
        <%--<a href="file?act=c:/">系统保留(C:)</a> <br>--%>
        <%--<br>--%>
        <%--<a href="file?act=d:/">新加卷(E:)</a> <br>--%>
        <%--<br>--%>
        <%--<a href="file?act=e:/">新加卷(F:)</a> <br>--%>
    <%--</div>--%>

    <%--<div id="content" style="background-color:#EEEEEE;height:500px;width:950px;">--%>
        <%--<p>nihao</p>--%>
        <%--<c:if test="${!empty fileList }">--%>
            <%--<c:forEach var="list" items="${fileList }" >--%>
                <%--&lt;%&ndash;<div class="icon">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<a href="<c:url value='book?act=descBook&bid=${book.bid }'/>"><img src="<c:url value='/${book.image }'/>" border="0"/></a>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<br/>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<a href="<c:url value='book?act=descBook&bid=${book.bid }'/>">${book.bname }</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                <%--<a href="file?act=${list.value}">${list.key}</a> <br>--%>
            <%--</c:forEach>--%>
        <%--</c:if>--%>
    <%--</div>--%>

    <%--<div id="footer" style="background-color:#FFA500;text-align:center;">--%>
         <%--© gtja.com</div>--%>

<%--</div>--%>
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
