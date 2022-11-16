<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/2/2022
  Time: 5:40 PM
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
        <form class="login-form" action='${pageContext.request.contextPath}/Register' method="post" name="Register">

            <div class="sign-up-htm">
                <div class="group">
                    <label for="user_signup" class="label">Tên</label>
                    <input id="user_signup" type="text" class="input" name="username_regis">
                </div>

                <div class="group">
                    <label for="email" class="label">Địa chỉ email</label>
                    <input id="email" type="text" class="input" name="addressEmail_regis">
                    <p class="notification" id="notification_email"></p>
                    <%

                    %>
                </div>
                <div class="group">
                    <label for="phone" class="label">Số điện thoại</label>
                    <input id="phone" type="tel" class="input" name="phone_regis">
                </div>
                <div class="group">
                    <label for="pass_signup" class="label">Mật khẩu</label>
                    <input id="pass_signup" type="password" class="input" data-type="password" name="password_regis">
                </div>
                <div class="group">
                    <label for="verifiers_pass" class="label">Xác nhận mật khẩu</label>
                    <input id="verifiers_pass" type="password" class="input" data-type="password" name="rePassword">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Đăng ký"
                           onclick="ValidateEmail(document.Register.addressEmail_regis)">
                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <label for="tab-1">Sẵn sàng là thành viên ?</label>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="assetsjs/login.js"></script>

</body>

