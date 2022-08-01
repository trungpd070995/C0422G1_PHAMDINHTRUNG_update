<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/1/2022
  Time: 8:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View User</title>

</head>
<body>
<h1>User details</h1>
<p>
    <a href="/users">Back to User list</a>
</p>
<table>

    <tr>
        <td>ID:</td>
        <td>${user.id}</td>
    </tr>
    <tr>
        <td>Name:</td>
        <td><a href="/users?action=view&id=${user.id}">${user.name}</a></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>${user.email}</td>
    </tr>
    <tr>
        <td>Country:</td>
        <td>${user.country}</td>
    </tr>
</table>
</body>
</html>
