package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserProfileBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.sql.*;

public class ProfileDao {
    private static ProfileDao instance;
    public ProfileDao() {
    }

    public static ProfileDao getInstance() {
        if (instance == null) {
            instance = new ProfileDao();

        }
        return instance;
    }

    public UserProfileBean getProfileById(String user_id) {
        try {
            UserProfileBean result = null;
            Connection con = GetConnection.getCon();
            String sql = "SELECT * FROM user_profile WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,user_id);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                result = new UserProfileBean(rs.getString(1),rs.getDate(2),rs.getString(3),rs.getString(4));
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

    public boolean updateProfile(String user_id, java.sql.Date  birthday, String gender, String nationality) {
        try {
            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "update user_profile set birthday = ?, gender = ?, nationality = ? where user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setDate(1, birthday);
            ps.setString(2, gender);
            ps.setString(3, nationality);
            ps.setString(4, user_id);
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


    public static void main(String[] args) {
        java.sql.Date date  = new Date(0000-00-00);
        getInstance().updateProfile("US02",date.valueOf("2001-8-12"),"Nữ","China");

    }

}
