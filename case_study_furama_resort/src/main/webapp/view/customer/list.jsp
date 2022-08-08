<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Furama Resort</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css" />
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css" />
    <style>
        a:hover {
            font-weight: bold;
        }
    </style>

</head>
<body>
<%@include file="../include/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-12 border border">
            <h3 style="text-align: center"> DANH SÁCH KHÁCH HÀNG </h3>
            <div class="row" style="text-align: center">
                <h2>
                    <a href="/customer?action=create">
                        <button type="button" class="btn btn-primary">Add New Customer</button>
                    </a>
                </h2>
            </div>
            <form class="row g-3" action="/customer" method="get">
                <div class="col-auto">
                    <input type="text" hidden name="action" value="search">
                    <input type="text" class="form-control" name="keySearch" placeholder="Search Anything">
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-primary mb-3">Search</button>
                </div>
            </form>

            <table class="table table-success text-center table-striped" id="tableCustomer" style="width: 100%">
                <thead>
                <tr class="table-success">
                    <th>ID</th>
                    <th>Customer Type</th>
                    <th>Name</th>
                    <th>Birthday</th>
                    <th>Gender</th>
                    <th>ID Card</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customerList}">
                    <tr>

                        <td><c:out value="${customer.id}"/></td>

                        <c:forEach var="customerType" items="${customerTypeList}">
                            <c:if test="${customerType.customerTypeId == customer.customerTypeID}">
                                <td>
                                    <c:out value="${customerType.customerTypeName}"/>
                                </td>
                            </c:if>
                        </c:forEach>

                        <td><c:out value="${customer.name}"/></td>
                        <td><c:out value="${customer.birthDay}"/></td>

                        <c:if test="${customer.gender == 1}">
                            <td>Male</td>
                        </c:if>
                        <c:if test="${customer.gender == 0}">
                            <td>Female</td>
                        </c:if>

                        <td><c:out value="${customer.idCard}"/></td>
                        <td><c:out value="${customer.phone}"/></td>
                        <td><c:out value="${customer.email}"/></td>
                        <td><c:out value="${customer.address}"/></td>
                        <td>
                            <a href="/customer?action=edit&id=${customer.id}">
                                <button type="button" class="btn btn-primary">Edit</button>
                            </a>
                        </td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-danger"
                                    onclick="infoDelete('${customer.id}','${customer.name}')"
                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!--DELETE - Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/customer" method="post">
            <div class="modal-content">
                <div class="modal-header btn-danger">
                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden name="idDelete" id="idDelete">
                    <input type="text" hidden name="action" value="delete">
                    <span>Bạn có muốn xóa khách hàng: </span>
                    <span id="nameDelete"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </div>
        </form>
    </div>
</div>

<%--Delete Modal--%>
<script>
    function infoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tableCustomer').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        } );
    } );
</script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</body>
</html>