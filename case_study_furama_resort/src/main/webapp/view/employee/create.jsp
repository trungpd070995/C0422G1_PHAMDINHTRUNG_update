<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Furama Resort</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        a:hover {
            font-weight: bold;
        }
    </style>

</head>
<body>
<div class="container">
    <div class="col-lg-12 mr-20 mt-4" style="width: 100%">
        <div class="container-fluid">
            <div class="row">
                <h2 align="center">THÊM MỚI NHÂN VIÊN</h2>
                <form method="post">

                    <table class="table" cellpadding="5">
                        <tr>
                            <th>Name:</th>
                            <td>
                                <input type="text" name="name" id="name" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Birthday:</th>
                            <td>
                                <input type="date" name="birthDay" id="birthDay" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>ID Card:</th>
                            <td>
                                <input type="text" name="idCard" id="idCard" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Salary:</th>
                            <td>
                                <input type="text" name="salary" id="salary" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Phone:</th>
                            <td>
                                <input type="text" name="phone" id="phone" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Email:</th>
                            <td>
                                <input type="text" name="email" id="email" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Address:</th>
                            <td>
                                <input type="text" name="address" id="address" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <td >
                                <a href="/view/employee/list.jsp">
                                    <button type="button" class="btn btn-primary">
                                        Back
                                    </button>
                                </a>
                            </td>
                            <td >
                                <button type="submit" class="btn btn-primary">
                                    Save
                                </button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>