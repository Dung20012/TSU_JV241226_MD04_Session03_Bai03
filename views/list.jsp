<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Danh sách Dự Án</h2>

<a href="/projects/add">
    <button>Thêm mới dự án</button>
</a>

<table border="1" cellpadding="10">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Description</th>
        <th>Image</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="p" items="${projects}">
    <tr>
        <td>${p.id}</td>
        <td>${p.name}</td>
        <td>${p.description}</td>
        <td><img src="${p.image}" alt="image" width="100"></td>
        <td>
            <a href="project/edit/${p.id}">Sửa</a>
            <a href="/projects/delete/${p.id}" onclick="return confirm('Bạn có chắc muốn xóa?');">Xóa</a>
        </td>
    </tr>
    </c:forEach>
</body>
</html>
