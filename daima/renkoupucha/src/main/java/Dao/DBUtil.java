package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.sql.Statement;



public class DBUtil {
    @SuppressWarnings("deprecation")
	public static Connection getConnection() {
        
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        } catch (InstantiationException | IllegalAccessException
                | ClassNotFoundException e1) {
            e1.printStackTrace();
        } 
        
        String user = "root";
        String password = "123456";
        String url = "jdbc:mysql://localhost:3306/test?&useSSL=false&serverTimezone=UTC";
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
    public static void close(Connection connection) {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void close(PreparedStatement preparedStatement) {
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public static void close(ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
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
    	}
    	}

    	 



 
