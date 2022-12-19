package vn.edu.hcmuaf.fit.projectecommercewebsite.controller.order;



import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.*;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Order;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.OrderDao;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.OrderDetail;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.ProfileDao;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.Random;

@WebServlet(name = "MyOrder", value = "/myOrder")
public class MyOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        Order order = OrderDao.getInstance().getOrderById(user.getUser_id());
        request.setAttribute("myOrder", order);
        request.getRequestDispatcher("myOrders.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
