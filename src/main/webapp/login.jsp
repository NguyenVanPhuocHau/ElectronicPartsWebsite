<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/2/2022
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/Login.css"/>
</head>
<body>
<div class="login-wrap">
    <div class="login-html">
        <input id="tab-1" type="radio" name="tab" class="sign-in" ><a href="login.jsp" for="tab-1" class="tab">Đăng
        nhập</a>
        <input id="tab-2" type="radio" name="tab" class="sign-up" ><a href="register.jsp" for="tab-2" class="tab">Đăng
        ký</a>
        <form class="login-form" action='${pageContext.request.contextPath}/Login' method="post" >
            <div class="sign-in-htm">
                <div class="group">
                    <label for="user_sign" class="label">Tên</label>
                    <input id="user_sign" type="text" class="input" name="username" value="">
                    <p class="offShow"><%=request.getAttribute("errolNameNull")%></p>

                </div>
                <div class="group">
                    <label for="pass_sign" class="label">Mật khẩu</label>
                    <input id="pass_sign" type="password" class="input" name="password" data-type="password">
                    <p class="offShow"><%=request.getAttribute("errolPassNull")%></p>

                </div>
                <div class="group">
                    <input id="check" type="checkbox" class="check" checked>
                    <label for="check"><span class="icon"></span> Giữ cho tôi đăng nhập</label>
                </div>
                <div class="group">
                    <input  type="submit" class="button" value="Đăng nhập" onclick="onButton()">

                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <a href="#forgot">Quên mật khẩu ?</a>
                </div>
            </div>

        </form>
    </div>
</div>
<script src="assets/js/login.js"></script>

</body>
</html>
