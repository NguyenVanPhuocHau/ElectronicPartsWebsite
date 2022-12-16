package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.ProductService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Homes", value = "/home")
public class Homes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
