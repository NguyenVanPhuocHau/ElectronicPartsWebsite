package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import com.sun.org.apache.xpath.internal.operations.Or;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Order;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.OrderItem;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.User;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.UserBean;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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

    public boolean insertOrder(String order_id, String user_id, String userName, String address, String phone, String email,  String status_id, double order_total, java.sql.Date crateDate) {
        try {

            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "insert into order_user(order_id,user_id,name_user,address,phone,email,status_id,order_total,createAt) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, order_id);
            ps.setString(2, user_id);
            ps.setString(3, userName);
            ps.setString(4, address);
            ps.setString(5, phone);
            ps.setString(6, email);
            ps.setString(7, status_id);
            ps.setDouble(8, order_total);
            ps.setDate(9, crateDate);
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

    public List<Order> getOrderById(String user_id) {
        try {
            List<Order> result = new ArrayList<>();
            Connection con = GetConnection.getCon();
            Order order = null;
            String sql = "SELECT * FROM order_user WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,user_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                order = new Order(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getDouble(8),rs.getDate(9));
                order.setListOrderItems(OrderDetail.getInstance().getListOrderItems(rs.getString(1)));
                result.add(order);
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

    public List<Order> getOrderStatus(String user_id,String status_id) {
        try {
            List<Order> result = new ArrayList<>();
            Connection con = GetConnection.getCon();
            Order order = null;
            String sql = "SELECT * FROM order_user WHERE user_id=? AND status_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,user_id);
            ps.setString(2,status_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                order = new Order(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getDouble(8),rs.getDate(9));
                order.setListOrderItems(OrderDetail.getInstance().getListOrderItems(rs.getString(1)));
                result.add(order);
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

    public String getStatusOrder(String status_id) {
        try {
            String result = "";
            Connection con = GetConnection.getCon();
            Order order = null;
            String sql = "SELECT * FROM order_status WHERE status_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,status_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result = rs.getString(2);
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
        List<Order> list = getInstance().getOrderStatus("US02","ST001");
        System.out.println(list.size());
        for (Order o: list
             ) {
            System.out.println(o.toString());
        }


    }
}
