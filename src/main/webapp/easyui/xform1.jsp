<%--
  Created by IntelliJ IDEA.
  User: zhd
  Date: 2018/11/3
  Time: 6:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="xinclude.jsp"></jsp:include>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <title>Title</title>
</head>
<body>
<h2>Basic Form</h2>
<p>Fill the form and submit it.</p>
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="New Topic" style="width:600px">
    <div style="padding:10px 60px 20px 60px">
        <form id="ff" method="post" enctype="multipart/form-data">
            <table cellpadding="5">
                <tr>
                    <td>Name:</td>
                    <td><input class="easyui-textbox" type="text" name="name" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'"></input></td>
                </tr>
                <tr>
                    <td>Subject:</td>
                    <td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>Message:</td>
                    <td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input></td>
                </tr>
                <tr>
                    <td>Language:</td>
                    <td>
                        <select class="easyui-combobox" name="language"><option value="ar">Arabic</option><option value="bg">Bulgarian</option><option value="ca">Catalan</option><option value="zh-cht">Chinese Traditional</option><option value="cs">Czech</option><option value="da">Danish</option><option value="nl">Dutch</option><option value="en" selected="selected">English</option><option value="et">Estonian</option><option value="fi">Finnish</option><option value="fr">French</option><option value="de">German</option><option value="el">Greek</option><option value="ht">Haitian Creole</option><option value="he">Hebrew</option><option value="hi">Hindi</option><option value="mww">Hmong Daw</option><option value="hu">Hungarian</option><option value="id">Indonesian</option><option value="it">Italian</option><option value="ja">Japanese</option><option value="ko">Korean</option><option value="lv">Latvian</option><option value="lt">Lithuanian</option><option value="no">Norwegian</option><option value="fa">Persian</option><option value="pl">Polish</option><option value="pt">Portuguese</option><option value="ro">Romanian</option><option value="ru">Russian</option><option value="sk">Slovak</option><option value="sl">Slovenian</option><option value="es">Spanish</option><option value="sv">Swedish</option><option value="th">Thai</option><option value="tr">Turkish</option><option value="uk">Ukrainian</option><option value="vi">Vietnamese</option></select>
                    </td>
                </tr>
                <tr>
                    <td>Start Date:</td>
                    <td>
                        <input class="easyui-datebox" name="date" data-options="sharedCalendar:'#cc'">
                    </td>
                    <td>End Date:</td>
                    <td>
                        <input class="easyui-datebox" name="date2" data-options="sharedCalendar:'#cc'">
                    </td>
                </tr>
                <tr>
                    <td>datetimebox:</td>
                    <td>
                        <input class="easyui-datetimebox" name="datetime" value="10/11/2012 2:3:56" style="width:200px">
                    </td>
                </tr>

                <tr>
                    <td>file2:</td>
                    <td>
                        <input class="easyui-filebox" name="file2" data-options="prompt:'Choose another file...'" style="width:100%">
                        <input class="easyui-filebox" name="file2" id="uploadFileid" data-options="prompt:'选择文件',buttonText:'&nbsp;选&nbsp;择&nbsp;',required:true" style="width:300px">
                    </td>
                </tr>
                <tr>
                    <td>
                        请选择图片：<input type="file" name="file" accept="image/*">

                    </td>
                </tr>

            </table>
        </form>
        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
        </div>

        <img id="Photo1" src="" style="width:220px;height:200px;">



    </div>
</div>
<script>

   $( function show_detail(value){
       alert("showpicture");
        $.post('<%=path%>/showPicture?fileName=15453370192580723cf64f3981641b04d5dc19310a355.jpg', function(result) {

            alert(result);
            $("#Photo1").attr("src",<%=basePath%>+result);

        });
    });


    function submitForm() {
        $("#ff").form('submit', {
            url: '<%=path%>/addform',
            onSubmit: function (param) {
                alert("---添加-------");
                var a=1;
                var b=2;
                var c=2;
                alert("---添加-------a"+a);
                alert("---添加-------b"+b);
            },
            success: function (res) {
                alert("---res-------" + res);
                if (res == 'ok') {//成功处理
                    alert("添加成功");
                } else {//错误处理
                    alert("添加失败");
                }
            }
        });
    }

    function clearForm(){
        $('#ff').form('clear');
    }
</script>


</body>
</html>
