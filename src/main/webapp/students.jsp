<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><%@ page language="java" contentType="text/html; charset=UTF-8"
               pageEncoding="UTF-8"%>
    <html>
        <head>
            <title>Students Managment</title>
            <link rel="stylesheet" href="./css/styles.css" />
        </head>
        <body>
            <center>
                <h1>Students Management</h1>
                <h2>
                    <a href="/students_record/new">Add New Student</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="/students_record/list">List All Students</a>
                </h2>
            </center>
            <div align="center">
                <table border="1" cellpadding="5">
                    <caption><h2>List of Students</h2></caption>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th></th>
                    </tr>
                    <c:forEach var="student" items="${listStudent}">
                        <tr>
                            <td>${student.firstName}</td>
                            <td><c:out value="${student.lastName}" /></td>
                            <td><c:out value="${student.gender}" /></td>
                            <td>
                                <a href="/students_record/edit?id=<c:out value='${student.id}' />">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="/students_record/delete?id=<c:out value='${student.id}' />">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </body>
    </html>
    9:27
    =================================
    [9:26 AM] add_student.jsp
    [9:26 AM] <%@ page language="java" contentType="text/html; charset=UTF-8"
                       pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>
        <head>
            <title>Students Managment</title>
            <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css"> </link>
            <script language="JavaScript" type="text/JavaScript"
                    src="../js/hello.js"></script>
        </head>
        <body>
            <center>
                <h1>Students Management</h1>
                <h2>
                    <a href="/students_record/new">Add New Student</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="/students_record/list">List All Students</a>
                </h2>
            </center>
            <div align="center">
                <c:if test="${student != null}">
                <form action="update" method="post">
                    </c:if>
                    <c:if test="${student == null}">
                    <form action="insert" method="post" onSubmit="return sayHelloToThisPerson();">
                        </c:if>
                        <table border="1" cellpadding="5">
                            <caption>
                                <h2>
                                    <c:if test="${student != null}">
                                        Edit Student
                                    </c:if>
                                    <c:if test="${student == null}">
                                        Add Student
                                    </c:if>
                                </h2>
                            </caption>
                            <c:if test="${student != null}">
                                <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                            </c:if>
                            <tr>
                                <th>First Name: </th>
                                <td>
                                    <input type="text" name="firstName" size="45"
                                           value="<c:out value='${student.firstName}' />"
                                    />
                                </td>
                            </tr>
                            <tr>
                                <th>Last Name: </th>
                                <td>
                                    <input type="text" name="lastName" size="45"
                                           value="<c:out value='${student.lastName}' />"
                                    />
                                </td>
                            </tr>
                            <tr>
                                <th>gender: </th>
                                <td>
                                    <input type="text" name="gender" size="5"
                                           value="<c:out value='${student.gender}' />"
                                    />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input type="submit" value="Save" />
                                    <input type="buttonk" value="clear" />
                                </td>
                            </tr>
                        </table>
                    </form>
            </div>
        </body>
    </html>
