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
<% String names[] =(String[]) request.getAttribute("studentsArr"); %>
<ul>
    <% for(String name: names) { %>
    <li><%= name %></li>
    <% } %>
</ul>
<h3 style="color: orangered">${ listTitle }</h3>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Action</th>
        <th></th>
    </tr>
    <tr>
        <td>1</td>
        <td>John</td>
        <td>20</td>
        <td><a href="">Edit</a></td>
    </tr>
    <tr>
        <td>2</td>
        <td>Mary</td>
        <td>21</td>
        <td><a href="">Edit</a></td>
    </tr>
    <tr>
        <td>3</td>
        <td>Peter</td>
        <td>22</td>
        <td><a href="">Edit</a></td>
    </tr>
</table>
<a href="/">Home</a>
</body>
</html>
