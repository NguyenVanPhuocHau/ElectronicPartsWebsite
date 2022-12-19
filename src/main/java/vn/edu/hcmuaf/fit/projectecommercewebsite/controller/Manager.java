package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.ProductService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Manager", value = "/manager")
public class Manager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Product> listProduct = new ProductService().getProduct();
        request.setAttribute("listProductMana", listProduct);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
