<%@ page import="vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.projectecommercewebsite.Service.SearchOrderService" %>
<%@ page import="vn.edu.hcmuaf.fit.projectecommercewebsite.beans.DetailOrder" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/24/2022
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tablig.jsp" %>

<html>
<head>
    <c:import url="common/header.jsp"></c:import>
</head>
<body>
<jsp:include page="component/header.jsp"></jsp:include>
<!-- Header End====================================================================== -->
<div id="mainBody">
    <div class="container">
        <div class=" search_ticket">
            <form action="SearchOrder" method="get" name="search">
                <h1>Nhập số điện thoại sử dụng vé</h1>
                <input type="text" class="text" name="numberPhone"><br>
                <input type="submit" value="Tiếp tục" class="button">
            </form>
            <c:forEach items="${requestScope.listOrder}" var="o">
                <div class="show_order">
                    <div class="line_1">
                        <p class="infomation_order">Đơn hàng: ${o.id_order} được tạo ngày ${o.date}</p>
                        <p class="status">${o.status_id}</p>
                        <c:set var="id_order" scope="request" value="${o.id_order}"/>

                    </div>
                    <hr>
                    <% ArrayList<DetailOrder> listProduct= new SearchOrderService().getProductByOrder(request.getAttribute("id_order").toString());
                        for(DetailOrder p: listProduct){%>
                    <div class="list_product">
                        <img src="<%=p.getImg_url()%>">
                        <div class="detail">
                            <p class="name_product"><%=p.getProduct_name()%></p>
                            <div class="price_number">
                                <p class="price"> Giá tiền: <%=p.getProduct_price()%> VNĐ</p>
                                <p class="number">Số lượng: <%=p.getQuantity()%></p>

                            </div>

                        </div>

                    </div>
                    <%}%>
                    <hr>
                    <p class="sum_price">Tiền thanh toán:${o.order_total} VNĐ</p>

                </div>
            </c:forEach>


        </div>

    </div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
<c:import url="component/footer.jsp"></c:import>
<c:import url="common/js.jsp"></c:import>

</body>
</html>
