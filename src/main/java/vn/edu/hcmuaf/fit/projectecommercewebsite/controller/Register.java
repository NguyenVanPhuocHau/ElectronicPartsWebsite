package vn.edu.hcmuaf.fit.projectecommercewebsite.controller;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.User;
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
        String encyptPassword = new User().MD5(getPassword_regis);
        String getAddressEmail = request.getParameter("addressEmail_regis");
        String getPhoneNumber = request.getParameter("phone_regis");
        if(getUsername_regis.equals("")){
            request.setAttribute("errolNameNullr","Nhập username");
        }else{
            request.setAttribute("errolNameNullr","");

        }
        if(getPassword_regis.equals("")){
            request.setAttribute("errolPassNullr","Nhập password");
        }else{
            request.setAttribute("errolPassNullr","");

        }
        if(getRePassword.equals("")){
            request.setAttribute("errolRePassNullr","Nhập password");
        }else{
            request.setAttribute("errolRePassNullr","");

        }
        if(getAddressEmail.equals("")){
            request.setAttribute("errolEmailNullr","Nhập password");
        }else{
            request.setAttribute("errolEmailNullr","");

        }
        if(getPhoneNumber.equals("")){
            request.setAttribute("errolPhoneNullr","Nhập password");
        }else{
            request.setAttribute("errolPhoneNullr","");

        }

        try {
            if(getPassword_regis.equals(getRePassword)&& !getUsername_regis.equals("")&&!getPassword_regis.equals("")){
                UserDao.getInstance().insertData(getUsername_regis,encyptPassword,getAddressEmail,getPhoneNumber);
                response.sendRedirect("login.jsp");

            }
            else {
                request.getRequestDispatcher("register.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
