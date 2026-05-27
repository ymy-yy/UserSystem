<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新增用户</title>
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
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 25px;
            font-size: 1.6em;
        }
        .form-group {
            margin-bottom: 18px;
        }
        label {
            display: block;
            color: #555;
            font-weight: 600;
            margin-bottom: 6px;
            font-size: 0.95em;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 11px 14px;
            border: 2px solid #e0e5ec;
            border-radius: 10px;
            font-size: 0.95em;
            transition: border-color 0.3s;
            outline: none;
        }
        input:focus { border-color: #4a90d9; }
        .btn-group {
            display: flex;
            gap: 12px;
            margin-top: 25px;
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
        .btn-back:hover { background: #e0e0e0; }
    </style>
</head>
<body>
    <div class="container">
        <h2>➕ 新增用户</h2>
        <form action="insertShow.jsp" method="post">
            <div class="form-group">
                <label>用户ID：</label>
                <input type="text" name="id" placeholder="请输入用户ID" required>
            </div>
            <div class="form-group">
                <label>姓名：</label>
                <input type="text" name="name" placeholder="请输入姓名" required>
            </div>
            <div class="form-group">
                <label>密码：</label>
                <input type="password" name="password" placeholder="请输入密码" required>
            </div>
            <div class="form-group">
                <label>邮箱：</label>
                <input type="text" name="email" placeholder="请输入邮箱" required>
            </div>
            <div class="btn-group">
                <a href="index.jsp" class="btn btn-back">返回主页</a>
                <button type="submit" class="btn btn-primary">确认新增</button>
            </div>
        </form>
    </div>
</body>
</html>