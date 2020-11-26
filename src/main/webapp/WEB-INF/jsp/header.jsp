<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>头部</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="${pageContext.request.contextPath}/user/css/bootstrap.min.css?" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/user/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/simple-line-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/owl.transitions.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/flexslider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/cloud-zoom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/revolution-slider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/jquery-ui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/jquery.fancybox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/quick_view_popup.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/blogmate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/jtv-mobile-menu.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/user/css/responsive.css" rel="stylesheet">
</head>
<body>

<!-- Header -->
<header>
    <div class="header-container">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <!-- Header Language -->
                    <div class="col-xs-12 col-sm-6">
                        <div class="welcome-msg hidden-xs">欢迎进店</div>

                    </div>
                    <div class="col-xs-6 hidden-xs">
                        <!-- Header Top Links -->
                        <div class="jtv-top-links">
                            <div class="links">
                                <ul>
                                    <c:if test="${existUser.username == null }">

                                        <li> <a title="登录" href="${ pageContext.request.contextPath }/user/toLogin"><span class="hidden-xs">登录</span></a> </li>

                                        <li> <a title="注册" href="${ pageContext.request.contextPath }/user/toRegist"><span class="hidden-xs">注册</span></a> </li>
                                    </c:if>

                                    <c:if test="${existUser.username != null }">

                                        <li><span class="hidden-xs">欢迎您<font color="red"> ${existUser.username}</font></span></li>

                                        <li ><a href="${ pageContext.request.contextPath }/user/quit"><span class="hidden-xs">退出</span></a></li>

                                        <li><a href="${ pageContext.request.contextPath }/user/ToEditPassword.action"><span class="hidden-xs">修改密码</span></a></li>

                                        <li><a href="${ pageContext.request.contextPath }/cartController/myCart.action"><span class="hidden-xs">购物车</span></a>

                                        <li><a href="${ pageContext.request.contextPath }/orderController/findByUid.action?page=1"><span class="hidden-xs">我的订单</span></a></li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                        <!-- End Header Top Links -->
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <div class="jtv-top-cart-box">
                    </div>
                </div>
                <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
                    <!-- Header Logo -->
                    <div class="logo"> <a title="logo" href="${pageContext.request.contextPath}/"><img alt="eCommerce" src="${pageContext.request.contextPath}/user/images/logo1.jpg"> </a></div>
                    <!-- End Header Logo -->
                </div>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">
                    <div class="search-box">
                        <!--
                        因为这个头文件是公用的 那个jsp用 直接加上就行 但是
                        点这个搜索框要调用find()函数 所以要在相应的jsp下面加上一段
                        <script type="text/javascript">
                            function find() {
                            document.getElementsByTagName("form")[0].submit();
                         }
                        </script>
                        否则点击没有效果
                        -->
                        <form action="${ pageContext.request.contextPath }/findFlowerByCsName?page=1" method="POST" id="search_mini_form" name="Categories">
                            <input type="text" placeholder="搜索你想要的鲜花" maxlength="70" name="csname" id="search" value="${csname}">
                            <button type="button" class="search-btn-bg" onclick="find()"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end header -->

