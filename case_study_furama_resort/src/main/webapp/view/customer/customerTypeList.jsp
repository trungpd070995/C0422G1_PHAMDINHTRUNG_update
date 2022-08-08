<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/6/2022
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <h3 style="text-align: center">Customer Type</h3>
            <table class="table table-success text-center table-striped" id="tableCustomer" style="width: 100%">

                <tr class="bg-frm-darkblue">
                    <th scope="col" class="text-red">Customer Type ID</th>
                    <th scope="col" class="text-red">Customer Type Name</th>
                </tr>

                <c:forEach items="${customerTypeList}" var="customerType" varStatus="status">
                    <tr>
                        <td>${customerType.customerTypeId}</td>
                        <td>${customerType.customerTypeName}</td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>
</div>

</body>
</html>
