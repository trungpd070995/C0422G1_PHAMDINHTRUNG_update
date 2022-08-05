<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 4:49 PM
  To change this template use File | Settings | File Templates.
--%>
<<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%@include file="../include/header.jsp" %>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 border border">
            <h3 style="text-align: center"> DANH SÁCH KHÁCH HÀNG </h3>

            <table class="table text-center table-striped" id="table">
                <thead>
                <tr class="table-dark">
                    <th>ID</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Deposit</th>
                    <th>Employee</th>
                    <th>Customer</th>
                    <th>Facility</th>
                    <th>Create</th>
                    <th>Service</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <a class="btn btn-primary" href="/view/contract/create.jsp">+</a>
                    </td>
                    <td>
                        <a class="btn btn-primary" href="">DS Dịch vụ đi kèm</a>
                    </td>
                </tr>

                </tbody>
            </table>
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
