<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.projectecommercewebsite.Service.CategoryService" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/21/2022
  Time: 5:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tablig.jsp" %>
<div id="sidebar" class="span3">
    <div class="well well-small"><a id="myCart" href="product_summary.html"><img
            src="assets/themes/images/ico-cart.png" alt="cart">3 Items in your cart <span
            class="badge badge-warning pull-right">$155.00</span></a></div>
    <ul id="sideManu" class="nav nav-tabs nav-stacked">
        <c:forEach items="${requestScope.listParent}" var="parent">
            <li class="subMenu"><a href="#">${parent.name_category} []</a>
                <ul style="display:none">
                    <c:set var="texts" scope="request" value="${parent.id_category}"/>

                    <%
                        for (Category category : CategoryService.getInstance().getCategory(request.getAttribute("texts").toString())) {
                    %>
                    <li><a href="${pageContext.request.contextPath}/products?id_category=<%=category.getId_category()%>"><i class="icon-chevron-right"></i><%=category.getName_category()%> (30)</a>

                                <%}%>
                </ul>
            </li>
        </c:forEach>


    </ul>
    <br/>
    <div class="thumbnail">
        <img src="assets/themes/images/products/panasonic.jpg" alt="Bootshop panasonoc New camera"/>
        <div class="caption">
            <h5>Panasonic</h5>
            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i
                    class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
                    class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
        </div>
    </div>
    <br/>
    <div class="thumbnail">
        <img src="assets/themes/images/products/kindle.png" title="Bootshop New Kindel"
             alt="Bootshop Kindel">
        <div class="caption">
            <h5>Kindle</h5>
            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i
                    class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
                    class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
        </div>
    </div>
    <br/>
    <div class="thumbnail">
        <img src="assets/themes/images/payment_methods.png" title="Bootshop Payment Methods"
             alt="Payments Methods">
        <div class="caption">
            <h5>Payment Methods</h5>
        </div>
    </div>
</div>

