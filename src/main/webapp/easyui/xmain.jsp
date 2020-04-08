
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <jsp:include page="xinclude.jsp"></jsp:include>

    <!-- 自定义css js -->
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/main.css" />
    <!-- <script type="text/javascript" src="<%=path%>/static/css/main.js"></script> -->
</head>
<
<script  type="text/javascript">
    var url;

    function openTab(text,url,iconCls){
        if($("#tabs").tabs("exists",text)){
            $("#tabs").tabs("select",text);
        }else{
            var content="<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='${pageContext.request.contextPath}/"+url+"'></iframe>";
            $("#tabs").tabs("add",{
                title:text,
                iconCls:iconCls,
                closable:true,
                content:content
            });
        }
    }

    function logout(){
        $.messager.confirm("系统提示","您确定要退出系统吗？",function(r){
            if(r){
                window.location.href='${pageContext.request.contextPath}/index.jsp';
            }
        });
    }

    function modifyPassword(){
        $("#fm").form("submit",{
            url:url,
            onSubmit:function(){
                var oldPassword=$("#oldPassword").val();
                var newPassword=$("#newPassword").val();
                var newPassword2=$("#newPassword2").val();
                if(!$(this).form("validate")){
                    return false;
                }
                if(oldPassword!='${currentUser.password}'){
                    $.messager.alert("系统提示","用户原密码输入错误！");
                    return false;
                }
                if(newPassword!=newPassword2){
                    $.messager.alert("系统提示","确认密码输入错误！");
                    return false;
                }
                return true;
            },
            success:function(result){
                var result=eval('('+result+')');
                if(result.success){
                    $.messager.alert("系统提示","密码修改成功，下一次登录生效！");
                    resetValue();
                    $("#dlg").dialog("close");
                }else{
                    $.messager.alert("系统提示","密码修改失败！");
                    return;
                }
            }
        });
    }
</script>
<body class="easyui-layout">
<!-- 头部开始  -->
<div data-options="region:'north',title:'头部',split:true,noheader:true" style="height: 60px; background: #666">
    <div class="logo">后台管理</div>
    <div class="logout">
        您好，administrator|
        <a href="javascript:logout()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-exit'" style="width: 150px;">安全退出</a>
    </div>
</div>
<!-- End头部 -->

<!-- 底部开始 -->
<div data-options="region:'south',title:'底部',split:true,noheader:true" style="height: 35px; line-height: 30px; text-align: center;">管理后台</div>
<!-- End底部 -->

