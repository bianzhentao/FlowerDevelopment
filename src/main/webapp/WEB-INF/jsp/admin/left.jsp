<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/3/21
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>左侧栏目</title>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
</head>
<body>
<div class="nav-navicon admin-main admin-sidebar">
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：${existAdminUser.username }</div>
    <div class="sideMenu">
        <h3 class="am-icon-flag"><em></em> <a href="#">鲜花管理</a></h3>
        <ul>
            <li><a href="${pageContext.request.contextPath}/admin/adminCategoryController/list.action">一级列表列表</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/adminCategorySecondController/list.action?page=1">二级列表列表</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/adminFlowerController/list.action?page=1">鲜花列表</a></li>
        </ul>
        <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 订单管理</a></h3>
        <ul>
            <li><a href="${pageContext.request.contextPath}/admin/adminOrderController/list.action?page=1"> 订单列表</a></li>
        </ul>
        <h3 class="am-icon-users"><em></em> <a href="#">会员管理</a></h3>
        <ul>
            <li><a href="${pageContext.request.contextPath}/user/findAll.action?page=1">会员列表</a></li>
        </ul>
    </div>
    <!-- sideMenu End -->
    <script type="text/javascript">
        jQuery(".sideMenu").slide({
            titCell: "h3", //鼠标触发对象
            targetCell: "ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
            effect: "slideDown", //targetCell下拉效果
            delayTime: 300, //效果时间
            triggerTime: 150, //鼠标延迟触发时间（默认150）
            defaultPlay: true,//默认是否执行效果（默认true）
            returnDefault: true //鼠标从.sideMen移走后返回默认状态（默认false）
        });
    </script>


</div>
</body>
</html>
