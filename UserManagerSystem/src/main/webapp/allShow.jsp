<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>显示全部用户</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
body {
    font-family: 'Microsoft YaHei', Arial, sans-serif;
    background: url('<%=request.getContextPath()%>/images/index.jpg') no-repeat center center fixed;
    background-size: cover;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}
        .container {
            background: rgba(255, 255, 255, 0.55);
            border-radius: 16px;
            padding: 35px 30px;
            box-shadow: 0 15px 50px rgba(0,0,0,0.25);
            max-width: 800px;
            width: 100%;
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 10px;
            font-size: 1.6em;
        }
        .record-info {
            text-align: center;
            color: #7f8c8d;
            margin-bottom: 20px;
            font-size: 0.95em;
        }
        .no-data {
            text-align: center;
            color: #e74c3c;
            font-size: 1.1em;
            padding: 30px;
        }
        .error-msg {
            text-align: center;
            color: #e74c3c;
            font-size: 1em;
            padding: 30px;
            background: #fdf2f2;
            border-radius: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 15px 0 25px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
        }
        th {
            background: linear-gradient(135deg, #4a90d9, #357abd);
            color: white;
            padding: 14px 16px;
            font-size: 0.95em;
            text-align: center;
        }
        td {
            padding: 12px 16px;
            text-align: center;
            border-bottom: 1px solid #eef1f5;
            color: #2c3e50;
            font-size: 0.95em;
        }
        tr:hover td {
            background: #f0f6ff;
        }
        tr:last-child td {
            border-bottom: none;
        }
        .btn-back {
            display: inline-block;
            padding: 12px 30px;
            background: #f0f0f0;
            color: #555;
            text-decoration: none;
            border-radius: 10px;
            font-weight: 600;
            font-size: 0.95em;
            transition: all 0.3s;
            text-align: center;
        }
        .btn-back:hover {
            background: #e0e0e0;
            transform: translateY(-2px);
        }
        .btn-wrap {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>📋 全部用户信息</h2>
        <%
            try {
                Model model = new Model();
                ArrayList<User> arraylist = model.userSelect();
        %>
            <p class="record-info">查询到的记录数：<strong><%=arraylist.size()%></strong></p>
        <%
                if (arraylist.size() == 0) {
        %>
            <p class="no-data">📭 数据库中没有数据！</p>
        <%
                } else {
        %>
            <table>
                <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>密码</th>
                </tr>
                <%
                    for (int i = 0; i < arraylist.size(); i++) {
                %>
                <tr>
                    <td><%=arraylist.get(i).getId()%></td>
                    <td><%=arraylist.get(i).getName()%></td>
                    <td><%=arraylist.get(i).getPassword()%></td>
                </tr>
                <%
                    }
                %>
            </table>
        <%
                }
            } catch (Exception e) {
        %>
            <div class="error-msg">
                <p>❌ 错误：<%=e.getMessage()%></p>
            </div>
        <%
                e.printStackTrace();
            }
        %>
        <div class="btn-wrap">
            <a href="index.jsp" class="btn-back">🏠 返回主页</a>
        </div>
    </div>
</body>
</html>