<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Students Management</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <center>
            <h1>Students Management</h1>
            <h2>
                <a href="/new">Add New Student</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/list">List All Students</a>
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
                            <input type="hidden" name="id" value="<c:out value='${student.id}' />"/>
                        </c:if>
                        <tr>
                            <th>First Name:</th>
                            <td>
                                <input type="text" name="firstName" size="45"
                                       value="<c:out value='${student.firstName}' />"
                                       required
                                />
                            </td>
                        </tr>
                        <tr>
                            <th>Last Name:</th>
                            <td>
                                <input type="text" name="lastName" size="45"
                                       value="<c:out value='${student.lastName}' />"
                                       required
                                />
                            </td>
                        </tr>
                        <tr>
                            <th>gender:</th>
                            <td>
                                <c:choose>
                                    <c:when test="${student.gender=='MALE'}">
                                        <input type="radio" name="gender" id="male" value="MALE" checked required />
                                        <label for="male">Male</label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="gender" id="female" value="FEMALE" required />
                                        <label for="female">Female</label>
                                    </c:when>
                                    <c:when test="${student.gender=='FEMALE'}">
                                        <input type="radio" name="gender" id="male" value="MALE" required />
                                        <label for="male">Male</label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="gender" id="female" value="FEMALE" checked required />
                                        <label for="female">Female</label>
                                    </c:when>
                                    <c:otherwise>
                                        <input type="radio" name="gender" id="male" value="MALE" required />
                                        <label for="male">Male</label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="gender" id="female" value="FEMALE" required />
                                        <label for="female">Female</label>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input type="submit" value="Save"/>
                                <input type="reset" value="clear"/>
                            </td>
                        </tr>
                    </table>
                </form>
        </div>
    </body>
</html>