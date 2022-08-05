<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 4:49 PM
  To change this template use File | Settings | File Templates.
--%>
<
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> List Contract</title>
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
                        <!-- Button Modal thêm mới hợp đồng -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            +
                        </button>
                    </td>
                    <td>

                        <!-- Button Modal DS dịch vụ đi kèm -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal-1">
                            DS Dịch vụ đi kèm
                        </button>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>


<!-- Modal Thêm mới hợp đồng-->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Dịch vụ đi kèm</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="col-lg-10 mt-4 mr-20" style="width: 100%">
                        <div class="container-fluid">
                            <div class="row">
                                <h2 align="center">Thêm mới hợp đồng</h2>
                                <form method="post">
                                    <table class="table" cellpadding="5">
                                        <tr>
                                            <th>Ngày bắt đầu:</th>
                                            <td>
                                                <input type="date" name="startDate" id="startDate" size="45"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Ngày kết thúc:</th>
                                            <td>
                                                <input type="date" name="endDate" id="endDate" size="45"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Tiền đặt cọc:</th>
                                            <td>
                                                <input type="text" name="deposit" id="deposit" size="45"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>Nhân viên làm hợp đồng:</th>
                                            <td>
                                                <select name="positionId" id="positionId">
                                                    <option value="">Chọn nhân viên</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Khách hàng thuê dịch vụ:</th>
                                            <td>
                                                <select name="educationDegreeId" id="educationDegreeId">
                                                    <option value="">Chọn khách hàng</option>

                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Loại dịch vụ:</th>
                                            <td>
                                                <select name="divisionId" id="divisionId">
                                                    <option value="">Chọn dịch vụ</option>

                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <a href="/view/contract/list.jsp">
                                                    <button type="button" class="btn btn-primary">
                                                        Back
                                                    </button>
                                                </a>
                                            </td>
                                            <td align="left">
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
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">HUỶ BỎ</button>
                <button type="button" class="btn btn-primary">TẠO HỢP ĐỒNG</button>
            </div>
        </div>
    </div>
</div>


<!-- Modal Danh sách dịch vụ đi kèm-->
<div class="modal fade" id="exampleModal-1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel-1">Dịch vụ</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h3 style="text-align: center"> BẢNG DỊCH VỤ ĐI KÈM</h3>
                <table class="table text-center table-striped" id="table-facility">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Cost</th>
                        <th>Unit</th>
                        <th>Status</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
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
