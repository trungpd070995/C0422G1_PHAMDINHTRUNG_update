<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Contract</title>
</head>
<body>
<%@include file="../include/header.jsp" %>

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

</body>
</html>
