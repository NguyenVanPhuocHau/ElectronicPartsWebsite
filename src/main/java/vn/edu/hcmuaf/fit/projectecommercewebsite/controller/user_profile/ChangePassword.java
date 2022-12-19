package vn.edu.hcmuaf.fit.projectecommercewebsite.controller.user_profile;



import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserProfileBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.controller.Logout;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.ProfileDao;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ChangePassword", value = "/changePassword")
public class ChangePassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String newPass = request.getParameter("newPassword");
        String oldPass = request.getParameter("oldPassword");
        String confPas = request.getParameter("confirmPassword");
        HttpSession session = request.getSession();
        UserBean userBean = (UserBean) session.getAttribute("user");
        boolean checkOld = false, checkNew = false, checkConf = false;
        if (oldPass != null){
            if (!userBean.getPassword().equals(oldPass)){
                request.setAttribute("hasErrorOldPass","has-error");
                request.setAttribute("WrongPassMess","Mật khẩu không đúng");
                request.setAttribute("hau","dau");
            }
            else {
                checkOld = true;
            }
        }
        if (newPass != null){
            String pattern = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}";
            if (!newPass.matches(pattern)){
                request.setAttribute("hasErrorNewPass","has-error");
                request.setAttribute("errorNewPass","<div class=\"error-message\"> Mật khẩu không đúng định dạng</div>");
            }
            else {
                checkNew = true;
            }
        }
        if (confPas != null){
            if (!newPass.equals(confPas)){
                request.setAttribute("hasErrorConfPass","has-error");
                request.setAttribute("errorConfPass","<div class=\"error-message\">Mật khẩu chưa trùng khớp</div>");
            }
            else {
                checkConf = true;
            }
        }

        if(checkOld && checkNew && checkConf){
            UserDao.getInstance().changePassword(userBean.getUser_id(),newPass);
            session.removeAttribute("user");
            session.removeAttribute("cart");
            response.sendRedirect("/ProjectEcommerceWebsite_war/");
        }

        request.getRequestDispatcher("changepassword.jsp").forward(request,response);
    }
}
