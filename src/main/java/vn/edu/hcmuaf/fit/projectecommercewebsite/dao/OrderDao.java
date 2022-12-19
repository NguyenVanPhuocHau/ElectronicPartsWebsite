package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.User;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import java.sql.*;

public class OrderDao {
    private static OrderDao instance;
    static Connection conn;
    static PreparedStatement pre;
    static ResultSet rs;

    int count=0;

    public OrderDao() {
    }

    public static OrderDao getInstance() {
        if (instance == null) {
            instance = new OrderDao();

        }
        return instance;
    }

    public boolean insertOrder(String order_id, String user_id, String status_id, double order_total, Date crateDate) {
        try {

            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "insert into order(order_id,user_id,status_id,order_total,createAt) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, order_id);
            ps.setString(2, user_id);
            ps.setString(3, status_id);
            ps.setDouble(4, order_total);
            ps.setDate(5, crateDate);
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


    }
}
