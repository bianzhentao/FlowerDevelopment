<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>鲜花店</title>

</head>
<body class="cms-index-index cms-home-page">

<%--头部--%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>


<!-- 轮播图 效果显示 点击没有效果  -->
<div id="slider">
    <div class="tp-banner-container">
        <div class="tp-banner">
            <ul>
                <li id="slide1" data-transition="3dcurtain-vertical" data-slotamount="7" data-masterspeed="500"
                    data-thumb="${pageContext.request.contextPath}/user/images/slider/slide1.jpg"
                    data-title="Second Slide">
                    <!-- MAIN IMAGE -->
                    <img src="${pageContext.request.contextPath}/user/images/dummy.png" alt="laptopmockup_sliderdy"
                         data-lazyload="${pageContext.request.contextPath}/user/images/slider/slide1.jpg"
                         data-bgposition="right bottom" data-kenburns="on" data-duration="12000"
                         data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100"
                         data-bgpositionend="center top">
                    <!-- LAYERS -->

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption text1 skewfromrightshort fadeout"
                         data-x="380"
                         data-y="150"
                         data-speed="800"
                         data-start="1000"
                         data-easing="Power3.easeInOut"
                         data-splitin="words"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 3; white-space: nowrap;">Flowers
                    </div>

                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption text2 skewfromrightshort fadeout"
                         data-x="380"
                         data-y="250"
                         data-speed="500"
                         data-start="1500"
                         data-easing="Power3.easeInOut"
                         data-splitin="chars"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 4; white-space: nowrap;">A Wide Range of Flowers<br>
                        For Everyones Need
                    </div>

                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption text3 skewfromrightshort fadeout hidden-xs"
                         data-x="380"
                         data-y="360"
                         data-speed="1000"
                         data-start="4200"
                         data-easing="Power3.easeInOut"
                         data-splitin="none"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 5; white-space: nowrap;"><a href="#">Order Today</a></div>
                </li>
                <!-- SLIDE  -->
                <li id="slide2" data-transition="3dcurtain-vertical" data-slotamount="7" data-masterspeed="500"
                    data-thumb="${pageContext.request.contextPath}/user/images/slider/slide2.jpg"
                    data-title="First Slide">
                    <!-- MAIN IMAGE -->
                    <img src="${pageContext.request.contextPath}/user/images/dummy.png" alt="laptopmockup_sliderdy"
                         data-lazyload="${pageContext.request.contextPath}/user/images/slider/slide2.jpg"
                         data-bgposition="right top" data-kenburns="on" data-duration="12000"
                         data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100"
                         data-bgpositionend="center bottom">
                    <!-- LAYERS -->

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption text5 skewfromrightshort fadeout"
                         data-x="1080"
                         data-y="150"
                         data-speed="800"
                         data-start="1000"
                         data-easing="Power3.easeInOut"
                         data-splitin="words"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 3; white-space: nowrap;">A Perfect
                    </div>

                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption text4 skewfromleftshort fadeout"
                         data-x="1110"
                         data-y="230"
                         data-speed="500"
                         data-start="1500"
                         data-easing="Power3.easeInOut"
                         data-splitin="chars"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 4; white-space: nowrap;">Bouquet
                    </div>

                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption text2 skewfromrightshort fadeout"
                         data-x="1050"
                         data-y="350"
                         data-speed="1000"
                         data-start="4200"
                         data-easing="Power3.easeInOut"
                         data-splitin="none"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 5; white-space: nowrap;">The Best Choice on the Template
                    </div>
                </li>

                <!-- SLIDE  -->
                <li id="slide3" data-transition="3dcurtain-vertical" data-slotamount="7" data-masterspeed="500"
                    data-thumb="${pageContext.request.contextPath}/user/images/slider/slide3.jpg"
                    data-title="Third Slide">
                    <!-- MAIN IMAGE -->
                    <img src="${pageContext.request.contextPath}/user/images/dummy.png" alt="laptopmockup_sliderdy"
                         data-lazyload="${pageContext.request.contextPath}/user/images/slider/slide3.jpg"
                         data-bgposition="right top" data-kenburns="on" data-duration="12000"
                         data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100"
                         data-bgpositionend="left center">
                    <!-- LAYERS -->

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption text7 skewfromrightshort fadeout"
                         data-x="650"
                         data-y="150"
                         data-speed="800"
                         data-start="1000"
                         data-easing="Power3.easeInOut"
                         data-splitin="words"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 3; white-space: nowrap;">Special for your
                    </div>

                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption text5 skewfromleftshort fadeout"
                         data-x="610"
                         data-y="280"
                         data-speed="500"
                         data-start="1500"
                         data-easing="Power3.easeInOut"
                         data-splitin="chars"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 4; white-space: nowrap;">Valentine's Day
                    </div>

                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption text6 skewfromrightshort fadeout"
                         data-x="740"
                         data-y="390"
                         data-speed="1000"
                         data-start="3500"
                         data-easing="Power3.easeInOut"
                         data-splitin="none"
                         data-splitout="none"
                         data-elementdelay="0.1"
                         data-endelementdelay="0.1"
                         data-endspeed="300"
                         style="z-index: 5; white-space: nowrap;">Love is to give. Love is to Remember.
                    </div>
                </li>
            </ul>
            <!--          <div class="tp-bannertimer"></div>
    --> </div>
    </div>
