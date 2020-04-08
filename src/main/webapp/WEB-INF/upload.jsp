<%--
  Created by IntelliJ IDEA.
  User: zhd
  Date: 2018/12/20
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<h1>上传数据</h1>

<form action="upload" method="post" enctype="multipart/form-data">

    请选择图片：<input type="file" name="file" accept="image/*">
    <input type="submit" value="立即上传" >



</form>



</body>
</html>
