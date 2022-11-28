<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/18/2022
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="common/tablig.jsp"%>
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
            <c:import url="component/sidebar.jsp"></c:import>
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
                    <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
                    <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
                </div>
                <br class="clr"/>
                <div class="tab-content">
                    <div class="tab-pane" id="listView">
                        <div class="row">
                            <div class="span2">
                                <img src="themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="themes/images/products/1.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>

                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>
                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                    </div>

                    <div class="tab-pane  active" id="blockView">
                        <ul class="thumbnails">
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Manicure &amp; Pedicure</h5>
                                        <p>
                                            I'm a paragraph. Click here
                                        </p>
                                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Manicure &amp; Pedicure</h5>
                                        <p>
                                            I'm a paragraph. Click here
                                        </p>
                                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Manicure &amp; Pedicure</h5>
                                        <p>
                                            I'm a paragraph. Click here
                                        </p>
                                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Manicure &amp; Pedicure</h5>
                                        <p>
                                            I'm a paragraph. Click here
                                        </p>
                                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Manicure &amp; Pedicure</h5>
                                        <p>
                                            I'm a paragraph. Click here
                                        </p>
                                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Manicure &amp; Pedicure</h5>
                                        <p>
                                            I'm a paragraph. Click here
                                        </p>
                                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
                                    </div>
                                </div>
                            </li>
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
<div  id="footerSection">
    <div class="container">
        <div class="row">
            <div class="span3">
                <h5>ACCOUNT</h5>
                <a href="login.html">YOUR ACCOUNT</a>
                <a href="login.html">PERSONAL INFORMATION</a>
                <a href="login.html">ADDRESSES</a>
                <a href="login.html">DISCOUNT</a>
                <a href="login.html">ORDER HISTORY</a>
            </div>
            <div class="span3">
                <h5>INFORMATION</h5>
                <a href="contact.html">CONTACT</a>
                <a href="register.html">REGISTRATION</a>
                <a href="legal_notice.html">LEGAL NOTICE</a>
                <a href="tac.html">TERMS AND CONDITIONS</a>
                <a href="faq.html">FAQ</a>
            </div>
            <div class="span3">
                <h5>OUR OFFERS</h5>
                <a href="#">NEW PRODUCTS</a>
                <a href="#">TOP SELLERS</a>
                <a href="special_offer.html">SPECIAL OFFERS</a>
                <a href="#">MANUFACTURERS</a>
                <a href="#">SUPPLIERS</a>
            </div>
            <div id="socialMedia" class="span3 pull-right">
                <h5>SOCIAL MEDIA </h5>
                <a href="#"><img width="60" height="60" src="assets/themes/images/facebook.png" title="facebook" alt="facebook"/></a>
                <a href="#"><img width="60" height="60" src="assets/themes/images/twitter.png" title="twitter" alt="twitter"/></a>
                <a href="#"><img width="60" height="60" src="assets/themes/images/youtube.png" title="youtube" alt="youtube"/></a>
            </div>
        </div>
        <p class="pull-right">&copy; Bootshop</p>
    </div><!-- Container End -->
</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
<c:import url="common/js.jsp"></c:import>



</body>
</html>
