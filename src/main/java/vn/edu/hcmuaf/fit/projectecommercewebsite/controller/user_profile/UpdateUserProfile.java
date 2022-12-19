package vn.edu.hcmuaf.fit.projectecommercewebsite.controller.user_profile;



import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserProfileBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.ProfileDao;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "UpdateUserProfile", value = "/UpdateUserProfile")
public class UpdateUserProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        String fullName  =  request.getParameter("fullName").trim();
        String userName = request.getParameter("userName").trim();
        int day = Integer.parseInt(request.getParameter("day"));
        int month = Integer.parseInt(request.getParameter("month"));
        int year = Integer.parseInt(request.getParameter("year"));
        String gender = request.getParameter("gender");
        String country = request.getParameter("country").trim();
        System.out.println(fullName + " " + userName + " " + day + " " + month + " " + year + " " + gender + " " + country);
        UserBean user = (UserBean) session.getAttribute("user");
        String user_id = user.getUser_id();
        UserDao.getInstance().updateNameAndNickName(user_id,fullName,userName);
        ProfileDao.getInstance().updateProfile(user_id,new Date(year-month-day),gender,country);
        UserProfileBean profileBean = ProfileDao.getInstance().getProfileById(user.getUser_id());
        request.setAttribute("profile",profileBean);
        request.getRequestDispatcher("userInfor.jsp").forward(request,response);
    }
}
