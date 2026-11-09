# Ứng Dụng Chuyển Đổi Tiền Tệ (JSP Currency Converter)

Dự án Java Webapp tiêu chuẩn sử dụng JSP và Maven, tương thích với máy chủ Apache Tomcat 10.1+ (Jakarta EE 10 / Servlet 6.0).

---

## 1. Cấu trúc thư mục

```text
jsp-currency-converter/
├── pom.xml
├── README.md
└── src/
    └── main/
        └── webapp/
            ├── WEB-INF/
            │   └── web.xml
            ├── index.jsp
            └── converter.jsp
```

---

## 2. Công nghệ sử dụng

- **Java**: 17+
- **Maven**: 3.x
- **Jakarta Servlet API**: 6.0.0
- **Jakarta JSP API**: 3.1.0
- **Jakarta JSTL**: 3.0.0
- **Web Server**: Apache Tomcat 10.1+

---

## 3. Các chức năng chính

### 3.1. Trang nhập liệu (`index.jsp`)
- Form nhập dữ liệu gửi bằng phương thức `POST` tới `converter.jsp`.
- Các trường nhập liệu:
  - `rate`: Tỉ giá (VND/USD)
  - `usd`: Lượng USD cần đổi
  - Nút chuyển đổi

### 3.2. Trang xử lý & hiển thị (`converter.jsp`)
- **JSP Scriptlet (`<% %>`)**:
  ```jsp
  <%
      float rate = Float.parseFloat(request.getParameter("rate"));
      float usd = Float.parseFloat(request.getParameter("usd"));
      float vnd = rate * usd;
  %>
  ```
- **JSP Expression (`<%= %>`)**:
  - In trực tiếp giá trị `<%= rate %>`, `<%= usd %>`, `<%= vnd %>` ra giao diện HTML.

---

## 4. Hướng dẫn cài đặt và chạy dự án

### Cách 1: Đóng gói WAR và deploy lên Tomcat độc lập
1. Mở terminal tại thư mục gốc của dự án:
   ```bash
   mvn clean package
   ```
2. Lấy file `target/jsp-currency-converter.war` sao chép vào thư mục `webapps/` của Apache Tomcat 10.1+.
3. Khởi động Tomcat:
   - Windows: Chạy file `bin/startup.bat`
   - Linux/macOS: Chạy lệnh `bin/startup.sh`
4. Mở trình duyệt và truy cập:
   ```
   http://localhost:8080/jsp-currency-converter/
   ```

### Cách 2: Chạy trực tiếp từ IntelliJ IDEA Ultimate
1. Mở dự án trong IntelliJ IDEA (`Open` -> chọn thư mục dự án).
2. Vào **Run** -> **Edit Configurations...**
3. Bấm **+** -> Chọn **Tomcat Server** -> **Local**.
4. Chọn đường dẫn tới thư mục cài đặt **Tomcat 10.1+**.
5. Chuyển sang tab **Deployment**:
   - Bấm **+** -> Chọn **Artifact...** -> chọn `jsp-currency-converter:war exploded`.
   - Đặt Application context: `/` hoặc `/jsp-currency-converter`.
6. Nhấn **Apply** -> **OK** rồi bấm **Run (Shift + F10)**.

### Cách 3: Sử dụng Smart Tomcat Plugin (IntelliJ Community / Ultimate)
1. Cài đặt plugin **Smart Tomcat** từ JetBrains Marketplace.
2. Vào **Run** -> **Edit Configurations...** -> bấm **+** -> chọn **Smart Tomcat**.
3. Cấu hình:
   - **Tomcat Server**: Trỏ tới thư mục Tomcat 10.1+.
   - **Deployment Directory**: `src/main/webapp`
   - **Context Path**: `/jsp-currency-converter` (hoặc `/`)
4. Bấm **Run** để khởi chạy.