</div>
<!-- END REVOLUTION SLIDER -->

<!-- 轮播图下三个介绍 点击都是显示 鲜花商城 第一页  和点击头部的 鲜花商城一个效果 方便扩展

这里 我们只显示 一级菜单中 的 鲜花商城 其他的就是重复显示 跳转到不同的一级分类 界面不是很好看
-->
<div class="jtv-bottom-banner-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">



                <div class="jtv-img-box"><a href="${ pageContext.request.contextPath }/flower/findFlowerByCid.action?cid=1&page=1"> <img
                        src="${pageContext.request.contextPath}/user/images/jtv-banner1.jpg" alt="bottom banner">
                    <div class="jtv-banner-info"><span>送亲朋好友</span>
                        <h3>生日礼物</h3>
                    </div>
                </a></div>


            </div>
            <div class="col-sm-4">

                <div class="jtv-img-box"><a href="${ pageContext.request.contextPath }/flower/findFlowerByCid.action?cid=1&page=1"> <img
                        src="${pageContext.request.contextPath}/user/images/jtv-banner2.jpg" alt="bottom banner">
                    <div class="jtv-banner-info"><span>特价优惠25%</span>
                        <h3>婚庆花朵</h3>
                    </div>
                </a></div>

            </div>
            <div class="col-sm-4">

                <div class="jtv-img-box"><a href="${ pageContext.request.contextPath }/flower/findFlowerByCid.action?cid=1&page=1"> <img
                        src="${pageContext.request.contextPath}/user/images/jtv-banner3.jpg" alt="bottom banner">
                    <div class="jtv-banner-info"><span>圣诞节</span>
                        <h3>简约 时尚 美观</h3>
                    </div>
                </a></div>

            </div>
        </div>
    </div>
</div>

<!-- end介绍 -->




<section class="jtv-bestsell-section">
    <div class="container">
        <div class="slider-items-products">
            <div class="bestsell-block">
                <div class="jtv-block-inner">
                    <div class="block-title">
                        <h2>鲜花推荐</h2>
                    </div>
                </div>
                <div id="bestsell-slider" class="product-flexslider hidden-buttons">
                    <div class="slider-items slider-width-col4 products-grid block-content">
                        <c:forEach items="${hList }" var="h">
                            <div class="item">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Product Title Here"
                                                                      href="${ pageContext.request.contextPath }/flower/findByPid?pid=${h.pid}">
                                            <!--下面这一句 设置了所有Product Title Here 属性 都会显示出自己的图片 不用一个一个设置了 -->
                                            <img alt="Product Title Here"
                                                 src="${pageContext.request.contextPath}/images/uploadfiles/${h.image}"> </a>

                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview"
                                                           href="${ pageContext.request.contextPath }/flower/findByPid?pid=${h.pid}"><i
                                                            class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a>
                                                    </li>
                                                    <li><a class="link-wishlist"
                                                           href="${ pageContext.request.contextPath }/flower/findByPid?pid=${h.pid}"><i
                                                            class="icon-heart icons"></i><span
                                                            class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare"
                                                           href="${ pageContext.request.contextPath }/flower/findByPid?pid=${h.pid}"><i
                                                            class="icon-shuffle icons"></i><span
                                                            class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><a title="Product Title Here"
                                                                       href="${ pageContext.request.contextPath }/flower/findByPid?pid=${h.pid}"> ${h.pname} </a>
                                            </div>
                                            <div class="item-content">
                                                <div class="rating"><i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></div>
                                                <div class="item-price">
                                                    <div class="price-box"><span class="regular-price"> <span
                                                            class="price">￥${h.shopPrice}</span> </span></div>
                                                </div>
                                                <div class="action">
                                                    <a class="button btn-cart" type="button" title=""
                                                            data-original-title="Add to Cart"
                                                            href="${ pageContext.request.contextPath }/flower/findByPid?pid=${h.pid}">
                                                        <span>加入购物车</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Bestsell Slider -->


