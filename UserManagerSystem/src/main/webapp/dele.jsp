<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>删除用户</title>
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
            text-align: center;
            max-width: 450px;
            width: 90%;
        }
        h2 { color: #2c3e50; margin-bottom: 10px; font-size: 1.6em; }
        .warning {
            color: #e74c3c;
            font-size: 0.9em;
            margin-bottom: 25px;
        }
        .form-group { margin-bottom: 20px; text-align: left; }
        label {
            display: block;
            color: #555;
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 0.95em;
        }
        input[type="text"] {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e0e5ec;
            border-radius: 10px;
            font-size: 1em;
            transition: border-color 0.3s;
            outline: none;
        }
        input:focus { border-color: #e74c3c; }
        .btn-group { display: flex; gap: 12px; margin-top: 25px; }
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
        .btn-danger {
            background: linear-gradient(135deg, #e74c3c, #c0392b);
            color: white;
        }
        .btn-danger:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(231,76,60,0.3);
        }
        .btn-back { background: #f0f0f0; color: #555; }
        .btn-back:hover { background: #e0e0e0; }
    </style>
</head>
<body>
    <div class="container">
        <h2>🗑️ 删除用户</h2>
        <p class="warning">⚠️ 此操作不可恢复，请谨慎操作！</p>
        <form action="deleShow.jsp" method="post">
            <div class="form-group">
                <label for="id">请输入要删除的用户ID：</label>
                <input type="text" id="id" name="id" placeholder="输入用户ID..." required>
            </div>
            <div class="btn-group">
                <a href="index.jsp" class="btn btn-back">返回主页</a>
                <button type="submit" class="btn btn-danger">确认删除</button>
            </div>
        </form>
    </div>
</body>
</html>