<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 10:06 AM
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
                <h2 align="center">CHỈNH SỬA DỊCH VỤ</h2>
                <form method="post">
                    <table class="table" cellpadding="5">
                        <c:if test="${villa.facilityTypeId == 1}">
                            <tr>
                                <th>ID:</th>
                                <td>
                                    <input type="text" readonly name="id" value="${villa.id}" size="45"/>
                                </td>
                            </tr>
                            <tr>
                                <th>Name:</th>
                                <td>
                                    <input type="text" name="name" value="${villa.name}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Area:</th>
                                <td>
                                    <input type="text" name="area" value="${villa.area}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Cost:</th>
                                <td>
                                    <input type="text" name="cost" value="${villa.cost}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Max people:</th>
                                <td>
                                    <input type="text" name="maxPeople" value="${villa.maxPeople}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Rent type:</th>
                                <td>
                                    <select name="rentTypeId">
                                        <option value="">Chọn kiểu thuê</option>
                                        <c:forEach items="${rentTypeList}" var="rentType">
                                            <c:if test="${rentType.rentTypeId == villa.rentTypeId}">
                                                <option value="${rentType.rentTypeId}" selected>${rentType.rentTypeName}</option>
                                            </c:if>
                                            <c:if test="${rentType.rentTypeId != villa.rentTypeId}">
                                                <option value="${rentType.rentTypeId}">${rentType.rentTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>Facility type:</th>
                                <td>
                                    <select name="facilityTypeId" onchange="displayBonus(this)">
                                        <option value="">Chọn kiểu dịch vụ</option>
                                        <c:forEach items="${facilityTypeList}" var="facilityType">
                                            <c:if test="${facilityType.facilityTypeId == villa.facilityTypeId}">
                                                <option value="${facilityType.facilityTypeId}" selected>${facilityType.facilityTypeName}</option>
                                            </c:if>
                                            <c:if test="${facilityType.facilityTypeId != villa.facilityTypeId}">
                                                <option value="${facilityType.facilityTypeId}">${facilityType.facilityTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr id="standardRoom">
                                <th>Standard room:</th>
                                <td>
                                    <input type="text" name="standardRoom" value="${villa.standardRoom}" size="45"/>

                                </td>
                            </tr>
                            <tr id="otherDescription">
                                <th>Other Description:</th>
                                <td>
                                    <input type="text" name="otherDescription" value="${villa.otherDescription}" size="45"/>

                                </td>
                            </tr>
                            <tr id="poolArea">
                                <th>Pool area:</th>
                                <td>
                                    <input type="text" name="poolArea" value="${villa.poolArea}" size="45"/>

                                </td>
                            </tr>
                            <tr id="numberFloor">
                                <th>Number of floors:</th>
                                <td>
                                    <input type="text" name="numberFloor" value="${villa.numberFloor}" size="45"/>

                                </td>
                            </tr>
                            <tr hidden id="facilityFree">
                                <th>Facility Free:</th>
                                <td>
                                    <input type="text" name="facilityFree" size="45"/>

                                </td>
                            </tr>
                        </c:if>
                        <c:if test="${house.facilityTypeId == 2}">
                            <tr>
                                <th>ID:</th>
                                <td>
                                    <input type="text"  readonly name="id" value="${house.id}" size="45"/>
                                </td>
                            </tr>
                            <tr>
                                <th>Name:</th>
                                <td>
                                    <input type="text" name="name" value="${house.name}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Area:</th>
                                <td>
                                    <input type="text" name="area" value="${house.area}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Cost:</th>
                                <td>
                                    <input type="text" name="cost" value="${house.cost}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Max people:</th>
                                <td>
                                    <input type="text" name="maxPeople" value="${house.maxPeople}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Rent type:</th>
                                <td>
                                    <select name="rentTypeId">
                                        <option value="">Chọn kiểu thuê</option>
                                        <c:forEach items="${rentTypeList}" var="rentType">
                                            <c:if test="${rentType.rentTypeId == house.rentTypeId}">
                                                <option value="${rentType.rentTypeId}" selected>${rentType.rentTypeName}</option>
                                            </c:if>
                                            <c:if test="${rentType.rentTypeId != house.rentTypeId}">
                                                <option value="${rentType.rentTypeId}">${rentType.rentTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>Facility type:</th>
                                <td>
                                    <select name="facilityTypeId" onchange="displayBonus(this)">
                                        <option value="">Chọn kiểu dịch vụ</option>
                                        <c:forEach items="${facilityTypeList}" var="facilityType">
                                            <c:if test="${facilityType.facilityTypeId == house.facilityTypeId}">
                                                <option value="${facilityType.facilityTypeId}" selected>${facilityType.facilityTypeName}</option>
                                            </c:if>
                                            <c:if test="${rentType.facilityTypeId != house.facilityTypeId}">
                                                <option value="${facilityType.facilityTypeId}">${facilityType.facilityTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr id="standardRoom">
                                <th>Standard room:</th>
                                <td>
                                    <input type="text" name="standardRoom" value="${house.standardRoom}" size="45"/>

                                </td>
                            </tr>
                            <tr id="otherDescription">
                                <th>Other Description:</th>
                                <td>
                                    <input type="text" name="otherDescription" value="${house.otherDescription}" size="45"/>

                                </td>
                            </tr>
                            <tr hidden id="poolArea">
                                <th>Pool Area:</th>
                                <td>
                                    <input type="text" name="poolArea" size="45"/>

                                </td>
                            </tr>
                            <tr id="numberFloor">
                                <th>Number of floors:</th>
                                <td>
                                    <input type="text" name="numberFloor" value="${house.numberFloor}" size="45"/>

                                </td>
                            </tr>
                            <tr hidden id="facilityFree">
                                <th>Facility Free:</th>
                                <td>
                                    <input type="text" name="facilityFree" size="45"/>

                                </td>
                            </tr>
                        </c:if>
                        <c:if test="${room.facilityTypeId == 3}">
                            <tr>
                                <th>ID:</th>
                                <td>
                                    <input type="text"  readonly name="id" value="${room.id}" size="45"/>
                                </td>
                            </tr>
                            <tr>
                                <th>Name:</th>
                                <td>
                                    <input type="text" name="name" value="${room.name}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Area:</th>
                                <td>
                                    <input type="text" name="area" value="${room.area}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Cost:</th>
                                <td>
                                    <input type="text" name="cost" value="${room.cost}" size="45"/>

                                </td>
                            </tr>
                            <tr>
                                <th>Max people:</th>
                                <td>
                                    <input type="text" name="maxPeople" value="${room.maxPeople}" size="45"/>
                                    <p class="text-danger">${error.get("people")}</p>
                                </td>
                            </tr>
                            <tr>
                                <th>Rent type:</th>
                                <td>
                                    <select name="rentTypeId">
                                        <option value="">Chọn kiểu thuê</option>
                                        <c:forEach items="${rentTypeList}" var="rentType">
                                            <c:if test="${rentType.rentTypeId == room.rentTypeId}">
                                                <option value="${rentType.rentTypeId}" selected>${rentType.rentTypeName}</option>
                                            </c:if>
                                            <c:if test="${rentType.rentTypeId != room.rentTypeId}">
                                                <option value="${rentType.rentTypeId}">${rentType.rentTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>Facility type:</th>
                                <td>
                                    <select name="facilityTypeId" onchange="displayBonus(this)">
                                        <option value="">Chọn kiểu dịch vụ</option>
                                        <c:forEach items="${facilityTypeList}" var="facilityType">
                                            <c:if test="${facilityType.facilityTypeId == room.facilityTypeId}">
                                                <option value="${facilityType.facilityTypeId}" selected>${facilityType.facilityTypeName}</option>
                                            </c:if>
                                            <c:if test="${facilityType.facilityTypeId != room.facilityTypeId}">
                                                <option value="${facilityType.facilityTypeId}">${facilityType.facilityTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr hidden id="standardRoom">
                                <th>Standard Room:</th>
                                <td>
                                    <input type="text" name="standardRoom" size="45"/>

                                </td>
                            </tr>
                            <tr hidden id="otherDescription">
                                <th>Other Description:</th>
                                <td>
                                    <input type="text" name="otherDescription" size="45"/>

                                </td>
                            </tr>
                            <tr hidden id="poolArea">
                                <th>Pool Area:</th>
                                <td>
                                    <input type="text" name="poolArea" size="45"/>

                                </td>
                            </tr>
                            <tr hidden id="numberFloor">
                                <th>Number of Floors:</th>
                                <td>
                                    <input type="text" name="numberFloor" size="45"/>

                                </td>
                            </tr>
                            <tr id="facilityFree">
                                <th>Facility free:</th>
                                <td>
                                    <input type="text" name="facilityFree" value="${room.facilityFree}" size="45"/>

                                </td>
                            </tr>
                        </c:if>

                        <tr>
                            <td align="center">
                                <a href="/facility">
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
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
