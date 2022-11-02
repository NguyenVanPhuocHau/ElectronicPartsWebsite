package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import beans.User;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;

import java.sql.*;

public class UserDao {
    private static UserDao instance;
    static Connection conn;
    static PreparedStatement pre;
    static ResultSet rs;
    int count=0;

    public UserDao() {
    }

    public static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();

        }
        return instance;
    }


    public void insertData(String username, String password, String addressEmail, String numberPhone) throws SQLException {
        Statement statement = DBconnect.getInstance().get();

        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        //get count
        String getCount = "";
        String setCount = "SELECT COUNT(*) AS total FROM user;";
        ResultSet rs = statement.executeQuery(setCount);
        rs.next();
        count = rs.getInt(1) + 1;
        if (count < 10) {
            getCount = "0" + count;
        } else {
            getCount = count + "";
        }


        String sql = "INSERT INTO user (user_id,user_username,user_password,user_email,user_phone,user_createAt) VALUES ('TK" + getCount + "','" + username + "','" + password + "','" + addressEmail + "','" + numberPhone + "','" + date + "');";
        statement.executeUpdate(sql);
    }

    public boolean checkDuplicate(String username, String password) {
        Statement statement = DBconnect.getInstance().get();

        if (statement == null) return true;
        try {
            String sql = "SELECT * FROM taikhoan WHERE user_username='" + username + "' AND user_password='" + password + "'";
            ResultSet rs = statement.executeQuery(sql);
            if (rs.next()) return false;
        } catch (SQLException e) {
            e.printStackTrace();
            return true;
        }
        return true;
    }

    public boolean checkLogin(String username, String password) {
        Statement statement = DBconnect.getInstance().get();

        if (statement == null) return false;
        String sql="SELECT * FROM user WHERE user_username=? AND user_password=?";
        conn= Connect.getConnect();
        try {
            pre=conn.prepareStatement(sql);
            pre.setString(1,username);
            pre.setString(2,password);
            rs=pre.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setUsername(rs.getString("user_username"));
            }
            if (user == null || !user.getUsername().equals(username) || rs.next()) {
                return false;
            }
            return true;
        } catch (SQLException e) {
            return false;
        }
    }
}
