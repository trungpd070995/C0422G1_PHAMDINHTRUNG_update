<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/4/2022
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="col-lg-12 mr-20 mt-4" style="width: 100%">
        <div class="container-fluid">
            <div class="row">
                <h2 align="center">Edit Customer</h2>
                <form method="post">
                    <table class="table" cellpadding="5">
                        <tr>
                            <th>ID:</th>
                            <td>
                                <input type="text" name="id" value="${customer.id}" id="id" size="45" readonly>
                            </td>
                        </tr>
                        <tr>
                            <th>Customer Type:</th>
                            <td>
                                <select name="customerTypeID" id="customerTypeID">
                                    <option value="">Chọn loại khách</option>
                                    <c:forEach items="${customerTypeList}" var="customerType">
                                        <option value="${customerType.customerTypeId}">${customerType.customerTypeName}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Name:</th>
                            <td>
                                <input type="text" name="name" id="name" size="45" value="${customer.name}"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Birthday:</th>
                            <td>
                                <input type="date" name="birthDay" id="birthDay" size="45"
                                       value="${customer.birthDay}"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Gender:</th>
                            <td>
                                <select name="gender" id="gender">
                                    <option value="">Chọn giới tính</option>
                                    <c:if test="${customer.gender == 0}">
                                        <option value="0" selected>Female</option>
                                        <option value="1">Male</option>
                                    </c:if>
                                    <c:if test="${customer.gender == 1}">
                                        <option value="0">Female</option>
                                        <option value="1" selected>Male</option>
                                    </c:if>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <th>ID Card:</th>
                            <td>
                                <input type="text" name="idCard" id="idCard" size="45" value="${customer.idCard}"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Phone:</th>
                            <td>
                                <input type="text" name="phone" id="phone" size="45" value="${customer.phone}"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Email:</th>
                            <td>
                                <input type="text" name="email" id="email" size="45" value="${customer.email}"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Address:</th>
                            <td>
                                <input type="text" name="address" id="address" size="45" value="${customer.address}"/>

                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <a href="/customer">
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

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</body>
</html>