<!-- 热点产品 -->
<section class="special-products">
    <div class="container">
        <div class="slider-items-products">
            <div class="jtv-special-block">
                <div class="jtv-block-inner">
                    <div class="block-title">
                        <h2>最新产品</h2>
                    </div>
                    <div class="jtv-decs-text">
                        花香人更美，芬芳醉人意；玫瑰来传递，情谊不可比；娇艳赛花瓣，迷倒众子君；我心亦在此，望你来青睐。
                        Ut enim ad minim veniam. Duis aute irure dolor in reprehenderit
                        in voluptate velit esse cillum.
                    </div>
                    <c:forEach items="${cList }" var="c">
                    <a href="${ pageContext.request.contextPath }/flower/findFlowerByCid.action?cid=${c.cid}&page=1" class="jtv-more-bnt">more 更多惊喜！</a>
                    </c:forEach>
                    <div class="jtv-box-timer">
                        <div class="countbox_1 timer-grid"></div>
                    </div>
                </div>
                <div id="special-slider" class="product-flexslider hidden-buttons">
                    <div class="slider-items slider-width-col4 products-grid block-content">
                        <c:forEach items="${nList }" var="n">
                            <div class="item">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Product Title Here"
                                                                      href="${ pageContext.request.contextPath }/flower/findByPid?pid=${n.pid}">
                                            <img alt="Product Title Here"
                                                 src="${pageContext.request.contextPath}/images/uploadfiles/${n.image}"></a>
                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview"
                                                           href="${ pageContext.request.contextPath }/flower/findByPid?pid=${n.pid}"><i
                                                            class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a>
                                                    </li>
                                                    <li><a class="link-wishlist"
                                                           href="${ pageContext.request.contextPath }/flower/findByPid?pid=${n.pid}"><i
                                                            class="icon-heart icons"></i><span
                                                            class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare"
                                                           href="${ pageContext.request.contextPath }/flower/findByPid?pid=${n.pid}"><i
                                                            class="icon-shuffle icons"></i><span
                                                            class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><a title="Product Title Here"
                                                                       href="single_product.html"> ${n.pname }</a></div>
                                            <div class="item-content">
                                                <div class="rating"><i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></div>
                                                <div class="item-price">
                                                    <div class="price-box"><span class="regular-price"> <span
                                                            class="price">￥${n.shopPrice }</span> </span></div>
                                                </div>
                                                <div class="action">
                                                    <a class="button btn-cart" type="button" title=""
                                                            data-original-title="Add to Cart" href="${ pageContext.request.contextPath }/flower/findByPid?pid=${n.pid}"><span>加入购物车</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%--热点结束--%>

<!-- 轮播 Logo 滚动显示 logo 图片 -->
<div class="brand-logo">
    <div class="container">
        <div class="slider-items-products">
            <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col6">

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand1.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand2.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand3.png"
                                                       alt="Image"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand4.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand5.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand6.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand7.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand8.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand9.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                    <!-- Item -->
                    <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/user/images/brand10.png"
                                                       alt="brand logo"> </a></div>
                    <!-- End Item -->

                </div>
            </div>
        </div>
    </div>
</div>
<%--结束Logo--%>

<%--九宫格 显示了六张图片 主要是美化 点击没有效果--%>
<div class="jtv-top-banner">
    <div class="container">
        <div class="imgbox"><img src="${pageContext.request.contextPath}/user/images/banner1.jpg" alt=""></div>
        <div class="jtv-cont-box">
            <h3>鲜花 <br>
                物语</h3>
            <div class="jtv-line-bg"></div>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
        </div>
        <div class="imgbox"><img src="${pageContext.request.contextPath}/user/images/banner2.jpg" alt=""></div>
        <div class="jtv-cont-box2">
            <h3>节日 生日 婚庆 <br>
                推荐</h3>
            <div class="jtv-line-bg"></div>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
        </div>
        <div class="imgbox"><img src="${pageContext.request.contextPath}/user/images/banner3.jpg" alt=""></div>
        <div class="jtv-cont-box3">
            <h3>25% 优惠<br>
                新品</h3>
            <div class="jtv-line-bg"></div>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
        </div>
    </div>
</div>
<%--结束九宫格--%>

<!-- 产品特点 增加显示效果-->
<div class="our-features-box">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-xs-12 col-sm-6">
                <div class="feature-box first"><i class="icon-plane icons"></i>
                    <div class="content">
                        <h6>快速 新鲜</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12 col-sm-6">
                <div class="feature-box"><i class="icon-earphones-alt icons"></i>
                    <div class="content">
                        <h6>24小时开业 不打烊</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12 col-sm-6">
                <div class="feature-box"><i class="icon-like icons"></i>
                    <div class="content">
                        <h6>100% 客户好评</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12 col-sm-6">
                <div class="feature-box last"><i class="icon-tag icons"></i>
                    <div class="content">
                        <h6>精准记录</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--结束--%>

<!--页面最下角 相关链接 之类 点击都是回到本页 -->
<%@ include file="/WEB-INF/jsp/footer.jsp" %>

<script type="text/javascript">
    function find() {
        document.getElementsByTagName("form")[0].submit();
    }
</script>
</body>
</html>