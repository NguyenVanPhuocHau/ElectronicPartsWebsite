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
<<<<<<< Updated upstream:src/main/webapp/login.jsp
    <link rel="stylesheet" href="assets/css/Login.css"/>
=======
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Login.css"/>
>>>>>>> Stashed changes:src/main/webapp/view/login.jsp
</head>
<body>
<div class="login-wrap">
    <div class="login-html">
<<<<<<< Updated upstream:src/main/webapp/login.jsp
        <input  type="radio" name="tab" class="sign-in login"><a id="login" href="login.jsp" for="login" class="tab">Đăng
        nhập</a>
        <input  type="radio" name="tab register" class="sign-up register"><a  href="register.jsp"
                                                                                          for="register" class="tab">Đăng
=======
        <input id="tab-1" type="radio" name="tab" class="sign-in" ><a href="${pageContext.request.contextPath}/view/login.jsp" for="tab-1" class="tab">Đăng
        nhập</a>
        <input id="tab-2" type="radio" name="tab" class="sign-up" ><a href="${pageContext.request.contextPath}/view/register.jsp" for="tab-2" class="tab">Đăng
>>>>>>> Stashed changes:src/main/webapp/view/login.jsp
        ký</a>
        <form class="login-form" action='${pageContext.request.contextPath}/Login' method="post">
            <div class="sign-in-htm">
                <div class="group">
                    <label for="user_sign" class="label">Tên</label>
                    <input id="user_sign" type="text" class="input" name="username" value="">
                    <p class="offShow"><%=request.getAttribute("errolNameNull")%>
                    </p>

                </div>
                <div class="group">
                    <label for="pass_sign" class="label">Mật khẩu</label>
                    <input id="pass_sign" type="password" class="input" name="password" data-type="password">
                    <p class="offShow"><%=request.getAttribute("errolPassNull")%>
                    </p>

                </div>
                <div class="group">
                    <input id="check" type="checkbox" class="check" checked>
                    <label for="check"><span class="icon"></span> Giữ cho tôi đăng nhập</label>
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Đăng nhập" onclick="onButton()">

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
