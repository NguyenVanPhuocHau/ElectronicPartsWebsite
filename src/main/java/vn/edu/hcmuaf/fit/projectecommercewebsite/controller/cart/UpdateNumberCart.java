package vn.edu.hcmuaf.fit.projectecommercewebsite.controller.cart;


import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UpdateNumberCart", value = "/updateNumberCart")
public class UpdateNumberCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String location =  request.getParameter("location");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        PrintWriter out = response.getWriter();
        if(location.equals("header")){
            out.println("["+cart.getNumberProductInCart()+"] sản phẩm trong giỏ hàng");
        }
        else {
            out.println("<img\n" +
                    "            src=\"assets/themes/images/ico-cart.png\" alt=\"cart\"><span>có "+ cart.getNumberProductInCart() +" sản phẩm</span><span\n" +
                    "            class=\"badge badge-warning pull-right\">"+cart.getVnFinalMoneyCart()+"đ</span>");
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
