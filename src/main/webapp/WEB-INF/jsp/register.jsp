<%--
  Created by IntelliJ IDEA.
  User: ThinKPad
  Date: 2017/6/18
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head></head>
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/md5.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/page_regist.js?lang=zh"></script>
<body class="loginbody">
<div class="dataEye">
    <div class="loginbox registbox">
        <div class="logo-a">

        </div>
        <div class="login-content reg-content">
            <div class="loginbox-title">
                <h3>新用户注册</h3>
            </div>
            <form id="signupForm" method="post" action="${pageContext.request.contextPath}/user/RegisterInfo.do">
                <div class="login-error"></div>
                <div class="row">
                    <label class="field" for="email">注册账户</label>
                    <input type="text" value="" class="input-text-user noPic input-click" name="username" id="email">
                </div>
                <div class="row">
                    <label class="field" for="password">密码</label>
                    <input type="password" value="" class="input-text-password noPic input-click" name="password" id="password">
                </div>
                <div class="row btnArea">
                    <input class="login-btn" type="submit" >注册
                </div>
            </form>
        </div>

    </div>

</div>

</body>
</html>
