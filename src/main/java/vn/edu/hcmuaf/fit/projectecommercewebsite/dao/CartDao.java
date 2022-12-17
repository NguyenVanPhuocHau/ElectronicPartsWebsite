package vn.edu.hcmuaf.fit.projectecommercewebsite.dao;

import org.omg.Messaging.SyncScopeHelper;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.*;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.Connect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.DBconnect;
import vn.edu.hcmuaf.fit.projectecommercewebsite.connect.GetConnection;

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

    int count = 0;

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

    public boolean removeProductCart(String user_id, String product_id) {
        try {
            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "delete from cart where user_id=? and product_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user_id);
            ps.setString(2, product_id);
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


    public List<CartItem> getListCartItemByUserId(String id) {
        List<CartItem> result = new ArrayList<>();
        try {
            Connection con = GetConnection.getCon();
            String sql = "SELECT * FROM cart WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductCart p = ProductDao.getInstance().getProductById(rs.getString(2));
                result.add(new CartItem(p,rs.getInt(3)));
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

    public boolean insertCartItem(String user_id, String product_id, int quantity) {
        try {

            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "insert into cart(user_id,product_id,quantity) values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user_id);
            ps.setString(2, product_id);
            ps.setInt(3, quantity);
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

    public boolean updateQuantityCartItem(String user_id, String product_id, int quantity) {
        try {
            Connection con = GetConnection.getCon();
            //insert infor
            String sql = "update cart set quantity=? where user_id=? and product_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setString(2, user_id);
            ps.setString(3, product_id);
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

    public Map<String, CartItem> getCart(String idUser) {
        Map<String, CartItem> re = new HashMap<>();
        List<CartItem> list = getListCartItemByUserId(idUser);
        for (CartItem cartItem : list) {
            re.put(cartItem.getProduct().getProduct_id(), cartItem);
        }
        return re;
    }

    public static void main(String[] args) {
        Map<String, CartItem> list = getInstance().getCart("US02");
        for (CartItem i: list.values()
             ) {
            System.out.println(i.getProduct().toString());
        }
//        ProductCart productCart = ProductDao.getInstance().getProductById("PR01");
//        ProductCart productCart2 = ProductDao.getInstance().getProductById("PR03");
//        CartItem cartItem = new CartItem(productCart,1);
//        CartItem cartItem2 = new CartItem(productCart2,3);
//        Cart cart = new Cart();
//        cart.put(productCart);
//        Map<String,CartItem> list = new HashMap<>();
//        list.put(cartItem2.getProduct().getProduct_id(),cartItem2);
//        for (CartItem c: cart.getListCartItems()) {
//            if(list.containsKey(c.getProduct().getProduct_id())){
//                int num = c.getAmount_bought();
//                list.get(c.getProduct().getProduct_id()).upMoreQuantitySold(num);
//            }
//            else {
//                list.put(c.getProduct().getProduct_id(),c);
//            }
//        }
//        for (CartItem c: list.values()) {
//            System.out.println(c.getAmount_bought());
//        }
    }


}
