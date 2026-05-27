<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>数据库连接测试</title>
</head>
<body>
    <h2>数据库连接测试</h2>
    <%
        try {
            out.println("1. 正在加载驱动...<br>");
            Class.forName("com.mysql.cj.jdbc.Driver");
            out.println("   ✓ 驱动加载成功<br>");
            
            out.println("2. 正在连接数据库...<br>");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mydatabase?useSSL=false&serverTimezone=UTC&characterEncoding=utf8&allowPublicKeyRetrieval=true", 
                "root", 
                "xsq!@123"
            );
            out.println("   ✓ 数据库连接成功！<br>");
            
            out.println("3. 正在查询数据...<br>");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM user");
            
            int count = 0;
            out.println("<table border='1'>");
            out.println("<tr><th>ID</th><th>姓名</th><th>密码</th></tr>");
            while (rs.next()) {
                count++;
                out.println("<tr>");
                out.println("<td>" + rs.getInt("Id") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("password") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("<p>共查询到 " + count + " 条记录</p>");
            
            rs.close();
            stmt.close();
            conn.close();
            
        } catch (ClassNotFoundException e) {
            out.println("<p style='color:red'>✗ 错误：找不到MySQL驱动！</p>");
        } catch (SQLException e) {
            out.println("<p style='color:red'>✗ 数据库连接失败！</p>");
            out.println("<p>错误信息：" + e.getMessage() + "</p>");
        }
    %>
</body>
</html>