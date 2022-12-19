<%@include file="common/tablig.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đơn hàng của tôi</title>
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
        background-color: #f9f9f9;
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

    @import 'https://fonts.googleapis.com/css?family=Montserrat:400,700|Raleway:300,400';
    /* colors */
    /* tab setting */
    /* breakpoints */
    /* selectors relative to radio inputs */
    html {
        width: 100%;
        height: 100%;
    }

    body {
        background: #ffffff;
        color: #333;
        font-family: "Raleway";
        height: 100%;
    }

    body h1 {
        text-align: center;
        color: #428BFF;
        font-weight: 300;
        padding: 40px 0 20px 0;
        margin: 0;
    }

    .tabs {
        left: 50%;
        transform: translateX(-50%);
        position: relative;
        /* background: white; */
        /* padding: 50px; */
        padding-bottom: 80px;
        padding-top: 10px;
        /* width: 70%; */
        /*height: 250px;*/
        /* box-shadow: 0 14px 28px rgb(0 0 0 / 25%), 0 10px 10px rgb(0 0 0 / 22%); */
        border-radius: 5px;
        min-width: 240px;
    }

    .tabs input[name=tab-control] {
        display: none;
    }

    .tabs .content section h2,
    .tabs ul li label {
        font-family: "Montserrat";
        font-weight: bold;
        font-size: 15px;
        color: #428BFF;
    }

    .tabs ul {
        list-style-type: none;
        padding-left: 0;
        display: flex;
        flex-direction: row;

        justify-content: space-between;
        align-items: flex-end;
        flex-wrap: wrap;
        background-color: white;
        padding: 10px;
    }

    .tabs ul li {
        box-sizing: border-box;
        flex: 1;
        width: 25%;
        padding: 0 10px;
        text-align: center;
    }

    .tabs ul li label {
        transition: all 0.3s ease-in-out;
        color: #929daf;
        padding: 5px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: block;
        cursor: pointer;
        transition: all 0.2s ease-in-out;
        white-space: nowrap;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    .tabs ul li label br {
        display: none;
    }

    .tabs ul li label svg {
        fill: #929daf;
        height: 1.2em;
        vertical-align: bottom;
        margin-right: 0.2em;
        transition: all 0.2s ease-in-out;
    }

    .tabs ul li label:hover, .tabs ul li label:focus, .tabs ul li label:active {
        outline: 0;
        color: #bec5cf;
    }

    .tabs ul li label:hover svg, .tabs ul li label:focus svg, .tabs ul li label:active svg {
        fill: #bec5cf;
    }

    .tabs .slider {
        position: relative;
        width: 25%;
        transition: all 0.33s cubic-bezier(0.38, 0.8, 0.32, 1.07);
    }

    .tabs .slider .indicator {
        position: relative;
        width: 224px;
        max-width: 100%;
        margin: 0 auto;
        height: 2px;
        background: #428BFF;
        border-radius: 1px;
    }

    .tabs .content {
        margin-top: 30px;
    }

    .tabs .content section {
        display: none;
        -webkit-animation-name: content;
        animation-name: content;
        -webkit-animation-direction: normal;
        animation-direction: normal;
        -webkit-animation-duration: 0.3s;
        animation-duration: 0.3s;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
        -webkit-animation-iteration-count: 1;
        animation-iteration-count: 1;
        line-height: 1.4;
    }

    .tabs .content section h2 {
        color: #428BFF;
        display: none;
    }

    .tabs .content section h2::after {
        content: "";
        position: relative;
        display: block;
        width: 30px;
        height: 3px;
        background: #428BFF;
        margin-top: 5px;
        left: 1px;
    }

    .tabs input[name=tab-control]:nth-of-type(1):checked ~ ul > li:nth-child(1) > label {
        cursor: default;
        color: #428BFF;
    }

    .tabs input[name=tab-control]:nth-of-type(1):checked ~ ul > li:nth-child(1) > label svg {
        fill: #428BFF;
    }

    @media (max-width: 600px) {
        .tabs input[name=tab-control]:nth-of-type(1):checked ~ ul > li:nth-child(1) > label {
            background: rgba(0, 0, 0, 0.08);
        }
    }

    .tabs input[name=tab-control]:nth-of-type(1):checked ~ .slider {
        transform: translateX(0%);
    }

    .tabs input[name=tab-control]:nth-of-type(1):checked ~ .content > section:nth-child(1) {
        display: block;
    }

    .tabs input[name=tab-control]:nth-of-type(2):checked ~ ul > li:nth-child(2) > label {
        cursor: default;
        color: #428BFF;
    }

    .tabs input[name=tab-control]:nth-of-type(2):checked ~ ul > li:nth-child(2) > label svg {
        fill: #428BFF;
    }

    @media (max-width: 600px) {
        .tabs input[name=tab-control]:nth-of-type(2):checked ~ ul > li:nth-child(2) > label {
            background: rgba(0, 0, 0, 0.08);
        }
    }

    .tabs input[name=tab-control]:nth-of-type(2):checked ~ .slider {
        transform: translateX(100%);
    }

    .tabs input[name=tab-control]:nth-of-type(2):checked ~ .content > section:nth-child(2) {
        display: block;
    }

    .tabs input[name=tab-control]:nth-of-type(3):checked ~ ul > li:nth-child(3) > label {
        cursor: default;
        color: #428BFF;
    }

    .tabs input[name=tab-control]:nth-of-type(3):checked ~ ul > li:nth-child(3) > label svg {
        fill: #428BFF;
    }

    @media (max-width: 600px) {
        .tabs input[name=tab-control]:nth-of-type(3):checked ~ ul > li:nth-child(3) > label {
            background: rgba(0, 0, 0, 0.08);
        }
    }

    .tabs input[name=tab-control]:nth-of-type(3):checked ~ .slider {
        transform: translateX(200%);
    }

    .tabs input[name=tab-control]:nth-of-type(3):checked ~ .content > section:nth-child(3) {
        display: block;
    }

    .tabs input[name=tab-control]:nth-of-type(4):checked ~ ul > li:nth-child(4) > label {
        cursor: default;
        color: #428BFF;
    }

    .tabs input[name=tab-control]:nth-of-type(4):checked ~ ul > li:nth-child(4) > label svg {
        fill: #428BFF;
    }

    @media (max-width: 600px) {
        .tabs input[name=tab-control]:nth-of-type(4):checked ~ ul > li:nth-child(4) > label {
            background: rgba(0, 0, 0, 0.08);
        }
    }

    .tabs input[name=tab-control]:nth-of-type(4):checked ~ .slider {
        transform: translateX(300%);
    }

    .tabs input[name=tab-control]:nth-of-type(4):checked ~ .content > section:nth-child(4) {
        display: block;
    }

    @-webkit-keyframes content {
        from {
            opacity: 0;
            transform: translateY(5%);
        }
        to {
            opacity: 1;
            transform: translateY(0%);
        }
    }

    @keyframes content {
        from {
            opacity: 0;
            transform: translateY(5%);
        }
        to {
            opacity: 1;
            transform: translateY(0%);
        }
    }

    @media (max-width: 1000px) {
        .tabs ul li label {
            white-space: initial;
        }

        .tabs ul li label br {
            display: initial;
        }

        .tabs ul li label svg {
            height: 1.5em;
        }
    }

    @media (max-width: 600px) {
        .tabs ul li label {
            padding: 5px;
            border-radius: 5px;
        }

        .tabs ul li label span {
            display: none;
        }

        .tabs .slider {
            display: none;
        }

        .tabs .content {
            margin-top: 20px;
        }

        .tabs .content section h2 {
            display: block;
        }
    }

    .ekuyi {
        background: rgb(255, 255, 255);
        border-radius: 4px;
        font-size: 13px;
        margin-bottom: 20px;
        padding: 16px;
    }

    .hBsvqt {
        border-bottom: 1px solid rgb(235, 235, 240);
        padding-bottom: 12px;
        color: rgb(128, 128, 137);
        font-size: 14px;
        font-weight: 500;
        line-height: 20px;
    }

    .hBZYMQ {
        cursor: pointer;
    }

    .hBVEFq {
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        margin-top: 12px;
        width: 100%;
    }


    .hBsvqt .main-status::before {
        content: "";
        display: block;
        background: url(https://frontend.tikicdn.com/_desktop-next/static/img/account/delivery_done.png) center center / 20px 20px no-repeat;
        width: 20px;
        height: 20px;
        float: left;
        margin: 0px 6px 0px 0px;
    }

    .hBZYMQ .product {
        display: flex;
        flex-direction: row;
        padding: 16px 0px;
        border-bottom: 1px solid rgb(235, 235, 240);
        -webkit-box-pack: justify;
        justify-content: space-between;
    }

    .hBZYMQ .product .detail {
        display: flex;
    }

    .hBZYMQ .product .product-img {
        flex-shrink: 0;
        width: 80px;
        height: 80px;
        border-radius: 4px;
        border: 0.5px solid rgb(238, 238, 238);
        background-repeat: no-repeat;
        background-size: 90%;
        background-position: center center;
        position: relative;
    }

    .hBZYMQ .product .product-img .quantity {
        font-size: 12px;
        line-height: 16px;
        font-weight: 400;
        color: rgb(128, 128, 137);
        text-align: center;
        position: absolute;
        width: 28px;
        height: 28px;
        background-color: rgb(235, 235, 240);
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;
        right: 0px;
        bottom: 0px;
        border-top-left-radius: 10px;
    }

    .hBZYMQ .product .product-info {
        margin: 0px 12px;
        display: flex;
        flex-direction: column;
    }

    .hBZYMQ .product .product-info .product-name {
        margin-bottom: 6px;
    }

    .hBZYMQ .product .product-info .store {
        margin-top: 4px;
    }

    .hBZYMQ .product .product-info .store span {
        color: rgb(128, 128, 137);
        font-size: 12px;
        font-weight: 400;
        line-height: 16px;
    }


    .hBZYMQ .product .product-info .store span::before {
        content: "";
        display: block;
        background: url(https://frontend.tikicdn.com/_desktop-next/static/img/account/store.png) center center / 16px 16px no-repeat;
        width: 16px;
        height: 16px;
        float: left;
        margin: 0px 6px 0px 0px;
    }

    .hBZYMQ .btn-more {
        display: flex;
        -webkit-box-pack: start;
        justify-content: flex-start;
        -webkit-box-align: center;
        align-items: center;
        cursor: pointer;
        margin-top: 12px;
    }

    .hBZYMQ .btn-more p {
        padding: 6px 12px;
        border-radius: 4px;
        border: 1px solid rgb(221, 221, 227);
        font-size: 12px;
        font-weight: 400;
        color: rgb(100, 100, 109);
        line-height: 16px;
    }

    .hBVEFq {
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        margin-top: 12px;
        width: 100%;
    }

    .hBVEFq .total-money {
        font-size: 17px;
        display: flex;
        margin-bottom: 12px;
    }

    .hBVEFq .total-money .title {
        font-weight: 300;
        color: rgb(128, 128, 137);
        margin-right: 8px;
    }

    .hBVEFq .total-money .total {
        font-weight: 400;
        color: rgb(56, 56, 61);
    }

    .hBVEFq .button-group {
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
    }


    .hBVEFq .button-group div {
        padding: 8px 8px;
        /*height: 36px;*/
        border-radius: 4px;
        border: 1px solid rgb(11, 116, 229);
        font-size: 14px;
        font-weight: 400;
        line-height: 1.4;
        color: rgb(11, 116, 229);
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;
        cursor: pointer;
        margin-left: 8px;
    }


</style>

<body>
<jsp:include page="component/header.jsp"></jsp:include>
<!--<div id="content" class=" ">-->
<!--    <div class="g1180">-->
<!--        <div id="profilePage">-->
<!--            <div id="pfMenu">-->
<!--                <ul>-->
<!--                    <li>-->
<!--                        <a style="padding-left: 9px" rel="nofollow" href="/profile/changepassword" class="si">-->
<!--                            <i class="fa fa-solid fa-user" style=" margin-right: 12px;color: rgb(11, 116, 229);;"></i>-->
<!--                            Thông tin tài khoản </a></li>-->
<!--                    <li class="active">-->
<!--                        <a style="padding-left: 9px" rel="nofollow" href="/profile/changepassword" class="si">-->
<!--                            <i class="fa fa-unlock-alt" style=" margin-right: 12px;color: rgb(11, 116, 229);;"></i>-->
<!--                            Đổi mật khẩu </a></li>-->
<!--                    <li>-->
<!--                        <a style="padding-left: 8px" rel="nofollow" href="/order" class="si">-->
<!--                            <i class="fa fa-list-alt" style=" margin-right: 10px;color: rgb(11, 116, 229);;"></i>-->
<!--                            Quản lý đơn hàng </a></li>-->
<!--                    <li>-->
<!--                        <a style="padding-left: 9px" rel="nofollow" href="/profile/changepassword" class="si">-->
<!--                            <i class="fa fa-solid fa-heart" style=" margin-right: 12px;color: rgb(11, 116, 229);;"></i>-->
<!--                            Danh sách yêu thích </a></li>-->
<!--                    <li>-->
<!--                        <a style="padding-left: 9px" rel="nofollow" href="/profile/changepassword" class="si">-->
<!--                            <i class="fa fa-unlock-alt" style=" margin-right: 12px;color: rgb(11, 116, 229);;"></i>-->
<!--                            Địa chỉ nhận hàng </a></li>-->
<!--                    <li><a style="padding-left: 9px" rel="nofollow" href="/profile/changepassword" class="si">-->
<!--                        <i class="fa fa-solid fa-power-off" style=" margin-right: 12px;color: rgb(11, 116, 229);;"></i>-->
<!--                        Thoát </a></li>-->
<!--                </ul>-->
<!--            </div>-->
<!--            <div id="pfContent">-->
<!--                <div id="pfView" class="dfHeIP">-->
<!--                    <span class="info-title">Dơn hàng của tôi</span>-->

<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--    <i class="clearfix"></i></div>-->
<div id="content" class=" ">
    <div class="g1180">
        <div id="profilePage">
            <jsp:include page="component/menu_profile.jsp"></jsp:include>
            <div id="pfContent">
                <div id="pfView" class="dfHeIP">
                    <span class="info-title">Danh sách yêu thích</span>
                    <div class="tabs">
                        <input type="radio" id="tab1" name="tab-control" checked>
                        <input type="radio" id="tab2" name="tab-control">
                        <input type="radio" id="tab3" name="tab-control">
                        <input type="radio" id="tab4" name="tab-control">
                        <ul>
                            <li title="Features"><label for="tab1" role="button">
                                <svg viewBox="0 0 24 24">
                                    <path d="M14,2A8,8 0 0,0 6,10A8,8 0 0,0 14,18A8,8 0 0,0 22,10H20C20,13.32 17.32,16 14,16A6,6 0 0,1 8,10A6,6 0 0,1 14,4C14.43,4 14.86,4.05 15.27,4.14L16.88,2.54C15.96,2.18 15,2 14,2M20.59,3.58L14,10.17L11.62,7.79L10.21,9.21L14,13L22,5M4.93,5.82C3.08,7.34 2,9.61 2,12A8,8 0 0,0 10,20C10.64,20 11.27,19.92 11.88,19.77C10.12,19.38 8.5,18.5 7.17,17.29C5.22,16.25 4,14.21 4,12C4,11.7 4.03,11.41 4.07,11.11C4.03,10.74 4,10.37 4,10C4,8.56 4.32,7.13 4.93,5.82Z"/>
                                </svg>
                                <br><span>Tất cả đơn</span></label></li>
                            <li title="Delivery Contents"><label for="tab2" role="button">
                                <svg viewBox="0 0 24 24">
                                    <path d="M2,10.96C1.5,10.68 1.35,10.07 1.63,9.59L3.13,7C3.24,6.8 3.41,6.66 3.6,6.58L11.43,2.18C11.59,2.06 11.79,2 12,2C12.21,2 12.41,2.06 12.57,2.18L20.47,6.62C20.66,6.72 20.82,6.88 20.91,7.08L22.36,9.6C22.64,10.08 22.47,10.69 22,10.96L21,11.54V16.5C21,16.88 20.79,17.21 20.47,17.38L12.57,21.82C12.41,21.94 12.21,22 12,22C11.79,22 11.59,21.94 11.43,21.82L3.53,17.38C3.21,17.21 3,16.88 3,16.5V10.96C2.7,11.13 2.32,11.14 2,10.96M12,4.15V4.15L12,10.85V10.85L17.96,7.5L12,4.15M5,15.91L11,19.29V12.58L5,9.21V15.91M19,15.91V12.69L14,15.59C13.67,15.77 13.3,15.76 13,15.6V19.29L19,15.91M13.85,13.36L20.13,9.73L19.55,8.72L13.27,12.35L13.85,13.36Z"/>
                                </svg>
                                <br><span>Đang đóng gói</span></label></li>
                            <li title="Shipping"><label for="tab3" role="button">
                                <svg viewBox="0 0 24 24">
                                    <path d="M3,4A2,2 0 0,0 1,6V17H3A3,3 0 0,0 6,20A3,3 0 0,0 9,17H15A3,3 0 0,0 18,20A3,3 0 0,0 21,17H23V12L20,8H17V4M10,6L14,10L10,14V11H4V9H10M17,9.5H19.5L21.47,12H17M6,15.5A1.5,1.5 0 0,1 7.5,17A1.5,1.5 0 0,1 6,18.5A1.5,1.5 0 0,1 4.5,17A1.5,1.5 0 0,1 6,15.5M18,15.5A1.5,1.5 0 0,1 19.5,17A1.5,1.5 0 0,1 18,18.5A1.5,1.5 0 0,1 16.5,17A1.5,1.5 0 0,1 18,15.5Z"/>
                                </svg>
                                <br><span>Đang vận chuyển</span></label></li>
                            <li title="Returns"><label for="tab4" role="button">
                                <svg viewBox="0 0 24 24">
                                    <path d="M11,9H13V7H11M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M11,17H13V11H11V17Z"/>
                                </svg>
                                <br><span>Đã giao</span></label></li>
                        </ul>

                        <div class="slider">
                            <div class="indicator"></div>
                        </div>
                        <div class="content">
                            <section>
                                <div class="react-swipe-container carousel"
                                     style="overflow: hidden; visibility: visible; position: relative;">
                                    <div style="overflow: hidden; position: relative;">
                                        <div data-index="0"
                                             style="float: left; width: 100%; position: relative; transition-property: transform; left: 0px; transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
                                            <div>
                                                <div class="infinite-scroll-component "
                                                     style="height: auto; overflow: auto; display: flex; flex-direction: column;">
                                                    <div class="styles__StyledOrder-sc-1vf2n1c-0 ekuyi">
                                                        <div color="#808089"
                                                             class="styles__OrderHeader-sc-1vf2n1c-1 hBsvqt"><span
                                                                class="main-status">Giao hàng thành công</span></div>
                                                        <div class="styles__StyledOrderInfo-sc-1upbws9-0 hBZYMQ">
                                                            <div>
                                                                <c:forEach var="orderItem" items="${myOrder.getListOrderItems()}">
                                                                    <c:set var="p" value="${orderItem.product}"/>
                                                                    <div class="product">
                                                                    <div class="detail">
                                                                        <div class="product-img"
                                                                             style="background-image: url(${p.img_url[0]})"
                                                                        >
                                                                            <span class="quantity">x${orderItem.quantity}</span></div>
                                                                        <div class="product-info"><p
                                                                                class="product-name">${p.product_name}</p>
                                                                            <div class="store"><span>Linh kiện Store</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="price"><span>${orderItem.getVnMoney()}đ</span></div>
                                                                </div>
                                                                </c:forEach>
                                                            </div>
<%--                                                            <div class="btn-more"><p>Xem thêm 1 sản phẩm</p></div>--%>
                                                        </div>
                                                        <div class="styles__OrderFooter-sc-1vf2n1c-2 hBVEFq">
                                                            <div class="total-money">
                                                                <div class="title">Tổng tiền:</div>
                                                                <div class="total">${myOrder.getVnTotalMoney()}đ</div>
                                                            </div>
                                                            <div class="button-group">
                                                                <div>Mua lại</div>
                                                                <div>Xem chi tiết</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <section>
                                <h2>Delivery Contents</h2>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem quas adipisci a
                                accusantium eius ut voluptatibus ad impedit nulla, ipsa qui. Quasi temporibus eos
                                commodi aliquid impedit amet, similique nulla.
                            </section>
                            <section>
                                <h2>Shipping</h2>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam nemo ducimus eius,
                                magnam error quisquam sunt voluptate labore, excepturi numquam! Alias libero optio
                                sed harum debitis! Veniam, quia in eum.
                            </section>
                            <section>
                                <h2>Returns</h2>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa dicta vero rerum?
                                Eaque repudiandae architecto libero reprehenderit aliquam magnam ratione quidem?
                                Nobis doloribus molestiae enim deserunt necessitatibus eaque quidem incidunt.
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <i class="clearfix"></i></div>
    </div>

</div>
<jsp:include page="component/footer.jsp"></jsp:include>


</body>
</html>