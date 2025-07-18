
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/projects/list">
  <button>Quay lại</button>
</a>
<form action="add" method="post">
  <label>Mã dự án:</label>
  <input type="number" name="id" required> <br><br>

  <label>Tên dự án:</label>
  <input type="text" name="name" required> <br><br>

  <label>Mô tả:</label>
  <input type="text" name="description" required> <br><br>

  <label>Đường dẫn ảnh:</label>
  <input type="text" name="image" required> <br><br>

  <button type="submit">Thêm dự án</button>
</form>
</body>
</html>
