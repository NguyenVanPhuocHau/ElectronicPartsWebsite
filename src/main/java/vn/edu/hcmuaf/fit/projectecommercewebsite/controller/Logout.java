package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.UserService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Cart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Logout", urlPatterns = "/logout")
public class Logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

            session.removeAttribute("user");
            session.removeAttribute("cart");

        response.sendRedirect("/ProjectEcommerceWebsite_war/");

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try {
            //huy
            session.invalidate();

            // quay ve dang nhap
            RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/login.jsp");
            dispatcher.forward(request,response);
        }
        finally {
            out.close();
        }


    }
}
