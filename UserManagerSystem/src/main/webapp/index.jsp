<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户综合管理系统 - 主界面</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
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
            border-radius: 20px;
            padding: 50px 40px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 650px;
            width: 90%;
        }
        .header-icon {
            font-size: 3.5em;
            margin-bottom: 10px;
        }
        h1 {
            color: #2c3e50;
            margin-bottom: 8px;
            font-size: 2em;
            letter-spacing: 2px;
        }
        .subtitle {
            color: #7f8c8d;
            margin-bottom: 35px;
            font-size: 1.05em;
        }
        .divider {
            width: 60px;
            height: 4px;
            background: #4a90d9;
            margin: 0 auto 30px;
            border-radius: 2px;
        }
        .nav-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 18px;
            margin-bottom: 30px;
        }
        .nav-card {
            background: rgba(255, 255, 255, 0.75);
            color: #2c3e50;
            text-decoration: none;
            padding: 25px 15px;
            border-radius: 12px;
            border: 2px solid #e8ecf1;
            transition: all 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
        }
        .nav-card:hover {
            border-color: #4a90d9;
            background: rgba(240, 246, 255, 0.85);
            transform: translateY(-4px);
            box-shadow: 0 10px 25px rgba(74, 144, 217, 0.2);
        }
        .nav-card .icon {
            font-size: 2.2em;
        }
        .nav-card .label {
            font-size: 1.05em;
            font-weight: 600;
        }
        .nav-card .desc {
            font-size: 0.8em;
            color: #95a5a6;
        }
        .full-width {
            grid-column: 1 / -1;
            background: rgba(74, 144, 217, 0.75);
            color: white;
            border: none;
        }
        .full-width:hover {
            background: rgba(53, 122, 189, 0.85);
            color: white;
        }
        .full-width .desc {
            color: rgba(255,255,255,0.8);
        }
        .footer {
            color: #b0b0b0;
            font-size: 0.85em;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header-icon">👥</div>
        <h1>用户综合管理系统</h1>
        <p class="subtitle">User Management System</p>
        <div class="divider"></div>
        
        <div class="nav-grid">
            <a href="search.jsp" class="nav-card">
                <span class="icon">🔍</span>
                <span class="label">查询用户</span>
                <span class="desc">按用户ID查找</span>
            </a>
            
            <a href="insert.jsp" class="nav-card">
                <span class="icon">➕</span>
                <span class="label">新增用户</span>
                <span class="desc">添加用户信息</span>
            </a>
            
            <a href="update.jsp" class="nav-card">
                <span class="icon">✏️</span>
                <span class="label">更新用户</span>
                <span class="desc">修改用户信息</span>
            </a>
            
            <a href="dele.jsp" class="nav-card">
                <span class="icon">🗑️</span>
                <span class="label">删除用户</span>
                <span class="desc">移除用户记录</span>
            </a>
            
            <a href="allShow.jsp" class="nav-card full-width">
                <span class="icon">📋</span>
                <span class="label">显示全部用户</span>
                <span class="desc">浏览所有用户数据</span>
            </a>
        </div>
        
        <p class="footer">© 2026 实验五 · 面向对象软件案例分析与开发</p>
    </div>
</body>
</html>