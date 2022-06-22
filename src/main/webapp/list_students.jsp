<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Students Management</title>
<%--        <link  rel="stylesheet" type="text/css" href="./css/styles.css"/>--%>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: Arial;
            }

            body {
                background-color: #f5f5f5;
            }

            th, td {
                padding: 0.6rem 1.5rem;
            }

            table, th, td {
                border-collapse: collapse;
            }
            body {
                background: #f5f5f5;
                padding-top: 3rem;
            }
            table {
                margin-top: 1rem;
            }
            table tr:first-of-type {
                border: none;
            }

            table th {
                background: #114c64;
                border: none;
                color: #fff;
            }
            table tr:nth-child(even) {
                background: #dcdcdc;
            }
            table caption * {
                color: #092a37;
            }
            .header-details {
                text-align: center;
            }
            .header-details>h2 {
                margin: 1rem auto;
            }
            .header-details>h2>a {
                font-weight: 400;
                font-size: 16px;
                color: #fff;
                text-decoration: none;
                padding: 0.6rem 2rem;
                border-radius: 4px;
                background: #105ba6;
            }
        </style>
    </head>
    <body>
        <div class="header-details">
            <h1>Students Management</h1>
            <h2>
                <a href="/new">Add New Student</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/list">List All Students</a>
            </h2>
        </div>
        <div align="center">
            <table border="1" cellpadding="5">
                <caption><h2>List of Students</h2></caption>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Gender</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="student" items="${listStudent}">
                    <tr>
                        <td>${student.firstName}</td>
                        <td><c:out value="${student.lastName}" /></td>
                        <td><c:out value="${student.gender}" /></td>
                        <td>
                            <a href="/edit?id=<c:out value='${student.id}' />">Edit</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="/delete?id=<c:out value='${student.id}' />">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>