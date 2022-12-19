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
            <div class="container">
                <div class="row">
                    <div id="manager">
                        <div id="manager_flight"><a href="admin_flight">Quản lý sản phẩm</a></div>
                        <div id="manager_ticket"><a href="admin_ticket">Quản lý đơn hàng</a></div>
                        <div id="manager_user"><a>Quản lý người dùng</a></div>

                    </div>
                    <div id="part_show">
                        <div class="table-responsive">
                            <div class="table-wrapper">
                                <div class="table-title ">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <h2>Quán lý sản phẩm</h2>
                                        </div>
                                        <div class="col-xs-6">
                                            <div  class="btn btn-success" data-toggle="modal" onclick="addTicket()"><i
                                                    class="material-icons">&#xE147;</i> <span >Thêm chuyến bay</span></div>
                                            <div  class="btn btn-danger" data-toggle="modal" onclick="deleteTicket()"><i
                                                    class="material-icons">&#xE15C;</i> <span>Xóa chuyến bay</span></div>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-striped table-hover ">
                                    <thead>
                                    <tr>
                                        <th>
                                        </th> <!--table-->
                                        <th>Mã SP</th>
                                        <th>Tên SP</th>
                                        <th>Mô tả</th>
                                        <th>Giá</th>
                                        <th>Mã kho</th>
                                        <th>Mã khuyến mãi</th>
                                        <th>Mã loại</th>
                                        <th>Ngày tạo</th>
                                    </tr>
                                    </thead>

                                    </tbody>
                                    <c:forEach items="${requestScope.listProductMana}" var="pr">
                                    <tbody>
                                    <tr class="data"> <!--hard code data start-->
                                        <td>
                                                <%--								<span class="custom-checkbox">--%>
                                                <%--									<input type="checkbox" class="checkbox" name="options[]" id="checkbox" value="1">--%>
                                                <%--                                    <label for="checkbox"></label>--%>

                                                <%--								</span>--%>
                                        </td>
                                        <td  id="maCB ">${pr.product_id}</td>
                                        <td  class="mathue " style="width: 100px;">${pr.product_name}</td>
                                        <td  class="mamb " style="width: 250px;">${pr.product_des}</td>
                                        <td  class="mahb ">${pr.product_price}</td>
                                        <td  class="madiemdi ">${pr.iventory_id}</td>
                                        <td class="madiemden ">${pr.discount_id}</td>
                                        <td class="ngaydi ">${pr.catetory_id}</td>
                                        <td class="ngayden ">${pr.createAt}</td>
                                        <td>
                                            <a  class="edit style_in" data-toggle="modal" onclick="editTicket()"><i
                                                    class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                <%--                                    <a  class="delete style_in" data-toggle="modal"><i--%>
                                                <%--                                            class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
                                        </td>
                                    </tr> <!--hard code data end-->
                                    <tbody>
                                    </c:forEach>
                                </table>

                                <!-- *this one isnt sure enough to be in-->
