<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/3/2022
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Class</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Create New Class</h1>
<p>
    <c:if test='${message != null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/classStudent">Back to Class Student list</a>
</p>
<form method="post" >
    <fieldset>
        <legend>Class information</legend>
        <table>
            <tr>
                <td>Mã Lớp Học:</td>
                <td><input type="text" name="idCarClass" id="idCarClass"></td>
            </tr>

            <tr>
                <td>Tên Lớp Học:</td>
                <td><input type="text" name="nameClass" id="nameClass"></td>
            </tr>

            <tr>
                <td>Ngày Bắt Đầu:</td>
                <td><input type="text" name="starDayClass" id="starDayClass"></td>
            </tr>

            <tr>
                <td>
                    <input type="submit" value="Create">
                </td>
            </tr>
        </table>

    </fieldset>
</form>
</body>
</html>
