package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Category;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;

import java.sql.*;
import java.util.ArrayList;

public class CategoryDao {
    private static CategoryDao instance;
    static Connection conn;
    static PreparedStatement pre;

    public CategoryDao() {

    }

    public static CategoryDao getInstance() {
        if (instance == null) {
            instance = new CategoryDao();
        }
        return instance;
    }

    public ArrayList<Category> getCategoryParent() {
        ArrayList<Category> listParent = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();

        if (statement == null) return null;
        String sql = "select * from category where id_parent=''";
        ResultSet rs = null;
        try {
            rs = statement.executeQuery(sql);
            while (rs.next()) {
                listParent.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4)));
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return listParent;

    }

    public ArrayList<Category> getCategory(String id_parent) {
        ArrayList<Category> listCategory = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();

        if (statement == null) return null;
        String sql = "select * from category where id_parent=?";
        conn = Connect.getConnect();
        ResultSet rs = null;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, id_parent);
            rs = pre.executeQuery();
            while (rs.next()) {
                listCategory.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4)));
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return listCategory;

    }

    public int countProduct(String id_parent) {
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return 0;
        String sql = "SELECT count(product_id) as count FROM product as pr join category as ca on pr.category_id=ca.category_id WHERE ca.category_id=?";
        conn = Connect.getConnect();
        ResultSet rs = null;
        try {
            int result = 0;
            pre = conn.prepareStatement(sql);
            pre.setString(1, id_parent);
            rs = pre.executeQuery();

            if (rs.next()) {
                result = rs.getInt("count");

            }
            return result;
        } catch (SQLException e) {
            return 0;
        }

    }

    public static void main(String[] args) {
//        ArrayList<Category> list = new CategoryDao().getCategory("CA01");
//        for(Category a: list){
//            System.out.println(a.toString());
//        }
        System.out.println(new CategoryDao().countProduct("CA08"));
    }


}
