package Dao;

import java.sql.*;
public class DBUtil {
    //eshop为数据库名称，db_user为数据库用户名db_password为数据库密码
    public static String db_url = "jdbc:mysql://localhost:3306/mytest?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT";
    public static String db_user = "root";
    public static String db_password = "123456";

    public static Connection getConn() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(db_url, db_user, db_password);
            System.out.println("连接成功");
        } catch (Exception e) {
            System.out.println("连接失败");
            e.printStackTrace();
        }
        return conn;
    }
    
    public static void close(Statement state, Connection conn) {
        if(state!=null) {
            try {
                state.close();
            } catch (SQLException e) {
                e.printStackTrace();    
            }
        }    
        if(conn!=null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public static void close(ResultSet rs, Statement state, Connection conn) {
        if(rs!=null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(state!=null) {
            try {
                state.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(conn!=null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}