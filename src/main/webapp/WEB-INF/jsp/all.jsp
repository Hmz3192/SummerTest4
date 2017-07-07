<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ThinKPad
  Date: 2017/6/18
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="http://dict.cn/hc/" type="text/javascript"></script>
    　　<script type="text/javascript">dictInit();</script>
    <title>Title</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css">
</head>
<body>

<div class="public-header-warrp">
    <div class="public-header">
        <div class="content">
            <div class="public-header-logo"><a href="#"><i>LOGO</i>
                <h3>拓源网络科技</h3></a></div>
            <div class="public-header-admin fr">
                <p class="admin-name">${user.username} 您好！</p>
                <div class="public-header-fun fr">
                    <a href="#" class="public-header-man">管理</a>
                    <a href="#" class="public-header-loginout">安全退出</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
<!-- 内容展示 -->
<div class="public-ifame mt20">
    <div class="content">
        <!-- 内容模块头 -->
        <div class="public-ifame-header">
            <ul>
                <li class="ifame-item logo">
                    <div class="item-warrp">
                        <a href="#"><i>LOGO</i>
                            <h3 class="logo-title">WorldVentures梦幻之旅</h3>
                        </a>
                    </div>
                </li>
                <li class="ifame-item">
                    <div class="item-warrp"><span>注册时间：2015/11/21 21:14:01<br>VIP有效期：</span></div>
                </li>
                <li class="ifame-item">
                    <div class="item-warrp" style="border:none"><span>网站浏览量：15451</span></div>
                </li>
                <div class="clearfix"></div>
            </ul>
        </div>
        <div class="clearfix"></div>
        <!-- 左侧导航栏 -->
        <div class="public-ifame-leftnav">
            <div class="public-title-warrp">
                <div class="public-ifame-title ">
                    <a href="#">首页</a>
                </div>
            </div>
            <ul class="left-nav-list">
                <li class="public-ifame-item">
                    <a href="javascript:;">系统管理</a>
                    <div class="ifame-item-sub">
                        <ul>
                            <li class="active"><a href="${pageContext.request.contextPath}/message/showMes.do"
                                                  target="content">新闻信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/seeColle.do" target="content">个人收藏</a>
                            </li>

                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 右侧内容展示部分 -->
        <div class="public-ifame-content">
            <iframe name="content" src="${pageContext.request.contextPath}/main.jsp" frameborder="0" id="mainframe"
                    scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript">
</script>
<script>
    $().ready(function () {
        var item = $(".public-ifame-item");

        for (var i = 0; i < item.length; i++) {
            $(item[i]).on('click', function () {
                $(".ifame-item-sub").hide();
                if ($(this.lastElementChild).css('display') == 'block') {
                    $(this.lastElementChild).hide()
                    $(".ifame-item-sub li").removeClass("active");
                } else {
                    $(this.lastElementChild).show();
                    $(".ifame-item-sub li").on('click', function () {
                        $(".ifame-item-sub li").removeClass("active");
                        $(this).addClass("active");
                    });
                }
            });
        }
    });

</script>
</body>
</html>