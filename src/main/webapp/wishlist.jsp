<%@include file="common/tablig.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang cá nhân</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <c:import url="common/header.jsp"></c:import>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        font-size: 13px;
        color: #333;
    }

    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, button, textarea, select, p, blockquote, th, td {
        margin: 0;
        padding: 0;
    }

    .il {
        margin: 25px 0;
    }

    .il > p {
        display: block;
        padding: 5px 0;
        font-weight: bold;
    }

    .il > p > span {
        display: inline-block;
        width: 115px;
        font-weight: normal;
    }

    .btnRed {
        line-height: 25px;
        padding: 0 20px;
        display: inline-block;
    }

    .profile p b {
        display: inline-block;
        width: 125px;
    }

    .profile p {
        display: block;
        margin: 0 0 10px 0;
    }

    .profile p input {
        padding: 5px;
    }

    select#cityId,
    select#districtId {
        width: 182px;
        height: 30px;
    }

    ul.errors {
        color: red;
        padding-left: 165px;
    }

    .f ul li.btns input {
        margin-left: 165px;
        width: 230px;
        border: none;
        text-transform: uppercase;
    }

    #content {
        position: relative;
    }

    .g1180 {
        width: 90vw;
    }

    .g1180 {
        width: 1180px;
        margin: 0 auto;
    }

    #profilePage {
        margin: 25px auto;
        background: #f9f9f9;
        box-shadow: 0 0 0 4px #eee;
    }

    li {
        list-style: none;
    }

    #pfMenu {
        float: left;
        width: 21%;
        background: #fff;
        border: 1px solid #ddd;
    }

    #pfMenu li {
        padding: 10px 20px;
        border-bottom: 1px solid #ccc;
    }

    #pfMenu li > a.si {
        font-weight: 700;
        font-size: 13px;
    }

    #pfMenu li > a {
        display: block;
        padding: 5px 0 5px 35px;
    }

    #pfContent {
        float: left;
        width: 78.5%;
    }

    .clearfix {
        float: none !important;
        clear: both;
        display: block;
    }

    a {
        text-decoration: none;
        color: #333;
    }

    /* user */

    .dfHeIP {
        padding: 16px 24px 16px 16px;
    }

    .dfHeIP .info-title {
        font-size: 16px;
        line-height: 24px;
        font-weight: 400;
        color: rgb(100, 100, 109);
    }

    .table .title {
        background: #C0C0C0;
        height: 30px;
        text-align: center;
    }

    .table .title td {
        color: black;
        font-weight: 700;
    }

    .table .item {
        border-bottom: 1px solid #ccc;
        text-align: center;
    }

    table.table tr.item td {
        padding: 20px 0 !important;
    }

    .pWls {
        padding: 5px 0;
    }

    .pWls > a {
        float: left;
        width: 60px;
        overflow: hidden;
    }

    .pWls img {
        max-height: 100px;
    }

    .pWls p {
        margin: 0;
    }

    .pWls > p {
        display: block;
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
        padding: 3px 0 3px 5px;
        text-align: left;
        max-width: 300px;
    }

    .clearfix {
        float: none !important;
        clear: both;
        display: block;
    }

    a {
        text-decoration: none;
        color: #333;
    }

    .wishlist-item {
        padding: 16px 20px;
        font-size: 14px;
    }

    .wishlist-item .info, .wishlist-item .pic, .wishlist-item .price {
        display: inline-block;
    }

    .wishlist-item .currPrice {
        color: #f57224;
        font-size: 18px;
    }

    .wishlist-item .origin-price-value {
        color: #757575;
        margin-right: 8px;
        text-decoration: line-through;
    }

    .wishlist-item .promotion {
        color: #212121;
    }

    .wishlist-item .priceStatus.dropped {
        color: #4caf50;
    }

    .wishlist-item .priceStatus {
        margin-top: 8px;
    }

    .wishlist-item .right-oper img {
        cursor: pointer;
    }


</style>

