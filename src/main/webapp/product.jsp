<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/18/2022
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="common/tablig.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:import url="common/header.jsp"></c:import>
</head>
<body>
<c:import url="component/header.jsp"></c:import>
<!-- Header End====================================================================== -->
<div id="mainBody">
    <div class="container">
        <div class="row">
            <!-- Sidebar ================================================== -->
            <c:import url="/categories"></c:import>
            <!-- Sidebar end=============================================== -->
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                    <li class="active">Products Name</li>
                </ul>
                <h3> Products Name <small class="pull-right"> 40 products are available </small></h3>
                <hr class="soft"/>
                <p>
                    Ngày nay, thiết bị di động là một trong những lĩnh vực kinh doanh thành công nhất.
                    Chúng tôi luôn cập nhật những linh kiện mới nhất - đó là lý do hàng hóa của chúng
                    tôi rất được ưa chuộng và chúng tôi có một lượng lớn khách hàng trung thành trên khắp
                    cả nước.
                </p>
                <hr class="soft"/>
                <form class="form-horizontal span6">
                    <div class="control-group">
                        <label class="control-label alignL">Sort By </label>
                        <select>
                            <option>Sắp xếp theo giá A - Z</option>
                            <option>Sắp xếp theo giá Z - A</option>
                        </select>
                    </div>
                </form>

                <div id="myTab" class="pull-right">
                    <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i
                            class="icon-list"></i></span></a>
                    <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i
                            class="icon-th-large"></i></span></a>
                </div>
                <br class="clr"/>
                <div class="tab-content">
                    <div class="tab-pane" id="listView">
                        <%--                        <jsp:useBean id="listProducts" scope="request" type="java.util.List"/>--%>
                        <%--                        <c:set target="listProducts" var="list" scope="request"/>--%>
                        <c:forEach items="${requestScope.listProduct}" var="product">

                            <div class="row">
                                <div class="span2">
                                    <img src="${product.img_url}" alt=""/>
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>
                                    <hr class="soft"/>
                                    <h5>${product.product_name}</h5>
                                    <p>
                                        ${product.product_des}
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr"/>
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3> ${product.product_price} VNĐ</h3>
                                        <label class="checkbox">
                                            <input type="checkbox"> Adds product to compair
                                        </label><br/>

                                        <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i
                                                class=" icon-shopping-cart"></i></a>
                                        <a href="product_details.html" class="btn btn-large"><i
                                                class="icon-zoom-in"></i></a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft"/>
                        </c:forEach>
                    </div>

                    <div class="tab-pane  active" id="blockView">
                        <ul class="thumbnails">
                            <c:forEach items="${requestScope.listProduct}" var="product">
                                <li class="span3">
                                    <div class="thumbnail">
                                        <a href="product_details.html"><img src="${product.img_url}" alt=""/></a>
                                        <div class="caption">
                                            <h5>${product.product_name}</h5>
                                            <p>
                                                I'm a paragraph. Click here
                                            </p>
                                            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i
                                                    class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
                                                    class="icon-shopping-cart"></i></a> <a class="btn btn-primary"
                                                                                           href="#">${product.product_price}</a>
                                            </h4>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        <hr class="soft"/>
                    </div>
                </div>

                <a href="compair.html" class="btn btn-large pull-right">Compair Product</a>
                <div class="pagination">
                    <ul>
                        <li><a href="#">&lsaquo;</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">&rsaquo;</a></li>
                    </ul>
                </div>
                <br class="clr"/>
            </div>
        </div>
    </div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
<c:import url="component/footer.jsp"></c:import>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
<c:import url="common/js.jsp"></c:import>


</body>
</html>
