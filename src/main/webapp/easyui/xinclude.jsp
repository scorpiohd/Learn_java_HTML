<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>基础css,js</title>
</head>
<body>

<!-- easyui 公共样式 js css -->
<link rel="stylesheet" type="text/css" href="<%=path%>/static/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/static/easyui/icon.css" />
<script type="text/javascript" src="<%=path%>/static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=path%>/static/easyui/locale/easyui-lang-zh_CN.js"></script>

</body>
</html>

