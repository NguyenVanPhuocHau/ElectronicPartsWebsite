package vn.edu.hcmuaf.fit.projectecommercewebsite.controller.user_profile;



import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserProfileBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.ProfileDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "userProfile", value = "/userProfile")
public class UserProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        UserProfileBean profileBean = ProfileDao.getInstance().getProfileById(user.getUser_id());
        request.setAttribute("profile",profileBean);
        request.getRequestDispatcher("userInfor.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
