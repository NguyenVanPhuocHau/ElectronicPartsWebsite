package vn.edu.hcmuaf.fit.projectecommercewebsite.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConnection {
    private static GetConnection getConnection;
    private static Connection con;
    private GetConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/laptrinhweb1";
        String username = "root";
        String password = "";
        con = DriverManager.getConnection(url,username,password);
    }
    public static GetConnection getInstance() throws SQLException, ClassNotFoundException {
        if(getConnection==null)
            getConnection = new GetConnection();
        return getConnection;
    }
    public static Connection getCon() throws SQLException, ClassNotFoundException {
        getInstance();
        return con;
    }

    public static void main(String[] args) {
        try {
            GetConnection getCon = GetConnection.getInstance();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
