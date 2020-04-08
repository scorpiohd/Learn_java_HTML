<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/easyui/jquery.min.js"></script>
    <title>Insert title here</title>
    <script type="text/javascript">
        $(function() {
            $("#btn_log").click(function() {


                console.log($("#formdata").serializeArray());
                $.ajax({
                    type:"post",
                    url:"add",
                    data:$("#formdata").serializeArray(),
                    dataType:"json",//返回的
                    success:function(data) {
                        if(data.success) {
                           // window.location.href="index.jsp";
                            $(document.body).append("$(document).ready()2 is now been executed!!!<br /><br />");
                            console.log(data);
                        } else {
                            alert(data.msg);//打印相应的错误信息
                        }
                    },
                    error:function(msg) {
                        cosole.log(msg);
                    }
                });
            });

            // 失去焦点验证用户名是否存在
            $("#username").blur(function() {
                var u_val = $("#username").val();

                $.ajax({
                    type:"post",
                    url:"checkUsername",
                    data:{username:u_val},
                    dataType:"text",
                    success:function(data) {
                        if("no" == data) {
                            $("#msg").html("用户名已经存在");
                        } else if("ok"==data) {
                            $("#msg").html("该用户名可以使用 !");
                        }
                    },
                    error:function(msg) {
                        cosole.log(msg);//在控制台打印错误信息48             }
                    }
            });
        });});
    </script>
</head>
<body>

<form id="formdata">
    用户名：<input id="username" type="text" name="username"><span id="msg"></span><br>
    密码：<input type="password" name="password"><br>
    确认密码：<input type="password" name="password1"><br>
    真实姓名：<input type="text" name="realname"><br>
    <a  id="btn_log" href="#">提交</a>><br>
</form>
</body>
</html>