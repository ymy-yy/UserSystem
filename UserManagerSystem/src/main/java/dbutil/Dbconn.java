package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbconn {
    
    private Connection conn;
    
    public Connection getConnection() throws SQLException {
        try {
            // MySQL 8.x 驱动（注意有 .cj.）
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // 连接URL
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mydatabase?useSSL=false&serverTimezone=UTC&characterEncoding=utf8", 
                "root", 
                "xsq!@123"
            );
            
            // 测试连接是否成功
            if (conn != null) {
                System.out.println("数据库连接成功！");
            }
            
        } catch (ClassNotFoundException e) {
            System.out.println("驱动类未找到！请检查jar包是否添加");
            e.printStackTrace();
        }
        return conn;
    }
    
    public void closeAll(Connection conn, Statement stat, ResultSet rs) {
        if (rs != null) {
            try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
        if (stat != null) {
            try { stat.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
        if (conn != null) {
            try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}