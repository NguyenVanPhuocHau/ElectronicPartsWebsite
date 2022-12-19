<%@include file="common/tablig.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <c:import url="common/header.jsp"></c:import>
</head>
<style>
    .section-padding-80 {
        padding-top: 80px;
        padding-bottom: 80px;
    }

    .container {
        max-width: 1140px;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }

    .row {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }

    .col-md-6 {
        -ms-flex: 0 0 40%;
        flex: 0 0 40%;
        max-width: 40%;
    }

    .col-md-5 {
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%;
    }


    .col-md-6, .col-12, .col-md-3 {
        position: relative;
        width: 100%;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
    }

    .order-details-confirmation {
        /*width: 100%;*/
        border: 2px solid #ebebeb;
        padding: 40px;
    }

    h1, h2, h3, h4, h5, h6 {
        color: #000000;
        line-height: 1.3;
        font-weight: 700;
        font-family: "Ubuntu", sans-serif;
    }

    .h5, h5 {
        font-size: 1.25rem;
    }

    p {
        color: #787878;
        font-size: 14px;
        line-height: 2;
        font-weight: 400;
    }

    .order-details-confirmation .order-details-form li {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -ms-grid-row-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
        margin-bottom: 0;
        font-size: 12px;
        text-transform: uppercase;
        padding: 20px 0;
        border-bottom: 2px solid #ebebeb;
        font-weight: 600;
    }

    ul li, ol li {
        list-style: none;
    }

    ul, ol {
        margin: 0;
    }

    .checkout_details_area form label span {
        color: red;
    }

    .mb-30 {
        margin-bottom: 30px !important;
    }

    h1, h2, h3, h4, h5, h6 {
        color: #000000;
        line-height: 1.3;
        font-weight: 700;
        font-family: "Ubuntu", sans-serif;
    }

    .checkout_details_area form label {
        font-size: 12px;
        text-transform: uppercase;
        font-weight: 600;
    }

    .checkout_details_area form .form-control {
        height: 42px;
        border: 1px solid #ebebeb;
        background-color: transparent;
        border-radius: 0;
    }

    .form-control {
        display: block;
        width: 100%;
        padding: 0.375rem 0.75rem;
        font-size: 1rem;
        line-height: 1.5;
        color: #495057;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #ced4da;
        border-radius: 0.25rem;
        transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
    }

    .mb-3, .my-3 {
        margin-bottom: 1rem !important;
    }


    .ml-lg-auto, .mx-lg-auto {
        margin-left: auto !important;
    }


    .col-lg-5 {
        -ms-flex: 0 0 41.666667%;
        flex: 0 0 41.666667%;
        max-width: 41.666667%;
    }


    .mb-4, .my-4 {
        margin-bottom: 1.5rem !important;
    }

    .btn:not(:disabled):not(.disabled) {
        cursor: pointer;
    }

    a:not([href]):not([tabindex]) {
        color: inherit;
        text-decoration: none;
    }

    .essence-btn {
        display: inline-block;
        min-width: 170px;
        height: 50px;
        color: #ffffff;
        border: none;
        border-radius: 0;
        padding: 0 40px;
        text-transform: uppercase;
        font-size: 12px;
        line-height: 50px;
        background-color: #0315ff;
        letter-spacing: 1.5px;
        font-weight: 600;
    }

    button, input {
        overflow: visible;
    }

    button, input, optgroup, select, textarea {
        margin: 0;
        font-family: inherit;
        font-size: inherit;
        line-height: inherit;
    }


</style>
<body>
<jsp:include page="component/header.jsp"></jsp:include>
<div class="checkout_area section-padding-80">

        <div class="container">
            <form action="" method="post">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-page-heading mb-30">
                            <h5>Địa Chỉ Nhận Hàng</h5>
                        </div>


                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="first_name">Tên <span>*</span></label>
                                    <input type="text" class="form-control" id="first_name" value="${user.name}"
                                           required>
                                </div>


                                <div class="col-12 mb-3">
                                    <label for="street_address">Địa Chỉ <span>*</span></label>
                                    <input type="text" class="form-control mb-3" id="street_address"
                                           value="${user.address}" required>
                                    <!--<input type="text" class="form-control" id="street_address2" value="">-->
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="phone_number">Số điện thoại <span>*</span></label>
                                    <input type="number" class="form-control" id="phone_number" min="0"
                                           value="${user.phone}" required>
                                </div>
                                <div class="col-12 mb-4">
                                    <label for="email_address">Email <span>*</span></label>
                                    <input type="email" class="form-control" id="email_address" value="${user.email}" required>
                                </div>
                            </div>

                    </div>
                </div>

                <div class="col-12 col-md-5 col-lg-6 ml-lg-auto">
                    <div class="order-details-confirmation">

                        <div class="cart-page-heading">
                            <h5>Đơn đặt hàng</h5>
                            <p>Thông tin đơn hàng</p>
                        </div>

                        <ul class="order-details-form mb-4">
                            <li><span>Sản phẩm</span> <span>Tổng tiền</span></li>
                            <c:forEach var="item" items="${cart.getListCartItems()}">
                                <c:set var="p" value="${item.product}"/>
                                <li><img
                                        src="${p.img_url[0]}"
                                        alt="" style="width: 13%"><span>${p.product_name}<br>Số lượng: 10</span>
                                    <span>${item.getVnPrice()}<span style="text-transform: none">đ</span></span></li>
                            </c:forEach>
                            <li><span><!--   Cocktail Yellow dress--></span> <span><!--$59.90--></span></li>
                            <li><span>Giá tiền</span> <span
                                    style="text-transform: none">${cart.getVnTotalMoneyCart()}đ</span></li>
                            <li><span>Vận chuyển</span> <span
                                    style="text-transform: none">${cart.getVnFeeShip() }đ</span></li>
                            <li><span>Khuyến mãi</span> <span>-${cart.getVnFeePromotion()}%</span></li>
                            <li><span>Tổng tiền</span> <span
                                    style="text-transform: none">${cart.getVnFinalMoneyCart()}đ</span></li>
                        </ul>
                        <button id="changeInfor" type="submit"
                                class="styles__StyledBtnSubmit-sc-s5c7xj-3 cqEaiM btn-submit">Lưu
                            thay đổi
                        </button>
                    </div>
                </div>

            </div>
            </form>
        </div>

</div>
<jsp:include page="component/footer.jsp"></jsp:include>
<c:import url="common/js.jsp"></c:import>
</body>
</html>