<!-- Navigation -->
<nav>
    <div class="container">
        <div class="mm-toggle-wrap">
            <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span> </div>
        </div>
        <div class="nav-inner">
            <!-- BEGIN NAV -->
            <ul id="nav" class="hidden-xs">

                <li class="drop-menu"><a href="${pageContext.request.contextPath}/main" class="level-top active"><span>首页</span></a></li>
                <c:forEach items="${cList }" var="c">
                    <li class="drop-menu"><a href=" ${ pageContext.request.contextPath }/flower/findFlowerByCid?cid=${c.cid}&page=1"><span>${c.cname }</span></a></li>
                </c:forEach>
                <li class="drop-menu"><a href="${ pageContext.request.contextPath }/help"><span>帮助</span></a></li>
                <!--下面的 送朋友爱人 没有实现 这里点击还是显示主页 可以随意扩展-->
                <li class="mega-menu"> <a class="level-top" href="${pageContext.request.contextPath}/main"><span>送朋友爱人</span></a>
                </li>
                <!--下面 当鼠标 移动上来时 会弹出下拉款 显示具体内容 可以点击发出不同请求 这里没有具体实现 点击显示主页 可自由扩展-->
                <li class="mega-menu"> <a class="level-top" href="${pageContext.request.contextPath}/main"><span>鲜花推荐</span></a>
                    <div class="jtv-menu-block-wrapper">
                        <div class="jtv-menu-block-wrapper2">
                            <div class="nav-block jtv-nav-block-center">
                                <ul class="level0">
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>鲜花类型</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>简约 </span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>时尚</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>女士最爱</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>男士</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>鲜花用途</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>节日</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>生日</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>结婚纪念日</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>友情慰问</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>鲜花形状</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>圆形</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>三角</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>椭圆</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>方形 </span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>开花季节</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>春季</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>夏季</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>秋季</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>冬季</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>鲜花朵数</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>少于5朵</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>5到10朵</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>10到15朵</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>15到20朵</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>鲜花颜色</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>红色</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>黄色</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>蓝色</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>粉色</span></a> </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="jtv-nav-banner">
                                <div class="jtv-banner-box">
                                    <div class="jtv-nav-banner-img"> <a href="#"><img src="${pageContext.request.contextPath}/user/images/menu-img2.jpg" alt="Handbag"> </a> </div>
                                </div>
                                <div class="jtv-banner-box">
                                    <div class="jtv-nav-banner-img"> <a href="#"><img src="${pageContext.request.contextPath}/user/images/menu-img3.jpg" alt="Handbag"> </a> </div>
                                </div>
                                <div class="jtv-banner-box jtv-banner-box_last">
                                    <div class="jtv-nav-banner-img"> <a href="#"><img src="${pageContext.request.contextPath}/user/images/menu-img4.jpg" alt="Handbag"> </a> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="mega-menu"> <a class="level-top" href="${pageContext.request.contextPath}/main"><span>鲜花日记</span></a>
                    <div class="jtv-menu-block-wrapper">
                        <div class="jtv-menu-block-wrapper2">
                            <div class="nav-block jtv-nav-block-center jtv-menu-box-left">
                                <ul class="level0">
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>鲜花物语</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花日记</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花物语</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花意义</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花心情</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>鲜花心情</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花心情</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花物语</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花日记</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花日记</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>物语鲜花</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>玫瑰物语</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>蒂莲花</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>食人花</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>花朵日记</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="${pageContext.request.contextPath}/main"><span>联想鲜花</span></a>
                                        <ul class="level1">
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花物语</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花情话</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>鲜花往事</span></a> </li>
                                            <li> <a href="${pageContext.request.contextPath}/main"><span>纪念鲜花</span></a> </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="nav-block nav-block-right std jtv-menu-box-right"><img src="${pageContext.request.contextPath}/user/images/menu-img5.jpg" alt="menu img"> </div>
                        </div>
                    </div>
                </li>
                <li class="nav-custom-link mega-menu"> <a href="#" class="level-top"> <span>关于我们</span> </a>
                    <div class="jtv-menu-block-wrapper custom-menu">
                        <div class="header-nav-dropdown-wrapper">
                            <div class="jtv-custom-box"> <i class="fa fa-laptop"></i>
                                <h4 class="heading">惊喜多多，情谊收获</h4>
                                <p>惊喜多多，满意多多。送人鲜花，手留余香。美丽的花儿，美丽的女人。</p>
                            </div>
                            <div class="jtv-custom-box"> <i class="fa fa-book"></i>
                                <h4 class="heading">来我花花世界，送君花好月圆！</h4>
                                <p>花香阵阵，暖意融融；爱心浓浓，情谊深深。</p>
                            </div>
                            <div class="jtv-custom-box"> <i class="fa fa-fort-awesome"></i>
                                <h4 class="heading">.送人鲜花 手留余香</h4>
                                <p>花香阵阵 暖意融融 爱心浓浓 情谊深深</p>
                            </div>
                            <div class="jtv-custom-box"> <i class="fa fa-home"></i>
                                <h4 class="heading">鲜花可以改变他的心情</h4>
                                <p>鲜花拉近你和他/它的距离 让鲜花为您说话.</p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- end nav -->

</body>
</html>
