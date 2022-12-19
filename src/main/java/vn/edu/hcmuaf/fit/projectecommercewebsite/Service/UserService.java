package vn.edu.hcmuaf.fit.projectecommercewebsite.Service;

import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.UserDao;

import java.sql.*;

public class UserService {
    private static UserService instance;

    private UserService() {

    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public boolean checkLogin(String username, String password) {
        return UserDao.getInstance().checkLogin(username, password);
    }

    public void insertData(String username, String password, String re_password , String address, String phone) throws SQLException {
        if(UserDao.getInstance().checkDuplicate(username,password)){
            UserDao.getInstance().insertData(username,password,address,phone);
        }
//        if(!password.equals(re_password)){
//            UserDao.getInstance().insertData(username, password, re_password, address, phone);
//        }
//        return false;
    }
    public boolean checkAdmin(String username, String password) {
        return  new UserDao().checkAdmin(username,password);
    }



}
