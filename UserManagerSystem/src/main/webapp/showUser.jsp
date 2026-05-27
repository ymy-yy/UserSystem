<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户详情</title>
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
            background: rgba(255, 255, 255, 0.25);
            border-radius: 16px;
            padding: 40px 35px;
            box-shadow: 0 15px 50px rgba(0,0,0,0.25);
            max-width: 500px;
            width: 90%;
            text-align: center;
        }
        h2 {
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 1.6em;
        }
        .user-card {
            background: #f8fafc;
            border-radius: 12px;
            padding: 25px;
            margin-bottom: 25px;
            border: 2px solid #e8ecf1;
        }
        .info-row {
            display: flex;
            justify-content: space-between;
            padding: 12px 0;
            border-bottom: 1px solid #eef1f5;
        }
        .info-row:last-child { border-bottom: none; }
        .info-label {
            color: #7f8c8d;
            font-weight: 600;
            font-size: 0.95em;
        }
        .info-value {
            color: #2c3e50;
            font-weight: 500;
            font-size: 0.95em;
        }
        .error-msg {
            background: #fdf2f2;
            color: #e74c3c;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .btn-group {
            display: flex;
            gap: 12px;
        }
        .btn {
            flex: 1;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            font-size: 1em;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            text-decoration: none;
            text-align: center;
            display: inline-block;
        }
        .btn-back { background: #f0f0f0; color: #555; }
        .btn-back:hover { background: #e0e0e0; transform: translateY(-2px); }
    </style>
</head>
<body>
    <div class="container">
        <h2>🔍 用户详情</h2>
        <%
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                Model model = new Model();
                User user = model.load(id);
        %>
            <div class="user-card">
                <div class="info-row">
                    <span class="info-label">用户ID</span>
                    <span class="info-value"><%=user.getId()%></span>
                </div>
                <div class="info-row">
                    <span class="info-label">姓名</span>
                    <span class="info-value"><%=user.getName()%></span>
                </div>
                <div class="info-row">
                    <span class="info-label">密码</span>
                    <span class="info-value"><%=user.getPassword()%></span>
                </div>
            </div>
        <%
            } catch (Exception e) {
        %>
            <div class="error-msg">
                <p>❌ 查询失败：<%=e.getMessage()%></p>
            </div>
        <%
            }
        %>
        <div class="btn-group">
            <a href="search.jsp" class="btn btn-back">🔍 继续查询</a>
            <a href="index.jsp" class="btn btn-back">🏠 返回主页</a>
        </div>
    </div>
</body>
</html>