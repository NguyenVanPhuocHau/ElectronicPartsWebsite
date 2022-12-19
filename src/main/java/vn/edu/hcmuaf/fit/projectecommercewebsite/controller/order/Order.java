package vn.edu.hcmuaf.fit.projectecommercewebsite.controller.order;



import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.*;
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

@WebServlet(name = "Order", value = "/order")
public class Order extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        request.getRequestDispatcher("order.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        UserBean user = (UserBean) session.getAttribute("user");
        String name =  request.getParameter("nameOrder");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        Random random = new Random();
        String orderId = "O" + (random.nextInt(9999) + 1000);
        LocalDate localDate = LocalDate.now();
        int year = localDate.getYear();
        int month = localDate.getMonthValue();
        int day = localDate.getDayOfMonth();
//        System.out.println(user.getUser_id() + " " + name + " " +  address +" " + phone + " " + email + " " + cart.getFinalMoneyCart());
        OrderDao.getInstance().insertOrder(orderId,user.getUser_id(),name,address,phone,email,"ST001",cart.getFinalMoneyCart(),new Date(2022-12-19));
        for (CartItem item: cart.getListCartItems()) {
            ProductCart p = item.getProduct();
            OrderDetail.getInstance().insertOrderDetail(orderId,p.getProduct_id(),p.getProduct_price(),item.getAmount_bought(),new Date(2022-12-19));
        }

        response.sendRedirect("myOrder");

    }
}
