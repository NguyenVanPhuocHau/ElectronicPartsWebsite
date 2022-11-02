package controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String getUsername_regis = request.getParameter("username_regis");
        String getPassword_regis = request.getParameter("password_regis");
        String getRePassword = request.getParameter("rePassword");
        String getAddressEmail = request.getParameter("addressEmail_regis");
        String getPhoneNumber = request.getParameter("phone_regis");

        try {
            if(getPassword_regis.equals(getRePassword)&& !getUsername_regis.equals("")&&!getPassword_regis.equals("")){
                UserDao.getInstance().insertData(getUsername_regis,getPassword_regis,getAddressEmail,getPhoneNumber);
                response.sendRedirect("view/login.jsp");

            }
            else {
                request.getRequestDispatcher("view/register.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
