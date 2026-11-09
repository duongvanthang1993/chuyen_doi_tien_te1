<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Ứng dụng Chuyển đổi Tiền tệ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            width: 360px;
        }
        h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 24px;
        }
        .form-group {
            margin-bottom: 16px;
        }
        label {
            display: block;
            margin-bottom: 6px;
            color: #555555;
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Chuyển đổi Tiền tệ</h2>
        <form action="converter.jsp" method="post">
            <div class="form-group">
                <label for="rate">Tỉ giá (VND/USD):</label>
                <input type="text" id="rate" name="rate" placeholder="Ví dụ: 25000" required>
            </div>
            <div class="form-group">
                <label for="usd">Lượng USD:</label>
                <input type="text" id="usd" name="usd" placeholder="Ví dụ: 100" required>
            </div>
            <input type="submit" value="Chuyển đổi">
        </form>
    </div>
</body>
</html>

