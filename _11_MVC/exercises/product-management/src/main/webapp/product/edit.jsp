<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 7/29/2022
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <style>

        .container {
            margin: 20px 90px;
            border: gray 1px dashed;
        }

        table {
            background-color: cadetblue;
        }
    </style>
</head>
<body>
<div>
    <div class="container">

        <h1>Edit Product</h1>
        <p>
            <c:if test='${message != null}'>
                <span class="message">${message}</span>
            </c:if>
        </p>
        <p>
            <a class="btn btn-outline-info" href="/products">Back to product list</a>
            <%--    <a href="/products">Back to product list</a>--%>
        </p>

        <form method="post">
            <fieldset>
                <legend>Product information</legend>
                <table>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" id="name" value="${product.name}"></td>
                    </tr>
                    <tr>
                        <td>Price:</td>
                        <td><input type="text" name="price" id="price" value="${product.price}"></td>
                    </tr>
                    <tr>
                        <td>Describe:</td>
                        <td><input type="text" name="describe" id="describe" value="${product.describe}"></td>
                    </tr>
                    <tr>
                        <td>Producer:</td>
                        <td><input type="text" name="producer" id="producer" value="${product.producer}"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input class="btn-outline-success" type="submit" value="Update product"></td>
                    </tr>
                </table>
            </fieldset>
        </form>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>

