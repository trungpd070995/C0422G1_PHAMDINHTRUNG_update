<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
<%@include file="../include/header.jsp"%>
<div class="container-fluid">
    <div class="row">
        <div class="col-12 border border">
            <h3 style="text-align: center"> DANH SÁCH NHÂN VIÊN </h3>

            <table class="table text-center table-striped" id="table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Birthday</th>
                    <th>ID Card</th>
                    <th>Salary</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Position</th>
                    <th>Eduction Degree</th>
                    <th>Division</th>
                    <th>Username</th>
                    <th>Create</th>
                    <th>Edit</th>
                    <th>Delete</th>
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
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <a class="btn btn-outline-info"href="/view/employee/create.jsp">Create</a>
                    </td>
                    <td>
                        <a class="btn btn-outline-info"href="/view/employee/edit.jsp">Edit</a>
                    </td>
                    <td>
                        <button onclick="showInfoDelete('${id}','${name}')" type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Delete
                        </button>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="" method="post">
            <div class="modal-content">
                <div class="modal-header btn-danger">
                    <h5 class="modal-title" id="exampleModalLabel">Xác nhận xoá: </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body ">
                    <input type="text" name="deleteId" id="deleteId">
                    <span>Bạn có muốn xóa: </span><span id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    function showInfoDelete(id,name) {
        document.getElementById("deleteId").value= id;
        document.getElementById("deleteName").innerText=name;
    }
</script>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
