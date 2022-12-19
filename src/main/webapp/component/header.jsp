<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/18/2022
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tablig.jsp"%>
<div id="header">
    <div class="container">
        <div id="welcomeLine" class="row">
            <c:choose>
                <c:when test="${user!=null}">
                    <div class="span6">XIN CHÀO!<a href="/ProjectEcommerceWebsite_war/userProfile"><strong> ${user.username}</strong></a></div>
                </c:when>
                <c:otherwise>
                    <div class="span6">XIN CHÀO!<a href=""><strong> QÚY KHÁCH</strong></a></div>
                </c:otherwise>
            </c:choose>

            <div class="span6">
                <div class="pull-right">
                    <a href="product_summary.html"><span class="">Fr</span></a>
                    <a href="product_summary.html"><span class="">Es</span></a>
                    <span class="btn btn-mini">En</span>
                    <a href="product_summary.html"><span>&pound;</span></a>
                    <span class="btn btn-mini">$155.00</span>
                    <a href="product_summary.html"><span class="">$</span></a>

                    <a href="ShowCart"><span  class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i><span id="numberItemsCart">[ ${cart.getNumberProductInCart()} ] sản phẩm trong giỏ hàng</span></span> </a>
                </div>
            </div>
        </div>
        <!-- Navbar ================================================== -->
        <div id="logoArea" class="navbar">
            <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="navbar-inner">
                <a class="brand" href="${pageContext.request.contextPath}/homes"><img src="assets/themes/images/logo.png" alt="AccessoriesShop"/></a>
                <form class="form-inline navbar-search" method="post" action="products.html" >
                    <input id="srchFld" class="srchTxt" type="text" />
<%--                    <select class="srchTxt">--%>
<%--                        <option>All</option>--%>
<%--                        <option>CLOTHES </option>--%>
<%--                        <option>FOOD AND BEVERAGES </option>--%>
<%--                        <option>HEALTH & BEAUTY </option>--%>
<%--                        <option>SPORTS & LEISURE </option>--%>
<%--                        <option>BOOKS & ENTERTAINMENTS </option>--%>
<%--                    </select>--%>
                    <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
                </form>
                <ul id="topMenu" class="nav pull-right">
                    <li class=""><a href="${pageContext.request.contextPath}/products">Sản phẩm</a></li>
                    <li class=""><a href="searchOrder.jsp">Tra cứu đơn hàng</a></li>
                    <li class=""><a href="contact.jsp">Liên hệ</a></li>
                    <li class="">
                        <c:choose>
                            <c:when test="${user!=null}">
                                <a href="/ProjectEcommerceWebsite_war/logout"  ><span class="btn btn-large btn-success"><c:out value="${sessionScope.logOut}" default="Đăng nhập"/></span></a>
                            </c:when>
                            <c:otherwise>
                                <a href="login.jsp"  ><span class="btn btn-large btn-success"><c:out value="${sessionScope.logOut}" default="Đăng nhập"/></span></a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

