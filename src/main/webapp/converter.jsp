<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Kết quả Chuyển đổi</title>
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
            width: 380px;
        }
        h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 24px;
        }
        .result-item {
            margin: 12px 0;
            font-size: 16px;
            color: #555555;
        }
        .result-item strong {
            color: #222222;
        }
        .highlight {
            color: #28a745;
            font-weight: bold;
            font-size: 18px;
        }
        .error {
            color: #dc3545;
            font-weight: bold;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 24px;
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Kết quả Chuyển đổi</h2>
        <%
            String rateParam = request.getParameter("rate");
            String usdParam = request.getParameter("usd");
            float rate = 0;
            float usd = 0;
            float vnd = 0;
            boolean hasError = false;

            if (rateParam != null && usdParam != null) {
                try {
                    // Ép kiểu sang số thực và tính toán
                    rate = Float.parseFloat(rateParam);
                    usd = Float.parseFloat(usdParam);
                    vnd = rate * usd;
                } catch (NumberFormatException e) {
                    hasError = true;
                }
            } else {
                hasError = true;
            }
        %>

        <% if (!hasError) { %>
            <div class="result-item">
                <strong>Tỉ giá:</strong> <%= rate %> VND/USD
            </div>
            <div class="result-item">
                <strong>Lượng USD:</strong> <%= usd %> USD
            </div>
            <div class="result-item">
                <strong>Thành tiền:</strong> <span class="highlight"><%= vnd %> VND</span>
            </div>
        <% } else { %>
            <p class="error">Vui lòng nhập tỉ giá và lượng USD hợp lệ từ trang chủ!</p>
        <% } %>

        <a href="index.jsp" class="back-link">Quay lại trang chủ</a>
    </div>
</body>
</html>

