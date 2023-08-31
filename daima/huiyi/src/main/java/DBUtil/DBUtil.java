package DBUtil;

import java.sql.*;

/**
 * ���ݿ����ӹ���
 * @author Hu
 *
 */
public class DBUtil {
    
    public static String url =  "jdbc:mysql://localhost:3306/huiyi?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT";
    public static String user = "root";
    public static String password = "123456";
    
    public static Connection getConn () {
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");//��������
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return conn;
    }
    
    /**
     * �ر�����
     * @param state
     * @param conn
     */
    public static void close (PreparedStatement preparedState, Connection conn) {
        if (preparedState != null) {
            try {
                preparedState.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public static void close (ResultSet rs, PreparedStatement preparedState, Connection conn) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        if (preparedState != null) {
            try {
                preparedState.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * �ر�����
     * @param state
     * @param conn
     */
    public static void close (Statement state, Connection conn) {
        if (state != null) {
            try {
                state.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public static void close (ResultSet rs, Statement state, Connection conn) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        if (state != null) {
            try {
                state.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public static void main(String[] args) throws SQLException {
        Connection conn = getConn();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String sql ="select * from xuanke";
        preparedStatement = conn.prepareStatement(sql);
        rs = preparedStatement.executeQuery();
        if(rs.next()){
            System.out.println("���ݿ�Ϊ��");
        }
        else{
            System.out.println("���ݿⲻΪ��");
        }
    }
}