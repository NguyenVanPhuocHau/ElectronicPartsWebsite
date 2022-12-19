package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.OrderItem;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.ProductCart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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

    public boolean insertOrderDetail(String order_id, String product_id, double priceAt, int quantity, java.sql.Date crateDate) {
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

    public List<OrderItem> getListOrderItems(String order_id) {
        try {
            Connection con = GetConnection.getCon();
            List<OrderItem> result = new ArrayList<>();
            String sql = "SELECT * FROM order_detail WHERE order_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,order_id);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                ProductCart p = ProductDao.getInstance().getProductById(rs.getString(2));
                result.add(new OrderItem(rs.getString(1),p,rs.getDouble(3),rs.getInt(4)));
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
        for (OrderItem i: getInstance().getListOrderItems("O7873")
             ) {

            System.out.println(i.toString());

        }


    }
}
