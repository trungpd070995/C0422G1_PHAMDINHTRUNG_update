<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 7/29/2022
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/customers" >Back to customer list</a>
</p>
<table>
    <tr>
        <td>ID: </td>
        <td>${customer.id}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${customer.name}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${customer.email}</td>
    </tr>
    <tr>
        <td>Address: </td>
        <td>${customer.address}</td>
    </tr>
</table>
</body>
</html>
