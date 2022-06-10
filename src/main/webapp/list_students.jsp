<%--
  Created by IntelliJ IDEA.
  User: Isite
  Date: 6/10/2022
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of students</title>
    <link rel="stylesheet" href="./css/styles.css" />
</head>
<body>
<h3 style="color: orangered">${ listTitle }</h3>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Action</th>
    </tr>
    <% String students[][] =(String[][]) request.getAttribute("studentsArr"); %>
    <% for(String[] student: students) { %>
    <tr>
        <td><%= student[0] %></td>
        <td><%= student[1] %></td>
        <td><%= student[2] %></td>
        <td><a href="">Edit</a></td>
    </tr>
    <% } %>
</table>
<br>
<a href="/">Home</a>
</body>
</html>
