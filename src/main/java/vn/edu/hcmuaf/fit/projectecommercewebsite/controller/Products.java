package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.ProductService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "Products", value = "/products")
public class Products extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        System.out.println(session.getAttribute("iphone") + "iphone");
        System.out.println(session.getServletContext() + "");
        System.out.println(request.getParameter("id_category") + "aaaaaaa");
        String id_category = request.getParameter("id_category");

        if (id_category!=null) {
            ArrayList<Product> listProduct = new ProductService().filterProduct(id_category);
            request.setAttribute("listProduct", listProduct);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/product.jsp");
            rd.forward(request, response);
            session.removeAttribute("choose");

        } else {
            ArrayList<Product> listProduct = new ProductService().getProduct();
            request.setAttribute("listProduct", listProduct);
            request.setAttribute("aaa", "hello");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/product.jsp");
            rd.forward(request, response);
//            System.out.println(listProduct.size());
//        }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public static void main(String[] args) {
//        ArrayList<Product> listProducts= productSer.getProduct();
//        for( Product p :listProducts){
        System.out.println("1");
//        }


    }
}
