<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP - Hello World</title>
        <link rel="stylesheet" href="./css/styles.css"/>
    </head>
    <body>
        <h2>Not found</h2>
        <h2><%= exception.printStackTrace() %><br/> </h2>
        <a href="/">Index page</a>
    </body>
</html>