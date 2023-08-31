package jinding;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {

	public DBUtil() {
		// TODO Auto-generated constructor stub
	}
	 private static String url = "jdbc:mysql://localhost:3306/jinding?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
	    private static String user = "root";
	    private static String password = "123456";
	    private static String jdbcName="com.mysql.cj.jdbc.Driver";
	    private Connection con=null;
	    public static  Connection getConnection() {
	        Connection con=null;
	        try {
	            Class.forName(jdbcName);
	            con=DriverManager.getConnection(url, user, password);
	            System.out.println("连接正常");
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            System.out.println("连接失败");
	            e.printStackTrace();
	        }
	        try {
	            con = DriverManager.getConnection(url,user,password);
	            System.out.println("连接成功");


	        } catch (SQLException e) {
	            // TODO: handle exception
	            e.printStackTrace();
	        }
	        return con;
	    }
	    public static void main(String[] args)throws SQLException { 
	    	Connection conn = getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql ="select * from gongwen";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println(getConnection());
			while(rs.next()){
				System.out.println("正常");
			}

	    	}

	       // return con;
	        
	    
	    public static void close(Connection con) {
	        if(con!=null)
	            try {
	                con.close();
	            } catch (SQLException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        
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
