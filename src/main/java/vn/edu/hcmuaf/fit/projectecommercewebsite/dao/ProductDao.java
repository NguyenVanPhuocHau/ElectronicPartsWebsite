package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;

import java.sql.*;
import java.util.ArrayList;

public class ProductDao {
    private static ProductDao instance;
    static Connection conn;
    static PreparedStatement pre;
    static ResultSet rs;
    int count = 0;

    public ProductDao() {
    }

    public static ProductDao getInstance() {
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }

    public ArrayList<Product> getProduct() {
        ArrayList<Product> listProduct = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "select * from product";
        ResultSet rs = null;
        try {
            rs = statement.executeQuery(sql);
            while (rs.next()) {
                listProduct.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(7), rs.getString(6), getImageUrl(rs.getString(1)), rs.getDate(8)));
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return listProduct;

    }

    public ArrayList<Product> filterProduct(String category) {
        ArrayList<Product> listProduct = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "SELECT * FROM product  where category_id=?";
        conn = Connect.getConnect();
        ResultSet rs = null;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, category);
            rs = pre.executeQuery();
            while (rs.next()) {
                listProduct.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(7), rs.getString(6), getImageUrl(rs.getString(1)), rs.getDate(8)));
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return listProduct;
    }

    public String getImageUrl(String id_product) {
        String result = "";
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "Select image.image_url FROM image WHERE product_id=?";
        conn = Connect.getConnect();
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, id_product);
            rs = pre.executeQuery();
            while (rs.next()) {
                result = rs.getString("image_url");

            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return result;

    }


    public static void main(String[] args) {
//        ArrayList<Product> products = new ArrayList<>();
//        Statement statement = DBconnect.getInstance().get();
//        String sql = "SELECT * FROM product as pr join category as ca on pr.category_id=ca.category_id where ca.category_name='iphone'";
//        ResultSet rs = null;
//        try {
//            rs = statement.executeQuery(sql);
//            while (rs.next()) {
//                System.out.println(rs.getString(1)+rs.getString(2)+rs.getString(3)+rs.getInt(4)+rs.getString(5)+rs.getString(6)+rs.getString(7)+rs.getDate(8));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
        ProductDao pr = new ProductDao();
        ArrayList<Product> ps= pr.filterProduct("CA09");
//        String imageUrl= pr.getImageUrl("PR03");
//        System.out.println(imageUrl);

        for(Product p : ps){
            System.out.println(p.toString());
        }
        System.out.println(pr.getImageUrl("PR01"));


//        ArrayList<Product> listProduct = new ArrayList<>();
//        Statement statement = DBconnect.getInstance().get();
//        String sql = "SELECT * FROM product as pr join category as ca on pr.category_id=ca.category_id where ca.category_name='iphone'";
//        ResultSet rs = null;
//        try {
//            rs = statement.executeQuery(sql);
//            while (rs.next()) {
//
//                listProduct.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(7), rs.getString(6), new ProductDao().getImageUrl(rs.getString(1)), rs.getDate(8)));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//
//        }
//
//
//
//
//        for (Product p : listProduct) {
//            System.out.println(p.toString());
//        }

    }
}
