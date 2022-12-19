package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Category;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.DetailOrder;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Order;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;

import java.sql.*;
import java.util.ArrayList;

public class SearchOrderDao {
    private static SearchOrderDao instance;
    static Connection conn;
    static PreparedStatement pre;


    public static SearchOrderDao getInstance() {
        if (instance == null) {
            instance = new SearchOrderDao();
        }
        return instance;
    }


    public ArrayList<Order> getOrderList(String phone) {
        ArrayList<Order> listOrder = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "select * from user as us join laptrinhweb.order as ord on us.user_id= ord.user_id join order_status as ord_s on ord.status_id=ord_s.status_id where us.user_phone=?";
        conn = Connect.getConnect();
        ResultSet rs = null;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, phone);
            rs = pre.executeQuery();
            while (rs.next()) {
                listOrder.add(new Order(rs.getString("order_id"), rs.getString("user_id"), rs.getString("user_name"), rs.getString("user_address"), rs.getString("user_phone"), rs.getString("user_email"), rs.getString("status_name"), rs.getDouble("order_total"), rs.getDate("createAt")));
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return listOrder;

    }
    public ArrayList<DetailOrder> getProductByOrder(String id_order) {
        ArrayList<DetailOrder> listProduct = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "select * from product as pr join order_item as ori on pr.product_id=ori.product_id join laptrinhweb.order as ord on ord.order_id=ori.order_id where ord.order_id=?";
        conn = Connect.getConnect();
        ResultSet rs = null;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, id_order);
            rs = pre.executeQuery();
            while (rs.next()) {
                listProduct.add(new DetailOrder(rs.getString("product_id"), rs.getString("product_name"), rs.getString("product_des"), rs.getInt("product_price"), rs.getString("discount_id"), new ProductDao().getImageUrl(rs.getString("product_id")),rs.getInt("quantity"), rs.getDate("createAt")));
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return listProduct;
    }

    public static void main(String[] args) {
        ArrayList<DetailOrder> list = new SearchOrderDao().getProductByOrder("OR02");
        for (DetailOrder a : list) {
            System.out.println(a.toString());
        }
//        System.out.println(new CategoryDao().countProduct("CA08"));
    }


}
