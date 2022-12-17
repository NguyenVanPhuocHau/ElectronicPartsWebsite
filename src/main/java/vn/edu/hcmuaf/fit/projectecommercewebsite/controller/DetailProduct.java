package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.ProductService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DetailProduct", value = "/detail")
public class DetailProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = new ProductService().getDetailProduct(request.getParameter("id_product"));
        System.out.println(request.getParameter("id_product")+"product");
        request.setAttribute("detailProduct", product);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/detail_product.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
