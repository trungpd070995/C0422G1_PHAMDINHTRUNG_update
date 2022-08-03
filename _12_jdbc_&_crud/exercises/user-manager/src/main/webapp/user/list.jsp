<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/1/2022
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
yy
</head>
<body>
<div class="border pd-3 container bg-light mt-5 border border-info">
    <center>
        <h1>User Management</h1>
        <%--        <h2>--%>
        <%--            <a href="/users?action=create">Add New User</a>--%>
        <%--        </h2>--%>
        <button class="btn btn-primary" type="submit">
            <a href="users?action=create" class="text-light" style="text-decoration: none">ADD NEW</a>
        </button>
    </center>

    <div align="center" class="container">
        <table class="table text-center table-success mt-3">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th colspan="3"></th>
                <th colspan="4">
                    <form method="post" action="/users?action=search">
                        <div class="input-group col-md-6">
                            <input type="text" name="countrySearch" placeholder="search" class="form-control">
                            <input type="submit" value="search" class="btn btn-outline-success">
                        </div>
                    </form>
                </th>
            </tr>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><a href="users?action=view&id=${user.id}">${user.name}</a></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.country}"/></td>
                    <td>
                            <%--                        <a href="users?action=edit&id=${user.id}">Edit</a>--%>

                        <a href="users?action=edit&id=${user.id}" class="text-success my" style="text-decoration: none">
                            <input class="btn btn-outline-success" type="submit" value="Edit">
                        </a>

                    </td>
                    <td>
                            <%--                        <a href="users?action=delete&id=${user.id}">Delete</a>--%>

                        <a href="users?action=delete&id=${user.id}" class="text-light"
                           style="text-decoration: none"><input class="btn btn-outline-danger" type="submit"
                                                                value="Delete">
                        </a>

                    </td>
                </tr>
            </c:forEach>
        </table>
        <%--        <a href="users?action=sort">Sắp xếp theo tên</a>--%>
        <div class="pb-3 ">
            <a href="users?action=sort" class="text-light" style="text-decoration: none">
                <button class="btn btn-outline-success" type="submit">Sắp xếp theo tên</button>
            </a>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

</body>
</html>
