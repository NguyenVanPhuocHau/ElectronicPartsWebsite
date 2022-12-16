package vn.edu.hcmuaf.fit.projectecommercewebsite.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBconnect {
    public static DBconnect instance;
    private static String DB_URL="jdbc:mysql://localhost:3306/laptrinhweb";
    private static String USER="root";
    private static String PASS="";
    private Connection connection;
    private DBconnect(){

    }
    public static DBconnect getInstance(){
        if(instance==null){
            instance=new DBconnect();

        }
        return  instance;
    }
    private void connect() throws ClassNotFoundException ,SQLException{
        if(connection==null || connection.isClosed()){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection(DB_URL,USER,PASS);


        }
    }
    public Statement get(){
        try{
            connect();
//            System.out.println("Success");
            return  connection.createStatement();


        }catch(SQLException| ClassNotFoundException e){
            e.printStackTrace();
            return null;
        }
    }


}
