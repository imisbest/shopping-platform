<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">用户管理</a>
        </div>
    </div>
</nav>
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#">用户信息</a></li>
    <li>
</ul>

<script>
    $(function () {

        $("#userTable").jqGrid(
            {
                url: "${path}/userList/showAllusers",
                datatype: "json",
                colNames: ['ID', '用户名', '密码', '盐'],
                colModel: [
                    {name: 'id', hidden: true},
                    {name: 'username', align: "center",editable: true, editrules: {required: true}},
                    {name: 'password', align: "center", editrules: {required: true}},
                    {name: 'salt', align: "center", editrules: {required: true}},
                ],
                rowNum: 8,
                rowList: [1, 2, 8,16,32],
                pager: '#userPage',
                mtype: "post",
                viewrecords: true,
                styleUI: "Bootstrap",
                autowidth: true,
                multiselect: false,
                height: 500,
                editurl: "${path}/userList/edit"
            });
        $("#userTable").jqGrid('navGrid', '#userPage',
            {
                add: false,
                edit: true,
                del: true,
                edittext: "编辑",
                search: false,
            },
            // {} --> edit {}-->add  {}-->del
            {
                closeAfterEdit: true,
                // frm ---> 表单对象
                success: function (data) {
                    // 输出上传成功
                    // jqgrid重新载入
                    $("#Table").trigger("reloadGrid");
                }
            }, {}, {
                closeAfterDel: true
            });
    });
</script>
<div>
    <table id="userTable"></table>
    <div id="userPage" style="height: 50px"></div>
</div>