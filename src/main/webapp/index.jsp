<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>index</h1>
<%
    String path = request.getContextPath();

%>
<h1>request.getContextPath=${path}</h1>
<h1>request.getContextPath=<%=path%></h1>
<a href="upload.jsp" target="_blank">upload</a>
</body>
</html>