package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import java.sql.*;

public class OrderDetail {
    private static OrderDetail instance;
    static Connection conn;
    static PreparedStatement pre;
    static ResultSet rs;

    int count=0;

    public OrderDetail() {
    }

    public static OrderDetail getInstance() {
        if (instance == null) {
            instance = new OrderDetail();

        }
        return instance;
    }

    public boolean insertOrderDetail(String order_id, String product_id, double priceAt, int quantity, Date crateDate) {
        try {

            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "insert into order_detail(order_id,product_id,price_at,quantity,createAt) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, order_id);
            ps.setString(2, product_id);
            ps.setDouble(3, priceAt);
            ps.setInt(4, quantity);
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
