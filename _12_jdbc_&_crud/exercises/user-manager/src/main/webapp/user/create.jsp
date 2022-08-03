<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/1/2022
  Time: 8:01 PM
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

    <link rel="stylesheet" href="style-user.css">
    <style>
        .form-floating {
            width: 70%;
        }
    </style>

</head>
<body>
<div class="border pd-3 container bg-light mt-5">
    <center>
        <h1>User Management</h1>

        <button class="btn btn-primary" type="submit">
            <a href="users?action=users" class="text-light" style="text-decoration: none">List All Users</a>
        </button>

    </center>
    <div align="center">
        <form method="post" class="form-floating">

            <caption>
                <h2>Add New User</h2>
            </caption>
            <div class="form-floating p-2">
                <input type="text" class="form-control" id="name" name="name" placeholder="name" size="50">
                <label for="name">Name</label>
            </div>

            <div class="form-floating p-2">
                <input type="text" class="form-control" id="email" name="email" placeholder="email" size="50">
                <label for="email">Email</label>
            </div>

            <div class="form-floating p-2">
                <input type="text" class="form-control" id="country" name="country" placeholder="country" size="50">
                <label for="country">Country</label>
            </div>
            <div>
<%--                                <input type="submit" value="Save"/>--%>
                <button class="btn btn-primary" type="submit" value="Save">SAVE</button>
            </div>


            <%--            <table border="1" cellpadding="5">--%>
            <%--            <tr>--%>
            <%--                <th>User Name:</th>--%>
            <%--                <td>--%>
            <%--                    <input type="text" name="name" id="name" size="45"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <th>User Email:</th>--%>
            <%--                <td>--%>
            <%--                    <input type="text" name="email" id="email" size="45"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <th>Country:</th>--%>
            <%--                <td>--%>
            <%--                    <input type="text" name="country" id="country" size="15"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td colspan="2" align="center">--%>
            <%--                    <input type="submit" value="Save"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            </table>--%>
        </form>
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