<body>
<jsp:include page="component/header.jsp"></jsp:include>
<div id="content" class=" ">
    <div class="g1180">
        <div id="profilePage">
            <jsp:include page="component/menu_profile.jsp"></jsp:include>
            <div id="pfContent">
                <div id="pfView" class="dfHeIP">
                    <span class="info-title">Danh sách yêu thích</span>
                    <table class="table">
                        <tbody>
                        <tr class="title">
                            <td style="width: 50%">Sản phẩm</td>
                            <td style="width: 25%">Giá</td>
                            <td style="width: 25%"></td>
                        </tr>
                        <tr class="item wishlist-item">
                            <td>
                                <div class="pWls">
                                    <a href="/arduino-nano-3.0-lgt8f328p-kem-cap-typec-p37981074.html">
                                        <img style="width: 100%" data-sizes="auto"
                                             class="lazyautosizes ls-is-cached lazyloaded"
                                             src="https://cdn.tgdd.vn/Files/2016/05/06/825349/yiwtnz8.jpg"
                                             data-src="https://bucket.nhanh.vn/store/24897/ps/20221109/lgt8e_thumb.jpg"
                                             alt="Arduino Nano 3.0 LGT8F328P (Kèm Cáp Type-C)" sizes="60px"></a>
                                    <p><a href="/arduino-nano-3.0-lgt8f328p-kem-cap-typec-p37981074.html">Arduino Nano
                                        3.0 LGT8F328P (Kèm Cáp Type-C)</a></p>
                                    <p>
                                        119,000đ</p>
                                    <p><a class="removeFav" data-id="37981074" href=""><i
                                            class="fa fa-thin fa-trash"></i> Xóa</a>
                                    </p>
                                    <i class="clearfix"></i></div>
                            </td>
                            <td>
                                <div class="price">
                                    <div class="currPrice"
                                         data-spm-anchor-id="a2o4n.my_wishlist.price_observing.i0.79fc705bg32Xfl">₫
                                        92.000
                                    </div>
                                    <div class="originPrice"><span class="origin-price-value">₫ 159.000</span><span
                                            class="promotion">-42%</span></div>
                                    <div class="priceStatus dropped">Giá giảm</div>
                                </div>
                            </td>
                            <td>
                                <div class="right-oper"><img
                                        src="https://cdn.shopify.com/app-store/listing_images/eee23a77b0df49a49794211a4408efd9/promotional_image/CKm594ew3PoCEAE=.png"
                                        width="72" height="32"
                                        data-spm-anchor-id="a2o4n.my_wishlist.price_observing.i2.79fc705bg32Xfl"></div>
                            </td>
                        </tr>
                        <tr class="item wishlist-item">
                            <td>
                                <div class="pWls">
                                    <a href="/sieu-combo-kit-arduino-uno-r3-p37977330.html">
                                        <img style="width: 100%" data-sizes="auto"
                                             class="lazyautosizes ls-is-cached lazyloaded"
                                             src="https://cdn.tgdd.vn/Files/2016/05/06/825349/yiwtnz8.jpg"
                                             data-src="https://bucket.nhanh.vn/store/24897/ps/20221018/Bo_combo_kit.jpg"
                                             alt="Siêu Combo KIT Arduino UNO R3" sizes="60px"></a>
                                    <p><a href="/sieu-combo-kit-arduino-uno-r3-p37977330.html">Siêu Combo KIT Arduino
                                        UNO R3</a></p>
                                    <p>
                                        259,000đ</p>
                                    <p><a class="removeFav" data-id="37977330" href=""><i
                                            class="fa fa-thin fa-trash"></i> Xóa</a>
                                    </p>
                                    <i class="clearfix"></i></div>
                            </td>
                            <td>
                                <div class="price">
                                    <div class="currPrice"
                                         data-spm-anchor-id="a2o4n.my_wishlist.price_observing.i0.79fc705bg32Xfl">₫
                                        92.000
                                    </div>
                                    <div class="originPrice"><span class="origin-price-value">₫ 159.000</span><span
                                            class="promotion">-42%</span></div>
                                    <div class="priceStatus dropped">Giá giảm</div>
                                </div>
                            </td>
                            <td>
                                <div class="right-oper"><img
                                        src="https://cdn.shopify.com/app-store/listing_images/eee23a77b0df49a49794211a4408efd9/promotional_image/CKm594ew3PoCEAE=.png"
                                        width="72" height="32"
                                        data-spm-anchor-id="a2o4n.my_wishlist.price_observing.i2.79fc705bg32Xfl"></div>
                            </td>
                        </tr>
                        </tbody>
                    </table>


                </div>
            </div>
            <i class="clearfix"></i></div>
    </div>

</div>
<jsp:include page="component/footer.jsp"></jsp:include>

</body>
</html>