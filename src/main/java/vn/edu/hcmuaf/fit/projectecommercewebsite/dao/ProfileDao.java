package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserProfileBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

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

    public static void main(String[] args) {
        UserProfileBean userProfile = getInstance().getProfileById("US02");
//        System.out.println(userProfile.toString());
//        System.out.println(userProfile.getYearOfBirth());

        Calendar cal = Calendar.getInstance();
        cal.setTime(userProfile.getBirthDay());
        int month = cal.get(Calendar.YEAR);
        System.out.println(month);
    }

}
