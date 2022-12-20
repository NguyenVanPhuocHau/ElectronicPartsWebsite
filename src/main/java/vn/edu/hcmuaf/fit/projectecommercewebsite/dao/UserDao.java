package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.ProductCart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.User;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import javax.xml.bind.DatatypeConverter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.Random;

public class UserDao {
    private static UserDao instance;
    static Connection conn;
    static PreparedStatement pre;
    static ResultSet rs;

    int count = 0;

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


        String sql = "INSERT INTO user (user_id,role_id,user_username,user_password,user_email,user_phone,user_createAt) VALUES ('US" + getCount + "','RO01','" + username + "','" + password + "','" + addressEmail + "','" + numberPhone + "','" + date + "');";
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
        String sql = "SELECT * FROM user WHERE user_username=? AND user_password=?";
        conn = Connect.getConnect();
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            rs = pre.executeQuery();
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
    public boolean checkAdmin(String username, String password) {
        Statement statement = DBconnect.getInstance().get();
        boolean result = true;

        if (statement == null) return false;
        String sql = "SELECT * FROM user WHERE user_username=? AND user_password=?";
        conn = Connect.getConnect();
        ResultSet rs=null;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            rs = pre.executeQuery();

            if (rs.next()) {
                String value = rs.getString(2);
                System.out.println(value);
//                System.out.println(value);
                if (value.equals("RO01")) {
                    result = false;
                } else if(value.equals("RO02")) {
                    result = true;
                }

            }
            return result;
        } catch (SQLException e) {
            return false;
        }
    }







    public UserBean getUserLogin(String username, String password) {
        try {
            UserBean result = null;
            Connection con = GetConnection.getCon();
            String sql = "SELECT * FROM user WHERE user_username=? AND user_password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                result = new UserBean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getDate(9));
            }
            rs.close();
            ps.close();
            return result;
        } catch (SQLException e) {
            //some error when execute query
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            //can't find the name to get COnnection down database
            e.printStackTrace();
        }
        return null;

    }

    public UserBean getUserById(String user_id) {
        try {
            UserBean result = null;
            Connection con = GetConnection.getCon();
            String sql = "SELECT * FROM user WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user_id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                result = new UserBean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getDate(9));
            }
            rs.close();
            ps.close();
            return result;
        } catch (SQLException e) {
            //some error when execute query
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            //can't find the name to get COnnection down database
            e.printStackTrace();
        }
        return null;

    }

    public boolean updateNameAndNickName(String user_id, String name, String nickName) {
        try {
            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "update user set user_username = ?, user_name = ? where user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nickName);
            ps.setString(2, name);
            ps.setString(3, user_id);
            int result = ps.executeUpdate();
            if (result == 1)
                return true;
            else
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }


    public boolean changePassword(String user_id,String newPassword) {
        try {
            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "update user set user_password = ? where user_id=?";
            System.out.println(MD5(newPassword));
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, MD5(newPassword));
            ps.setString(2, user_id);
            int result = ps.executeUpdate();
            if (result == 1)
                return true;
            else
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static String MD5(String password){
        MessageDigest md = null;
        String myHash="";

        try {
            md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] digest = md.digest();
            myHash = DatatypeConverter
                    .printHexBinary(digest).toUpperCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return myHash;



    }
    public static void main(String[] args) {
        System.out.println(MD5("Hau@090701"));

    }
}


