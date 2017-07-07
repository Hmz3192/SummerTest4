<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/7/4
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/content.css" />
</head >
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
                    <%--<th style="width:20%">图片</th>--%>
                    <th style="width:20%">操作</th>
                </tr>
                <c:forEach items="${mesList}" var="mes">
                <tr>
                    <td>${mes.id}</td>
                    <td>${mes.message}</td>
                    <td>${mes.description}</td>
                    <%--<td></td>--%>
                    <td>
                        <div class="table-fun">
                            <a href="${pageContext.request.contextPath}/user/colle.do?id=${mes.id}">收藏</a>
                        </div>
                    </td>
                </tr>
                </c:forEach>



            </table>
            <!-- 分页功能 start -->
            <div align="center"  class="page">
                <font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第 ${page.pageNow} 页</font>
                <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=1">首页</a>
                <c:choose>
                    <c:when test="${page.pageNow - 1 > 0}">
                        <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=${page.pageNow - 1}">上一页</a>
                    </c:when>
                    <c:when test="${page.pageNow - 1 <= 0}">
                        <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=1">上一页</a>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${page.totalPageCount==0}">
                        <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=${page.pageNow}">下一页</a>
                    </c:when>
                    <c:when test="${page.pageNow + 1 < page.totalPageCount}">
                        <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=${page.pageNow + 1}">下一页</a>
                    </c:when>
                    <c:when test="${page.pageNow + 1 >= page.totalPageCount}">
                        <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=${page.totalPageCount}">下一页</a>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${page.totalPageCount==0}">
                        <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=${page.pageNow}">尾页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/message/showMes.do?pageNow=${page.totalPageCount}">尾页</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>
</body>
</html>
