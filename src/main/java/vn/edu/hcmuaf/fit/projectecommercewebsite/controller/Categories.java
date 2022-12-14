package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.CategoryService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Categories", value = "/categories")
public class Categories extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Category> listParent = new CategoryService().getParent();
//        for(Category category:listParent){
//            String text= (String) request.getAttribute("texts");
//            ArrayList<Category> listCategory = new CategoryService().getCategory(text);
//            request.setAttribute("listCategory", listCategory);
//        }

        request.setAttribute("listParent", listParent);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/component/sidebar.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
