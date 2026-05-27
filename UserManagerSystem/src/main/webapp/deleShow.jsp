<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>删除结果</title>
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
        h2 { color: #2c3e50; margin-bottom: 20px; font-size: 1.6em; }
        .result-card {
            background: #fdf2f2;
            border: 2px solid #f5d5d5;
            border-radius: 12px;
            padding: 25px;
            margin-bottom: 20px;
        }
        .success-icon { font-size: 3em; margin-bottom: 10px; }
        .result-text { color: #e74c3c; font-size: 1.1em; font-weight: 600; }
        .error-msg {
            background: #fdf2f2;
            border: 2px solid #f5d5d5;
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
        .btn-primary {
            background: linear-gradient(135deg, #4a90d9, #357abd);
            color: white;
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(74,144,217,0.3);
        }
        .btn-back { background: #f0f0f0; color: #555; }
        .btn-back:hover { background: #e0e0e0; transform: translateY(-2px); }
    </style>
</head>
<body>
    <div class="container">
        <h2>🗑️ 删除结果</h2>
        <%
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                Model model = new Model();
        %>
            <div class="result-card">
                <div class="success-icon">✅</div>
                <p class="result-text">删除完成！</p>
                <p style="color:#555;margin-top:10px;">影响行数：<%=model.delete(id)%></p>
            </div>
            <div class="btn-group">
                <a href="dele.jsp" class="btn btn-back">继续删除</a>
                <a href="allShow.jsp" class="btn btn-primary">📋 查看所有用户</a>
            </div>
        <%
            } catch (Exception e) {
        %>
            <div class="error-msg">
                <p>❌ 删除失败：<%=e.getMessage()%></p>
            </div>
            <div class="btn-group">
                <a href="dele.jsp" class="btn btn-back">返回重试</a>
                <a href="index.jsp" class="btn btn-back">🏠 返回主页</a>
            </div>
        <%
            }
        %>
    </div>
</body>
</html>