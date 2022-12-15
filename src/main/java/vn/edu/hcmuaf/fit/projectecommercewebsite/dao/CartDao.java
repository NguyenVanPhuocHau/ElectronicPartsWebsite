package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Cart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.CartItem;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.User;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class CartDao {
    private static CartDao instance;
    static Connection conn;
    static PreparedStatement pre;
    static ResultSet rs;

    int count=0;

    public CartDao() {
    }

    public static CartDao getInstance() {
        if (instance == null) {
            instance = new CartDao();

        }
        return instance;
    }


    public void insertCart(String idUser, String idProduct, int amount) throws SQLException {
        Statement statement = DBconnect.getInstance().get();

        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);

        String sql = "INSERT INTO cart (user_id,product_id,amount) VALUES ('TK" + idUser + "','" + idProduct + "','" + amount + "');";
        statement.executeUpdate(sql);
    }

    public void removetCart(String idUser, String idProduct) throws SQLException {
        Statement statement = DBconnect.getInstance().get();

        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);

        String sql = "delete from cart where user_id =" + idUser + " AND product_id=" + idProduct;
        statement.executeUpdate(sql);
    }
//    public List<CartItem> getListCartItemById(String id) throws SQLException {
//        try {
//            String SQL = "SELECT TOP 10 * FROM Person.Contact";
//            ResultSet rs = statement.executeQuery(SQL);
//
//            // Iterate through the data in the result set and display it.
//            while (rs.next()) {
//                System.out.println(rs.getString("FirstName") + " " + rs.getString("LastName"));
//            }
//            List<CartItem> re = DbConnector.get().withHandle(h -> h.createQuery("select * from cart where user_id= :user_id")
//                    .bind("user_id",id)
//                    .mapToBean(CartItem.class)
//                    .stream().collect(Collectors.toList()));
//            System.out.println(re.size());
//            return re;
//        } catch (Exception exception) {
//            System.out.println(exception);
//            return null;
//
//        }
//    }

    public ArrayList<CartItem> getListCartItemById(String id) {
        ArrayList<CartItem> listProduct = new ArrayList<>();
        Statement statement = DBconnect.getInstance().get();
        if (statement == null) return null;
        String sql = "select * from cart where user_id=" + id;
        ResultSet rs = null;
        try {
            rs = statement.executeQuery(sql);
            while (rs.next()) {
                listProduct.add(new CartItem(rs.getString(1),rs.getString(2),rs.getInt(3)));
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        return listProduct;

    }

    public Map<String, Product> getCart(String idUser){
        Map<String,Product> re = new HashMap<>();
        List<CartItem> list = getListCartItemById(idUser);
        for (CartItem c:list) {
            Product pd = ProductDao.getInstance().getProductById(c.getProduct_id());
//            pd.set(c.getC_amount_bought());
//            re.put(c.getProduct_id()+c.getSize()+c.getColor(),pd);
        }
        return re;
    }

}
