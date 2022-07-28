<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 7/28/2022
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>

<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    PrintWriter printWriter = response.getWriter();
    String search = request.getParameter("search");
    String result = dic.get(search);

    if (result != null) {
        printWriter.println("Word: " + search);
        printWriter.println("Result: " + result);
    } else {
        printWriter.println("Not found");
    }

%>

</body>
</html>