<!-- 导航开始 -->
<div data-options="region:'west',title:'导航',split:true,iconCls:'icon-large-shapes'" style="width: 180px; padding: 10px">

    <div class="easyui-accordion" data-options="fit:true,border:false">
        <div title="营销管理" data-options="selected:true,iconCls:'icon-yxgl'" style="padding: 10px">
            <a href="javascript:openTab('ajax请求','./easyui/ajax1.jsp','icon-yxjhgl')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-yxjhgl'" style="width: 150px">ajax请求</a>
            <a href="javascript:openTab('学生信息','./easyui/easyui2.jsp','icon-khkfjh')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-khkfjh'" style="width: 150px">学生信息</a>
        </div>
        <div title="客户管理"  data-options="iconCls:'icon-khgl'" style="padding:10px;">
            <a href="javascript:openTab('表单1','./easyui/xform1.jsp','icon-khxxgl')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-khxxgl'" style="width: 150px;">表单1</a>
            <a href="javascript:openTab('客户流失管理','customerLossManage.jsp','icon-khlsgl')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-khlsgl'" style="width: 150px;">客户流失管理</a>
        </div>
        <div title="服务管理" data-options="iconCls:'icon-fwgl'" style="padding:10px">
            <a href="javascript:openTab('服务创建','customerServiceCreate.jsp','icon-fwcj')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-fwcj'" style="width: 150px;">服务创建</a>
            <a href="javascript:openTab('服务分配','customerServiceAssign.jsp','icon-fwfp')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-fwfp'" style="width: 150px;">服务分配</a>
            <a href="javascript:openTab('服务处理','customerServiceProce.jsp','icon-fwcl')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-fwcl'" style="width: 150px;">服务处理</a>
            <a href="javascript:openTab('服务反馈','customerServiceFeedback.jsp','icon-fwfk')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-fwfk'" style="width: 150px;">服务反馈</a>
            <a href="javascript:openTab('服务归档','customerServiceFile.jsp','icon-fwgd')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-fwgd'" style="width: 150px;">服务归档</a>
        </div>
        <div title="统计报表"  data-options="iconCls:'icon-tjbb'" style="padding:10px">
            <a href="javascript:openTab('客户贡献分析','khgxfx.jsp','icon-khgxfx')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-khgxfx'" style="width: 150px;">客户贡献分析</a>
            <a href="javascript:openTab('客户构成分析','khgcfx.jsp','icon-khgcfx')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-khgcfx'" style="width: 150px;">客户构成分析</a>
            <a href="javascript:openTab('客户服务分析','khfwfx.jsp','icon-khfwfx')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-khfwfx'" style="width: 150px;">客户服务分析</a>
            <a href="javascript:openTab('客户流失分析','khlsfx.jsp','icon-khlsfx')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-khlsfx'" style="width: 150px;">客户流失分析</a>
        </div>
        <div title="基础数据管理"  data-options="iconCls:'icon-jcsjgl'" style="padding:10px">
            <a href="javascript:openTab('数据字典管理','dataDicManage.jsp','icon-sjzdgl')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-sjzdgl'" style="width: 150px;">数据字典管理</a>
            <a href="javascript:openTab('产品信息查询','productSearch.jsp','icon-cpxxgl')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cpxxgl'" style="width: 150px;">产品信息查询</a>
            <a href="javascript:openTab('用户信息管理','userManage.jsp','icon-user')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-user'" style="width: 150px;">用户信息管理</a>
        </div>
        <div title="系统管理"  data-options="iconCls:'icon-item'" style="padding:10px">
            <a href="javascript:openPasswordModifyDialog()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-modifyPassword'" style="width: 150px;">修改密码</a>
            <a href="javascript:logout()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-exit'" style="width: 150px;">安全退出</a>
        </div>
    </div>
    <!-- <ul id="nav" class="easyui-tree">

        <li>
            <span>Folder</span>
            <ul>
                <li>
                    <span>Sub Folder 1</span>
                    <ul>
                        <li><span><a href="jqueajax1.jsple 11</a></span></li>
                        <li><span>File 12</span></li>
                        <li><span>File 13</span></li>
                    </ul>
                </li>
                <li><span>File 2</span></li>
                <li><span>File 3</span></li>
            </ul>
        </li>
        <li><span>File21</span></li>

    </ul>-->
</div>
<!-- End导航 -->

<!-- 内容区域开始 -->
<div data-options="region:'center'" style="overflow: hidden;">
    <div class="easyui-tabs" fit="true" border="false" id="tabs">
        <div title="首页" data-options="iconCls:'icon-home'">
            <div align="center" style="padding-top: 100px"><font color="red" size="10">欢迎使用</font></div>
        </div>
    </div>
    <!--<div id="tabs">
        <div title="首页" iconCls="icon-help" style="padding: 0 10px; display: block;">
            <p>欢迎来到赣州智慧党务管理平台</p>
        </div>
    </div>-->
</div>
<!-- End内容区域 -->

<!-- 右键菜单 -->
<div id="mm" class="easyui-menu" style="width:150px;display: none">
    <div id="mm-tabupdate">刷新</div>
    <div class="menu-sep"></div>
    <div id="mm-tabclose">关闭</div>
    <div id="mm-tabcloseall">全部关闭</div>
    <div id="mm-tabcloseother">除此之外全部关闭</div>
    <div class="menu-sep"></div>
    <div id="mm-tabcloseleft">当前页左侧全部关闭</div>
    <div id="mm-tabcloseright">当前页右侧全部关闭</div>
</div>
</body>
</html>
