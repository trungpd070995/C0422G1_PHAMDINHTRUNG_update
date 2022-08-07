<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Facility</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css" />
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css" />
    <style>

        .row {
            box-sizing: border-box;
        }

    </style>
</head>

<body>

<%@include file="../include/header.jsp" %>

<div class="container-fluid">
    <div class="row">
        <caption><h2 align="center">DANH SÁCH DỊCH VỤ</h2></caption>
        <div class="row" style="text-align: center">
            <h2>
                <a href="/facility?action=create">
                    <button type="button" class="btn btn-primary">Add New Facility</button>
                </a>
            </h2>
        </div>
        <form class="row g-3" action="/facility" method="get">
            <div class="col-auto">
                <input type="text" hidden name="action" value="search">
                <input type="text" class="form-control" name="keySearch" placeholder="Search Anything">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary mb-3">Search</button>
            </div>
        </form>
        <table class="table table-striped table-bordered" id="tableFacility" style="width:100%">
            <thead>
            <tr class="table-success">
                <th>ID</th>
                <th>Name</th>
                <th>Area</th>
                <th>Cost</th>
                <th>MaxPeople</th>
                <th>rentType</th>
                <th>facilityType</th>
                <th>standardRoom</th>
                <th>otherDescription</th>
                <th>poolArea</th>
                <th>numberFloor</th>
                <th>facilityFree</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="facility" items="${facilityList}">
                <c:if test="${facility.facilityTypeId == 1}">
                    <tr>
                        <td><c:out value="${facility.id}"/></td>
                        <td><c:out value="${facility.name}"/></td>
                        <td><c:out value="${facility.area}"/></td>
                        <td><c:out value="${facility.cost}"/></td>
                        <td><c:out value="${facility.maxPeople}"/></td>
                        <c:forEach var="rentType" items="${rentTypeList}">
                            <c:if test="${rentType.rentTypeId == facility.rentTypeId}">
                                <td><c:out value="${rentType.rentTypeName}"/></td>
                            </c:if>
                        </c:forEach>
                        <c:forEach var="facilityType" items="${facilityTypeList}">
                            <c:if test="${facilityType.facilityTypeId == facility.facilityTypeId}">
                                <td><c:out value="${facilityType.facilityTypeName}"/></td>
                            </c:if>
                        </c:forEach>
                        <td><c:out value="${facility.standardRoom}"/></td>
                        <td><c:out value="${facility.otherDescription}"/></td>
                        <td><c:out value="${facility.poolArea}"/></td>
                        <td><c:out value="${facility.numberFloor}"/></td>
                        <td>N/A</td>

                        <td>
                            <a href="/facility?action=edit&id=${facility.id}">
                                <button type="button" class="btn btn-primary">Edit</button>
                            </a>
                        </td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary"
                                    onclick="infoDelete('${facility.id}','${facility.name}')"
                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:if>
                <c:if test="${facility.facilityTypeId == 2}">
                    <tr>
                        <td><c:out value="${facility.id}"/></td>
                        <td><c:out value="${facility.name}"/></td>
                        <td><c:out value="${facility.area}"/></td>
                        <td><c:out value="${facility.cost}"/></td>
                        <td><c:out value="${facility.maxPeople}"/></td>
                        <c:forEach var="rentType" items="${rentTypeList}">
                            <c:if test="${rentType.rentTypeId == facility.rentTypeId}">
                                <td><c:out value="${rentType.rentTypeName}"/></td>
                            </c:if>
                        </c:forEach>
                        <c:forEach var="facilityType" items="${facilityTypeList}">
                            <c:if test="${facilityType.facilityTypeId == facility.facilityTypeId}">
                                <td><c:out value="${facilityType.facilityTypeName}"/></td>
                            </c:if>
                        </c:forEach>
                        <td><c:out value="${facility.standardRoom}"/></td>
                        <td><c:out value="${facility.otherDescription}"/></td>
                        <td>N/A</td>
                        <td><c:out value="${facility.numberFloor}"/></td>
                        <td>N/A</td>

                        <td>
                            <a href="/facility?action=edit&id=${facility.id}">
                                <button type="button" class="btn btn-primary">Edit</button>
                            </a>
                        </td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary"
                                    onclick="infoDelete('${facility.id}','${facility.name}')"
                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:if>
                <c:if test="${facility.facilityTypeId == 3}">
                    <tr>
                        <td><c:out value="${facility.id}"/></td>
                        <td><c:out value="${facility.name}"/></td>
                        <td><c:out value="${facility.area}"/></td>
                        <td><c:out value="${facility.cost}"/></td>
                        <td><c:out value="${facility.maxPeople}"/></td>
                        <c:forEach var="rentType" items="${rentTypeList}">
                            <c:if test="${rentType.rentTypeId == facility.rentTypeId}">
                                <td><c:out value="${rentType.rentTypeName}"/></td>
                            </c:if>
                        </c:forEach>
                        <c:forEach var="facilityType" items="${facilityTypeList}">
                            <c:if test="${facilityType.facilityTypeId == facility.facilityTypeId}">
                                <td><c:out value="${facilityType.facilityTypeName}"/></td>
                            </c:if>
                        </c:forEach>
                        <td>N/A</td>
                        <td>N/A</td>
                        <td>N/A</td>
                        <td>N/A</td>
                        <td><c:out value="${facility.facilityFree}"/></td>
                        <td>
                            <a href="/facility?action=edit&id=${facility.id}">
                                <button type="button" class="btn btn-primary">Edit</button>
                            </a>
                        </td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary"
                                    onclick="infoDelete('${facility.id}','${facility.name}')"
                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/facility" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden name="idDelete" id="idDelete">
                    <input type="text" hidden name="action" value="delete">
                    <span>Bạn có muốn xóa dịch vụ : </span>
                    <span id="nameDelete"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    function infoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>

<%--Data Table phân trang--%>
<script>
    $(document).ready(function() {
        $('#tableFacility').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        } );
    } );
</script>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

</body>
</html>
