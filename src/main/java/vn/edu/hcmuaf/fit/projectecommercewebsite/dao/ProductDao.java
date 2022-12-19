package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.ProductCart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static ProductDao instance;
    static Connection conn;
    static PreparedStatement pre;
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
    public ArrayList<Product> getProductNew() {
        ArrayList<Product> listProduct = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "SELECT * from laptrinhweb.product where createAt between (curdate()-7) and curdate()";
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
    public ArrayList<Product> getProductLast() {
        ArrayList<Product> listProduct = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "SELECT * from laptrinhweb.product where createAt between (curdate()-30) and (curdate()-15)";
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
        ResultSet rs=null;
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
    public Product getDetailProduct(String id_product) {
        Product result = null;
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "Select * FROM product WHERE product_id=?";
        conn = Connect.getConnect();
        ResultSet rs=null;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, id_product);
            rs = pre.executeQuery();
            while (rs.next()) {
                result = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(7), rs.getString(6), getImageUrl(rs.getString(1)), rs.getDate(8));

            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return result;

    }






    public ProductCart getProductById(String product_id) {
        try {
            ProductCart result = null;
            Connection con = GetConnection.getCon();
            String sql = "SELECT * FROM product WHERE product_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,product_id);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                result = new ProductCart(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6),rs.getString(7),getListImageUrl(rs.getString(1)),rs.getDate(8));
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

    public List<String> getListImageUrl(String product_id) {
        try {
            Connection con = GetConnection.getCon();
            List<String> listUrl = new ArrayList<String>();
            String sql = "SELECT * FROM image WHERE product_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,product_id);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                listUrl.add(rs.getString(3));
            }
            rs.close();
            ps.close();
            return listUrl;
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
//        ProductDao pr = new ProductDao();
//        ArrayList<Product> ps= pr.getProductLast();
//        String imageUrl= pr.getImageUrl("PR03");
//        System.out.println(imageUrl);

//        for(Product p : ps){
//            System.out.println(p.toString());
//        }
//        System.out.println(pr.getImageUrl("PR01"));

        ProductCart p = getInstance().getProductById("PR01");
        System.out.println(p.toString());


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