<%--                                <div class="clearfix">--%>
<%--                                    <div class="hint-text">Hiển thị <b>3</b>/<b>15</b> sản phẩm</div>--%>
<%--                                    <ul class="pagination">--%>
<%--                                        <li class="page-item"><a href="#">Trước</a></li>--%>
<%--                                        <li class="page-item"><a href="#" class="page-link">1</a></li>--%>
<%--                                        <li class="page-item"><a href="#" class="page-link">2</a></li>--%>
<%--                                        <li class="page-item active"><a href="#" class="page-link">3</a></li>--%>
<%--                                        <li class="page-item"><a href="#" class="page-link">4</a></li>--%>
<%--                                        <li class="page-item"><a href="#" class="page-link">5</a></li>--%>
<%--                                        <li class="page-item"><a href="#" class="page-link">Sau</a></li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
                            </div>
                        </div>
                    </div>



                    <!-- Add Modal HTML, Nút add ở phía trên -->
                    <div id="addEmployeeModal" class="">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="admin_flight" method="get" name="admin">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Thêm chuyến bay</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!--lúc test nhớ để hết sang cmt, chức năng thêm vẫn chưa ổn-->
                                        <div class="form-group">
                                            <label>Mã thuế</label>
                                            <input type="text" id="TaxID" class="form-control" required name="tax">
                                        </div>
                                        <div class="form-group">
                                            <label>Mã máy bay</label>
                                            <input type="text" id="FlightID" class="form-control" required name="code_flight">
                                        </div>
                                        <div class="form-group">
                                            <label>Mã hạng vé</label>
                                            <input type="text" id="level_ticket" class="form-control" required name="code_level">
                                        </div>
                                        <div class="form-group">
                                            <label>Điểm đi</label>
                                            <input type="text" id="departure_place" class="form-control" required name="go">
                                        </div>
                                        <%--                                <div class="form-group">--%>
                                        <%--                                    <label>SÂN BAY ĐI</label>--%>
                                        <%--                                    <input type="text" id="" class="form-control" required>--%>
                                        <%--                                </div>--%>
                                        <div class="form-group">
                                            <label>Điểm đến</label>
                                            <input type="text" id="arrival_plate" class="form-control" required name="end">
                                        </div>
                                        <%--                                <div class="form-group">--%>
                                        <%--                                    <label>SÂN BAY ĐẾN</label>--%>
                                        <%--                                    <input type="text" id="" class="form-control" required>--%>
                                        <%--                                </div>--%>
                                        <div class="form-group">
                                            <label>Ngày đi</label>
                                            <input type="date" id="date_go" class="form-control" required name="date_go">
                                        </div>
                                        <div class="form-group">
                                            <label>Ngày đến</label>
                                            <input type="date" id="date_comming" class="form-control" required name="date_comming">
                                        </div>
                                        <div class="form-group">
                                            <label>Giờ đi</label>
                                            <input type="time" id="time" class="form-control" required name="time_go">
                                        </div>
                                        <div class="form-group">
                                            <label>Giờ đến</label>
                                            <input type="time" id="arrival_time" class="form-control" required name="time_end">
                                        </div>
                                    </div>
                                    <%--                            <div class="modal-footer">--%>
                                    <input type="button" class="btn btn-default" data-dismiss="modal"
                                           value="Hủy" onclick="cancel()">
                                    <input type="submit" id="addTicket" class="btn btn-success" value="Thêm">
                                    <%--                            </div>--%>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Edit Modal HTML, Nút edit ở phía bên phải, cùng hàng với sản phẩn -->
                    <div id="editEmployeeModal" class="">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="admin_flight" method="get" name="admins">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Chỉnh sửa chuyến bay</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label>Mã Chuyến bay</label>
                                            <input type="text" id="flightID_up" class="form-control" required name="flight_up">
                                        </div>
                                        <div class="form-group">
                                            <label>Mã thuế</label>
                                            <input type="text" id="taxID_up" class="form-control" required name="tax_up">
                                        </div>
                                        <div class="form-group">
                                            <label>Mã máy bay</label>
                                            <input type="text" id="code_flight_up" class="form-control" required name="code_flight_up">
                                        </div>
                                        <div class="form-group">
                                            <label>Mã hạng vé</label>
                                            <input type="text" id="level_ticket_up" class="form-control" required name="code_level_up">
                                        </div>
                                        <div class="form-group">
                                            <label>Điểm đi</label>
                                            <input type="text" id="departure_place_up" class="form-control" required name="go_up">
                                        </div>
                                        <%--                                <div class="form-group">--%>
                                        <%--                                    <label>SÂN BAY ĐI</label>--%>
                                        <%--                                    <input type="text" id="" class="form-control" required>--%>
                                        <%--                                </div>--%>
                                        <div class="form-group">
                                            <label>Điểm đến</label>
                                            <input type="text" id="arrival_plate_up" class="form-control_up" required name="end_up">
                                        </div>
                                        <%--                                <div class="form-group">--%>
                                        <%--                                    <label>SÂN BAY ĐẾN</label>--%>
                                        <%--                                    <input type="text" id="" class="form-control" required>--%>
                                        <%--                                </div>--%>
                                        <div class="form-group">
                                            <label>Ngày đi</label>
                                            <input type="date" id="date_go_up" class="form-control" required name="date_go_up">
                                        </div>
                                        <div class="form-group">
                                            <label>Ngày đến</label>
                                            <input type="date" id="date_comming_up" class="form-control" required name="date_comming_up">
                                        </div>
                                        <div class="form-group">
                                            <label>Giờ đi</label>
                                            <input type="time" id="time_up" class="form-control" required name="time_go_up">
                                        </div>
                                        <div class="form-group">
                                            <label>Giờ đến</label>
                                            <input type="time" id="arrival_time_up" class="form-control" required name="time_end_up">
                                        </div>
                                        <%--                                <div class="form-group">--%>
                                        <%--                                    <label>Ngày nhập</label>--%>
                                        <%--                                    <input type="time" id="dateEnter_up" class="form-control" required name="dateEnter_up">--%>
                                        <%--                                </div>--%>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy" onclick="cancels()">
                                        <input type="submit" class="btn btn-info" value="Lưu">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Delete Modal HTML -->
                    <div id="deleteEmployeeModal" class="">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="admin_flight" method="get">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Xóa chuyến bay</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <label for="text" >Nhập mã chuyến bay muốn xóa</label>
                                        <input type="text" placeholder="CB01" id="text" name="maCB">
                                        <p class="text-warning"><small>Hành động này không thể hoàn tác</small></p>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy" onclick="cancelss()">
                                        <input type="submit" class="btn btn-danger" value="Xóa">
                                    </div>
                                </form>
                            </div>
                        </div>


                    </div>
                </div>
        </div>

    </div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
<c:import url="component/footer.jsp"></c:import>
<c:import url="common/js.jsp"></c:import>

</body>
</html>
