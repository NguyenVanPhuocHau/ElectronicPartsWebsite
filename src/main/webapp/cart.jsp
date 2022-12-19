<%@include file="common/tablig.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="discription" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cart</title>


    <c:import url="common/header.jsp"></c:import>
    <%--    <link rel="stylesheet" href="assets/css/core-style.css">--%>
    <link rel="stylesheet" href="assets/css/cart.css">


</head>


<body>
<!-- ##### Header Area Start ##### -->
<jsp:include page="component/header.jsp"></jsp:include>
<!-- ##### Header Area End ##### -->


<div class="cart-bg-overlay"></div>


<%--<div class="breadcumb_area breadcumb-style-two bg-img" style="background-image: url(assets/img/bg-img/breadcumb2.jpg);">--%>
<%--    <div class="container h-100">--%>
<%--        <div class="row h-100 align-items-center">--%>
<%--            <div class="col-12">--%>
<%--                <div class="page-title text-center">--%>
<%--                    <h2>Cart</h2>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- ##### Breadcumb Area End ##### -->
<!-- cart -->
<div class="cart-section mt-150 mb-150">
    <div class="container">
        <div class="row"
             style="display: flex; -ms-flex-wrap: wrap; flex-wrap: wrap; margin-right: -15px; margin-left: -15px">
            <div class="product-infor col-md-12">
                <div class="cart-table-wrap">
                    <table class="cart-table">
                        <thead class="cart-table-head">
                        <tr class="table-head-row">
                            <th class="product-remove"></th>
                            <th class="product-image">Ảnh sản phẩm</th>
                            <th class="product-name">Tên</th>
                            <th class="product-price">Giá</th>
                            <th class="product-quantity">Số lượng</th>
                            <th class="product-total">Thành tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${cart.getListCartItems()}">
                            <c:set var="p" value="${item.product}"/>
                            <tr class="table-body-row" id="row${p.product_id}">
                                <td class="product-remove"><a
                                        id="${p.product_id}"
                                        onclick="clickPin(this)"><i class="fa fa-trash"></i></a></td>
                                <td class="product-image"><img src="${p.img_url[0]}" alt=""></td>
                                <td class="product-name">${p.product_name}
                                </td>
                                <td class="product-price">${p.getVnProductPrice()}đ</td>
                                <td class="product-quantity"><input type="number" placeholder="1"
                                                                    value="${item.amount_bought}"></td>
                                <td class="product-total">${item.getVnPrice()}đ</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="total-price">
                <div class="total-section">
                    <div id="tableTotal">
                        <table class="total-table">
                            <thead class="total-table-head">
                            <tr class="table-total-row">
                                <th>Tổng cộng</th>
                                <th>Giá</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="total-data">
                                <td><strong>Tạm tính: </strong></td>
                                <td>${cart.getVnTotalMoneyCart()}đ</td>
                            </tr>
                            <tr class="total-data">
                                <td><strong>Tiền ship: </strong></td>
                                <td>${cart.getVnFeeShip() }đ</td>
                            </tr>
                            <tr class="total-data">
                                <td><strong>Khuyến mải: </strong></td>
                                <td>-${cart.getVnFeePromotion()}%</td>
                            </tr>
                            <tr class="total-data">
                                <td><strong>Tất cả: </strong></td>
                                <td>${cart.getVnFinalMoneyCart()}đ</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="cart-buttons">
                            <a href="/ProjectEcommerceWebsite_war/" class="boxed-btn">Tiếp tục mua</a>
                            <a href="/ProjectEcommerceWebsite_war/order" class="boxed-btn black">Đặt hàng</a>
                        </div>
                    </div>
                </div>
                <div class="coupon-section">
                    <h3>Sử dụng mã giảm giá</h3>
                    <div class="coupon-form-wrap">
                        <form action="index.html">
                            <p><input type="text" placeholder="Mã giảm giá"></p>
                            <p><input type="submit" value="Apply"></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end cart -->

<!-- ##### Footer Area Start ##### -->
<jsp:include page="component/footer.jsp"></jsp:include>
<!-- ##### Footer Area End ##### -->

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>




    function clickPin(idProduct) {
        var idRow= "#row"+ idProduct.id;
        $(idRow).remove();
        var id = idProduct.id;
        $.ajax({
            url: '/ProjectEcommerceWebsite_war/delProductFromMainCart',
            type: 'post',
            data: {
                id: id
            },
            success: function (data) {
                $("#tableTotal").html(data);
                updateCart()
            },
            error: function (xhr) {

            }
        })


    }

    function updateCart() {
        $.ajax({
            url: '/ProjectEcommerceWebsite_war/updateNumberCart',
            type: 'get',
            data:{
                location: "header"
            },
            success: function (data) {
                $("#numberItemsCart").html(data);
            },
            error: function (xhr) {

            }
        })
    }
</script>
<c:import url="common/js.jsp"></c:import>



</body>

</html>