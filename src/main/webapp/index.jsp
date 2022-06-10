<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="./css/styles.css" />
</head>
<body>
<h1><%= "Welcome!" %></h1>
<%--<a href="admission?q=Yves Isite">Admission page</a>--%>
<a href="/?test=Yves0">Main page</a>
<br>
<a href="new?test=Yves1">Add student</a>
<br>
<a href="list?test=Yves3">List of students</a>
</body>
</html>