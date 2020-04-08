<%--
  Created by IntelliJ IDEA.
  User: zhd
  Date: 2018/10/26
  Time: 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/easyui/jquery.min.js"></script>

<script type="text/javascript">

    $(document).ready(function () {
        $("#button1").click(function () {
          alert( "text"+$("#p").text());
        });

    });

    $(document).ready(function () {
        $("#button2").click(function () {
          alert("html"+$("#p").html());
        });
    });


    $(document).ready(function () {

        $("#button3").click(function () {
           alert("value="+ $("#input1").val());
        });
        });

</script>
</head>
<body>
<p id="p">这是文本<b>信息</b></p>
<button id="button1" >button1</button>
<button id="button2">button2</button>
<button id="button3">button3</button><br>
<input  type="text" id="input1"  value="input value is happy">
</body>
</html>
