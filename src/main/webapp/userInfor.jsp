<%@include file="common/tablig.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang cá nhân</title>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>--%>
    <c:import url="common/header.jsp"></c:import>
<!--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">-->

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

    .dfHeIP .info {
        display: flex;
        flex-wrap: nowrap;
        -webkit-box-pack: justify;
        justify-content: space-between;
        background-color: rgb(255, 255, 255);
        border-radius: 8px;
    }

    .dfHeIP .info-left {
        width: 553px;
        padding: 16px 24px 16px 16px;
    }

    .dfHeIP .info-vertical {
        border-left: 1px solid rgb(235, 235, 240);
        margin: 16px 0px;
    }

    .dfHeIP .info-right {
        width: calc(100% - 553px);
        padding: 16px 16px 16px 24px;
        display: flex;
        flex-direction: column;
    }

    .dfHeIP .info-title {
        font-size: 16px;
        line-height: 24px;
        font-weight: 400;
        color: rgb(100, 100, 109);
    }

    .khBVOu {
        background-color: rgb(255, 255, 255);
        border-radius: 4px;
        margin-top: 16px;
    }

    .khBVOu form {
        width: 100%;
    }

    .khBVOu .form-info {
        display: flex;
        flex-direction: row;
    }

    .khBVOu .form-info .form-avatar {
        margin-right: 16px;
    }

    .khBVOu .form-info .form-name {
        width: 100%;
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
        flex-direction: column;
    }

    .iRBxWb {
        background-color: rgb(240, 248, 255);
        border-radius: 50%;
        width: 112px;
        height: 112px;
        border: 4px solid rgb(194, 225, 255);
        position: relative;
        -webkit-box-pack: center;
        justify-content: center;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }

    .iRBxWb .avatar-wrapper {
        cursor: pointer;
    }

    .iRBxWb .avatar-view {
        cursor: pointer;
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;
    }

    .iRBxWb .avatar-view .avatar {
        border-radius: 50%;
    }

    .iRBxWb .avatar-view .edit {
        position: absolute;
        width: 16px;
        height: 16px;
        background-color: rgb(100, 100, 109);
        border-radius: 12px;
        right: 3px;
        bottom: 5px;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        display: flex;
    }

    .iRBxWb .avatar-view .edit img {
        width: 10px;
        height: 10px;
    }

    .khBVOu .form-info .form-name {
        width: 100%;
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
        flex-direction: column;
    }

    .khBVOu .form-control {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        margin: 0px 0px 34px;
    }

    .khBVOu .input-label {
        width: 110px;
        min-width: 110px;
        font-size: 14px;
        color: rgb(51, 51, 51);
        margin-right: 16px;
    }


    .hisWEc input {
        transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s, -webkit-box-shadow 0.15s ease-in-out 0s;
        height: 36px;
        width: 100%;
        border-radius: 4px;
        padding: 10px 12px;
        line-height: 20px;
        outline: none;
        flex: 1 1 0%;
        border: 1px solid rgb(196, 196, 207);
    }

    .khBVOu .form-control {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        margin: 0px 0px 34px;
    }

    .khBVOu .input-label {
        width: 110px;
        min-width: 110px;
        font-size: 14px;
        color: rgb(51, 51, 51);
        margin-right: 16px;
    }

    .khBVOu .form-control > div {
        display: flex;
        flex: 1 1 0%;
        position: relative;
        z-index: 1;
    }

    .bvIJNZ select {
        width: 100px;
        border: 1px solid rgb(204, 204, 204);
        height: 34px;
        padding: 6px 12px;
        line-height: 34px;
        outline: none;
        border-radius: 4px;
        margin: 0px 12px 0px 0px;
        background: 0px center;
        box-shadow: none;
    }

    .eQckrx {
        display: flex;
        margin-right: 15px;
        cursor: pointer;
    }

    .eQckrx input[type="radio"] {
        position: absolute;
        height: 1px;
        width: 1px;
        visibility: hidden;
        clip: rect(0px, 0px, 0px, 0px);
        opacity: 0;
    }

    [type="checkbox"], [type="radio"] {
        box-sizing: border-box;
        padding: 0px;
    }

    .eQckrx .label-sex {
        font-size: 13px;
        line-height: 20px;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }

    .eQckrx .radio-fake {
        width: 18px;
        height: 18px;
        border: 1px solid rgb(147, 150, 157);
        border-radius: 50%;
        display: inline-block;
        vertical-align: middle;
        margin: 0px 10px 0px 0px;
        position: relative;
        z-index: 1;
        color: rgb(120, 120, 120);
        flex-shrink: 0;
    }


    .hisWEc input.with-icon-right {
        padding-right: 35px;
    }


    .hisWEc .icon-right {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        width: 24px;
    }

    .khBVOu .form-control {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        margin: 0px 0px 34px;
    }

    .khBVOu .input-label {
        width: 110px;
        min-width: 110px;
        font-size: 14px;
        color: rgb(51, 51, 51);
        margin-right: 16px;
    }

    .khBVOu .btn-submit {
        width: 176px;
    }

    .cqEaiM {
        border: 0px;
        width: 100%;
        height: 40px;
        border-radius: 4px;
        color: rgb(255, 255, 255);
        font-size: 14px;
        background-color: rgb(11, 116, 229);
        cursor: pointer;
    }

    .dfHeIP .info-title {
        font-size: 16px;
        line-height: 24px;
        font-weight: 400;
        color: rgb(100, 100, 109);
    }

    .lCUBE {
        background-color: rgb(255, 255, 255);
        border-radius: 4px;
        margin-bottom: 16px;
    }

    .lCUBE .list-item:first-child {
        border: none;
    }

    .lCUBE .list-item {
        border-top: 1px solid rgb(248, 248, 248);
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        width: 100%;
        -webkit-box-pack: justify;
        justify-content: space-between;
        padding: 19px 0px;
    }

    .lCUBE .info {
        display: flex;
    }


    .dfHeIP .info {
        display: flex;
        flex-wrap: nowrap;
        -webkit-box-pack: justify;
        justify-content: space-between;
        background-color: rgb(255, 255, 255);
        border-radius: 8px;
    }

    .lCUBE .list-item .icon {
        width: 24px;
        height: 24px;
        vertical-align: bottom;
    }


    .icon {
        display: inline-block;
        vertical-align: middle;
        background-repeat: no-repeat;
        background-position: 0px 0px;
    }

    img {
        max-width: 100%;
    }

    img {
        border-style: none;
    }

    .lCUBE .detail {
        display: flex;
        flex-direction: column;
    }


    *, ::before, ::after {
        box-sizing: border-box;
    }

    .lCUBE .list-item span {
        font-size: 14px;
        line-height: 20px;
        margin: 0px 0px 0px 6px;
        color: rgb(56, 56, 61);
    }

    .lCUBE .list-item .statusButton {
        color: rgb(27, 168, 255);
        flex: 1 1 0%;
        -webkit-box-pack: justify;
        justify-content: space-between;
        display: flex;
    }

    .lCUBE .list-item span.hint {
        color: rgb(128, 128, 137);
    }

    .lCUBE .list-item button.active {
        border: 1px solid rgb(11, 116, 229);
        background-color: rgb(255, 255, 255);
    }

    .lCUBE .list-item button {
        border: 0px;
        height: 28px;
        border-radius: 4px;
        font-size: 14px;
        cursor: pointer;
        padding: 0px 12px;
        color: rgb(11, 116, 229);
    }


     .eQckrx input[type="radio"]:checked + .radio-fake::before {
         transform: scale(1);
     }

     .eQckrx .radio-fake::before {
         content: "";
         position: absolute;
         left: 2px;
         top: 2px;
         width: 12px;
         height: 12px;
         background-color: rgb(13, 92, 182);
         border-radius: 50%;
         transform: scale(0);
         transition: transform 0.3s ease 0s;
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
                    <div class="info">
                        <div class="info-left"><span class="info-title">Thông tin cá nhân</span>
                            <div class="styles__StyledAccountInfo-sc-s5c7xj-2 khBVOu">
                                <form action="UpdateUserProfile" method="post">
                                    <div class="form-info">

                                        <div class="form-name">
                                            <div class="form-control"><label class="input-label">Họ &amp;
                                                Tên</label>
                                                <div>
                                                    <div class="styles__StyledInput-sc-s5c7xj-5 hisWEc"><input
                                                            class="input " type="search" name="fullName"
                                                            maxlength="128" placeholder="Thêm họ tên"
                                                            value="${user.name}" required></div>
                                                </div>
                                            </div>
                                            <div class="form-control"><label class="input-label">Nickname</label>
                                                <div>
                                                    <div class="styles__StyledInput-sc-s5c7xj-5 hisWEc"><input
                                                            class="input " name="userName" maxlength="128"
                                                            placeholder="Thêm nickname" type="search"
                                                            value="${user.username}" required></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-control"><label class="input-label">Ngày sinh</label>
                                        <div class="style__StyledBirthdayPicker-sc-1325vtm-0 bvIJNZ"><select
                                                name="day">
                                            <c:choose>
                                                <c:when test="${profile.birthDay!=null}">
                                                    <option value="${profile.getDayOfBirth()}">${profile.getDayOfBirth()}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="0">Ngày</option>
                                                </c:otherwise>
                                            </c:choose>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                            <option value="25">25</option>
                                            <option value="26">26</option>
                                            <option value="27">27</option>
                                            <option value="28">28</option>
                                            <option value="29">29</option>
                                            <option value="30">30</option>
                                            <option value="31">31</option>
                                        </select><select name="month">
                                            <c:choose>
                                                <c:when test="${profile.birthDay!=null}">
                                                    <option value="${profile.getMonthOfBirth()}">${profile.getMonthOfBirth()}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="0">Tháng</option>
                                                </c:otherwise>
                                            </c:choose>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                        </select><select name="year">
                                            <c:choose>
                                                <c:when test="${profile.birthDay!=null}">
                                                    <option value="${profile.getYearOfBirth()}">${profile.getYearOfBirth()}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="0">Năm</option>
                                                </c:otherwise>
                                            </c:choose>
                                            <option value="2022">2022</option>
                                            <option value="2021">2021</option>
                                            <option value="2020">2020</option>
                                            <option value="2019">2019</option>
                                            <option value="2018">2018</option>
                                            <option value="2017">2017</option>
                                            <option value="2016">2016</option>
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                            <option value="2010">2010</option>
                                            <option value="2009">2009</option>
                                            <option value="2008">2008</option>
                                            <option value="2007">2007</option>
                                            <option value="2006">2006</option>
                                            <option value="2005">2005</option>
                                            <option value="2004">2004</option>
                                            <option value="2003">2003</option>
                                            <option value="2002">2002</option>
                                            <option value="2001">2001</option>
                                            <option value="2000">2000</option>
                                            <option value="1999">1999</option>
                                            <option value="1998">1998</option>
                                            <option value="1997">1997</option>
                                            <option value="1996">1996</option>
                                            <option value="1995">1995</option>
                                            <option value="1994">1994</option>
                                            <option value="1993">1993</option>
                                            <option value="1992">1992</option>
                                            <option value="1991">1991</option>
                                            <option value="1990">1990</option>
                                            <option value="1989">1989</option>
                                            <option value="1988">1988</option>
                                            <option value="1987">1987</option>
                                            <option value="1986">1986</option>
                                            <option value="1985">1985</option>
                                            <option value="1984">1984</option>
                                            <option value="1983">1983</option>
                                            <option value="1982">1982</option>
                                            <option value="1981">1981</option>
                                            <option value="1980">1980</option>
                                            <option value="1979">1979</option>
                                            <option value="1978">1978</option>
                                            <option value="1977">1977</option>
                                            <option value="1976">1976</option>
                                            <option value="1975">1975</option>
                                            <option value="1974">1974</option>
                                            <option value="1973">1973</option>
                                            <option value="1972">1972</option>
                                            <option value="1971">1971</option>
                                            <option value="1970">1970</option>
                                            <option value="1969">1969</option>
                                            <option value="1968">1968</option>
                                            <option value="1967">1967</option>
                                            <option value="1966">1966</option>
                                            <option value="1965">1965</option>
                                            <option value="1964">1964</option>
                                            <option value="1963">1963</option>
                                            <option value="1962">1962</option>
                                            <option value="1961">1961</option>
                                            <option value="1960">1960</option>
                                            <option value="1959">1959</option>
                                            <option value="1958">1958</option>
                                            <option value="1957">1957</option>
                                            <option value="1956">1956</option>
                                            <option value="1955">1955</option>
                                            <option value="1954">1954</option>
                                            <option value="1953">1953</option>
                                            <option value="1952">1952</option>
                                            <option value="1951">1951</option>
                                            <option value="1950">1950</option>
                                            <option value="1949">1949</option>
                                            <option value="1948">1948</option>
                                            <option value="1947">1947</option>
                                            <option value="1946">1946</option>
                                            <option value="1945">1945</option>
                                            <option value="1944">1944</option>
                                            <option value="1943">1943</option>
                                            <option value="1942">1942</option>
                                            <option value="1941">1941</option>
                                            <option value="1940">1940</option>
                                            <option value="1939">1939</option>
                                            <option value="1938">1938</option>
                                            <option value="1937">1937</option>
                                            <option value="1936">1936</option>
                                            <option value="1935">1935</option>
                                            <option value="1934">1934</option>
                                            <option value="1933">1933</option>
                                            <option value="1932">1932</option>
                                            <option value="1931">1931</option>
                                            <option value="1930">1930</option>
                                            <option value="1929">1929</option>
                                            <option value="1928">1928</option>
                                            <option value="1927">1927</option>
                                            <option value="1926">1926</option>
                                            <option value="1925">1925</option>
                                            <option value="1924">1924</option>
                                            <option value="1923">1923</option>
                                            <option value="1922">1922</option>
                                            <option value="1921">1921</option>
                                            <option value="1920">1920</option>
                                            <option value="1919">1919</option>
                                            <option value="1918">1918</option>
                                            <option value="1917">1917</option>
                                            <option value="1916">1916</option>
                                            <option value="1915">1915</option>
                                            <option value="1914">1914</option>
                                            <option value="1913">1913</option>
                                            <option value="1912">1912</option>
                                            <option value="1911">1911</option>
                                            <option value="1910">1910</option>
                                            <option value="1909">1909</option>
                                            <option value="1908">1908</option>
                                            <option value="1907">1907</option>
                                            <option value="1906">1906</option>
                                            <option value="1905">1905</option>
                                            <option value="1904">1904</option>
                                            <option value="1903">1903</option>
                                            <option value="1902">1902</option>
                                            <option value="1901">1901</option>
                                            <option value="1900">1900</option>
                                        </select></div>
                                    </div>
                                    <div class="form-control"><label class="input-label">Giới tính</label>
                                        <c:choose>
                                            <c:when test="${profile.gender==null || profile.gender == 'Nam'}">
                                                <label
                                                        class="Radio__StyledRadio-sc-1tpsfw1-0 eQckrx"><input
                                                        type="radio"
                                                        name="gender"
                                                        value="Nam" checked=""><span
                                                        class="radio-fake"></span><span
                                                        class="label-sex">Nam</span></label>
                                            </c:when>
                                            <c:otherwise>
                                                <label
                                                        class="Radio__StyledRadio-sc-1tpsfw1-0 eQckrx"><input
                                                        type="radio"
                                                        name="gender"
                                                        value="Nam" checked=""><span
                                                        class="radio-fake"></span><span
                                                        class="label-sex">Nam</span></label>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${profile.gender == 'Nữ'}">
                                                <label
                                                        class="Radio__StyledRadio-sc-1tpsfw1-0 eQckrx"><input
                                                        type="radio"
                                                        name="gender"
                                                        value="Nữ" checked=""><span
                                                        class="radio-fake"></span><span
                                                        class="label-sex">Nữ</span></label>
                                            </c:when>
                                            <c:otherwise>
                                                <label
                                                        class="Radio__StyledRadio-sc-1tpsfw1-0 eQckrx"><input
                                                        type="radio"
                                                        name="gender"
                                                        value="Nữ"><span
                                                        class="radio-fake"></span><span
                                                        class="label-sex">Nữ</span></label>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${profile.gender == 'Khác'}">
                                                <label
                                                        class="Radio__StyledRadio-sc-1tpsfw1-0 eQckrx"><input
                                                        type="radio"
                                                        name="gender"
                                                        value="Khác" checked=""><span
                                                        class="radio-fake"></span><span
                                                        class="label-sex">Khác</span></label>
                                            </c:when>
                                            <c:otherwise>
                                                <label
                                                        class="Radio__StyledRadio-sc-1tpsfw1-0 eQckrx"><input
                                                        type="radio"
                                                        name="gender"
                                                        value="Khác"><span
                                                        class="radio-fake"></span><span
                                                        class="label-sex">Khác</span></label>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="form-control"><label class="input-label">Quốc tịch</label>
                                        <div>
                                            <div class="styles__StyledInput-sc-s5c7xj-5 hisWEc">
                                                <input type="text" value="${profile.nationality}" name="country" required  placeholder="Quốc gia">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-control"><label class="input-label">&nbsp;</label>
                                        <button id="changeInfor" type="submit"
                                                class="styles__StyledBtnSubmit-sc-s5c7xj-3 cqEaiM btn-submit">Lưu
                                            thay đổi
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="info-vertical"></div>
                        <div class="info-right"><span class="info-title">Số điện thoại và Email</span>
                            <div class="styles__StyledListItem-sc-s5c7xj-4 lCUBE">
                                <div class="list-item">
                                    <div class="info"><img
                                            src="https://frontend.tikicdn.com/_desktop-next/static/img/account/phone.png"
                                            class="icon" alt="">
                                        <div class="detail"><span>Số điện thoại</span><span>${user.phone}</span></div>
                                    </div>
                                    <div class="statusButton"><span></span>
                                        <button class="button active">Cập nhật</button>
                                    </div>
                                </div>
                                <div class="list-item">
                                    <div class="info"><img
                                            src="https://frontend.tikicdn.com/_desktop-next/static/img/account/email.png"
                                            class="icon" alt="">
                                        <div class="detail"><span>Địa chỉ email</span><span>${user.email}</span>
                                        </div>
                                    </div>
                                    <div class="statusButton"><span></span>
                                        <button class="button active">Cập nhật</button>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
            <i class="clearfix"></i></div>
    </div>

</div>
<jsp:include page="component/footer.jsp"></jsp:include>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>
// $("#changeInfor").click(function (){
//     $.ajax({
//         url: '/ProjectEcommerceWebsite_war/UpdateUserProfile',
//         type: 'post',
//         data: {
//             id: id
//         },
//         success: function (data) {
//             $("#tableTotal").html(data);
//             updateCart()
//         },
//         error: function (xhr) {
//
//         }
//     })
// })





</script>
<c:import url="common/js.jsp"></c:import>





</body>
</html>