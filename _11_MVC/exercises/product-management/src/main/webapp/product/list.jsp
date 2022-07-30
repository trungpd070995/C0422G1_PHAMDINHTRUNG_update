<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 7/29/2022
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <style>
        h1 {
            text-align: center;
        }

        .container {
            margin: 20px 90px;
        }
    </style>

</head>
<body>
<div>
    <div class="container">

        <div>
            <h1>QUẢN LÝ BÁN HÀNG</h1>
        </div>

        <form action="/products">
            <input type="text" name="nameSearch" placeholder="Tìm Kiếm Theo Tên">
            <input type="submit" name="action" value="search">
        </form>

        <p>
            <a href="/products?action=create">Create new product</a>
        </p>

        <table class="table table-striped">
            <tr class="table-info">
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Describe</th>
                <th>Producer</th>
                <th>Create</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.id}</td>
                    <td><a href="/products?action=view&id=${product.id}">${product.name}</a></td>
                    <td>${product.price}</td>
                    <td>${product.describe}</td>
                    <td>${product.producer}</td>
                    <td><a class="btn btn-outline-info" href="/products?action=create">Create</a></td>
                    <td><a class="btn btn-outline-success" href="/products?action=edit&id=${product.id}">Edit</a></td>
                    <td><a class="btn btn-outline-danger" href="/products?action=delete&id=${product.id}">Delete</a>
                    </td>
                        <%--                    <td><a href="/products?action=edit&id=${product.id}">Edit</a></td>--%>
                        <%--                    <td><a href="/products?action=delete&id=${product.id}">Delete</a></td>--%>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
