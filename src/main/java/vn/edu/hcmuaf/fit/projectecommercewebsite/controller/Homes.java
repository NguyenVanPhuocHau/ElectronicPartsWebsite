package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.ProductService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Cart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Homes", value = "/homes")
public class Homes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null){
            cart = Cart.getInstance();
            session.setAttribute("cart",cart);
        }
        ArrayList<Product> listProductNew = new ProductService().getProductNew();
        request.setAttribute("listProductNew", listProductNew);
        ArrayList<Product> listProductLast = new ProductService().getProductLast();
        request.setAttribute("listProductLast", listProductLast);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/home.jsp");
        rd.forward(request, response);
//        response.sendRedirect( "/home.jsp");


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
