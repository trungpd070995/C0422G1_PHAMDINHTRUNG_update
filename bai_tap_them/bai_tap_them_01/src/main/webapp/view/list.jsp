<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/3/2022
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Class Student List</title>
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
            <h1>Class Student</h1>
        </div>
        <p>
            <a href="/classStudent?action=create">Create New Class Student</a>
        </p>

        <table class="table table-striped">
            <tr class="table-info">
                <th>ID</th>
                <th>Mã lớp học</th>
                <th>Tên lớp học</th>
                <th>Ngày Bắt Đầu</th>
            </tr>
            <c:forEach items="${classStudents}" var="classStudentt">
                <tr>
                    <td>${classStudentt.idClass}</td>
                    <td>${classStudentt.idCarClass}</td>
                    <td>${classStudentt.nameClass}</td>
                    <td>${classStudentt.starDayClass}</td>
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
