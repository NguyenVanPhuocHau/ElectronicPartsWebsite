package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.Service.UserService;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", urlPatterns = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String getUsername = request.getParameter("username");
        String getPass = request.getParameter("password");
        if(getUsername.equals("")){
            request.setAttribute("errolNameNull","Nhập username");
        }else{
            request.setAttribute("errolNameNull","");

        }
        if(getPass.equals("")){
            request.setAttribute("errolPassNull","Nhập password");
        }else{
            request.setAttribute("errolPassNull","");

        }


        if (UserService.getInstance().checkLogin(getUsername, getPass)) {
            HttpSession session = request.getSession();
            UserBean userBean = UserDao.getInstance().getUserLogin(getUsername,getPass);
            session.setAttribute("user", userBean);
            response.sendRedirect("home.jsp");

        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
//            System.out.println("aaaaa"+getUsername + "   / " + getPass);

        }
    }
}
