<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>backhome</title>
    <link rel="stylesheet" href="${path}/static/boot/css/bootstrap.min.css">
    <!--引入jqgrid的bootstrap css-->
    <link rel="stylesheet" href="${path}/static/jqgrid/css/trirand/ui.jqgrid-bootstrap.css">
    <!--引入jquery核心js-->
    <script src="${path}/static/boot/js/jquery-2.2.1.min.js"></script>
    <!--引入jqgrid核心js-->
    <script src="${path}/static/jqgrid/js/trirand/jquery.jqGrid.min.js"></script>
    <!--引入jqgrid国际化js-->
    <script src="${path}/static/jqgrid/js/trirand/i18n/grid.locale-cn.js"></script>
    <!--引入bootstrap组件js-->
    <script src="${path}/static/boot/js/bootstrap.min.js"></script>
    <script src="${path}/static/boot/js/ajaxfileupload.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#myCarousel").carousel('cycle');
            /*//切换样式*/
            $(".list-group").on("click", ".list-group-item", function () {
                //去掉所有
                $(".list-group-item").removeClass().addClass("list-group-item");
                //点击激活
                $(this).addClass("active");
            });
        });
    </script>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">购物平台后台管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#">欢迎:${admin.username}</a></li>
                <li><a href="${path}/admin/logout">退出登陆</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                用户管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse">
                        <div class="panel-body list-group">
                            <a href="javascript:$('#contant').load('./user_list.jsp')"
                               class="list-group-item active">用户信息管理</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo">
                                图书管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body list-group">
                                <a href="javascript:$('#contant').load('./book_list.jsp')"
                                   class="list-group-item active">图书信息</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree">
                                订单管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body list-group">
                            <a href="javascript:$('#contant').load('./order_list.jsp')"
                               class="list-group-item active">订单信息</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapse4">
                                类别管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapse4" class="panel-collapse collapse">
                        <div class="panel-body list-group">
                            <a href="javascript:$('#contant').load('./category_list.jsp')"
                               class="list-group-item active">类别信息</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-10">
            <div class="container" id="contant">
                <div class="jumbotron">
                    <h1>欢迎使用购物平台后台管理系统</h1>
                </div>
                <div id="myCarousel" class="carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="${path}/img/微信图片_20190603161551.jpg" alt="First slide"
                                 style="width:1000px; height:600px;">
                        </div>
                        <div class="item">
                            <img src="${path}/img/微信图片_20180716115911.jpg" alt="Second slide"
                                 style="width:1000px; height:600px;">
                        </div>
                        <div class="item">
                            <img src="${path}/img/微信图片_20190603161641.jpg" alt="Third slide"
                                 style="width:1000px; height:600px;">
                        </div>
                    </div>
                    <!-- 轮播（Carousel）导航 -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="panel-footer">
    <h4 style="text-align: center">百知教育 @baizhiedu.com.cn</h4>
</div>

</body>
</html>
