<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/7/4
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
<div class="container">
    <div class="public-content">
        <div class="public-content-header">
            <h3>新闻消息</h3>
        </div>
        <div class="public-content-cont">
            <table class="public-cont-table">
                <tr>
                    <th style="width:20%">编号</th>
                    <th style="width:20%">新闻名称</th>
                    <th style="width:20%">介绍</th>
                </tr>
                <c:forEach items="${colist}" var="col">
                    <tr>
                        <td>${col.id}</td>
                        <td>${col.message}</td>
                        <td>${col.description}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
