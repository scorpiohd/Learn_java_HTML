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
<script type="text/javascript" src="<%=request.getContextPath() %>/static/easyui/jquery.min.js"></script>
<script type="text/javascript">

   $(document).ready(function(){

       $("#p").click(function () {
          $("#p").hide();
       });

   });

   $(document).ready(function () {
       $("p.pc").click(function () {

               $("p.pc").hide();
           });

   });

   $(document).ready(function () {

       $("p.pc2").click(function () {
           $("p.pc2").hide();
       })
       }

   );
</script>
</head>
<body>
<p id="p">你好好 p 标签</p>
<p class="pc">pc class </p>
<p class="pc2">pc2 </p>
</body>
</html>
