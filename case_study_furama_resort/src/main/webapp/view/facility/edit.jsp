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
                <form method="">

                    <table class="table" cellpadding="5">
                        <tr>
                            <th>Name:</th>
                            <td>
                                <input type="text" name="name" id="name" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Area:</th>
                            <td>
                                <input type="text" name="area" id="area" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Cost:</th>
                            <td>
                                <input type="text" name="cost" id="cost" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Max people:</th>
                            <td>
                                <input type="text" name="maxPeople" id="maxPeople" size="45"/>

                            </td>
                        </tr>
                        <tr>
                            <th>Rent type:</th>
                            <td>
                                <select name="rentTypeId">
                                    <option value="">Chọn kiểu thuê</option>

                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Facility type:</th>
                            <td>
                                <select name="facilityTypeId" id="facilityTypeId" >
                                    <option value="">Chọn loại dịch vụ</option>

                                </select>
                            </td>
                        </tr>

                        <tr hidden id="standardRoom">
                            <th>Standard Room:</th>
                            <td>
                                <input type="text" name="standardRoom"  size="45"/>

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
                        <tr hidden id="facilityFree">
                            <th>Facility Free:</th>
                            <td>
                                <input type="text" name="facilityFree" size="45"/>

                            </td>
                        </tr>
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
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
