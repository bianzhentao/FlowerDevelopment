<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>一分钟教你选花</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/common1.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorial.css">
  </head>
  
  <body style="background: #FF99CC">  
  <title>一分钟挑选鲜花</title>
  <style>body{min-width: 1200px;}#loginModal .btn {margin-top:0px;}</style>
</head>

<body class="tutorial" data-spy="scroll" data-target=".affix-box">		
	
	<div class="main">

		<div class="affix-box">
			<ul class="nav section-nav affix" data-spy="affix" data-offset-top="0" data-offset-bottom="0">
				<li class="nav-li active"><a href="">花材</a></li>
				<li class="nav-li"><a href="#">数量</a></li>
				<li class="nav-li"><a href="">颜色</a></li>
				<li class="nav-li"><a href="">进阶篇</a></li>
				<!--<li class="gotop"><a href="">回顶部</a></li>-->
				<li class="nav-li"><a href="${pageContext.request.contextPath}/main">回首页</a></li>
			</ul>
		</div>

		<section class="t-default" id="Section01">
			<div class="container">
				<div class="bd">
					<img src="${pageContext.request.contextPath}/pimg/tutorial_p1.png">
					<span class="default-arrow"></span>
				</div>
			</div>
		</section>
		<section class="t-material" id="Section02">
			<div class="container">
				<div class="hd">
					<h3>花材</h3>
					<p>每种花都有自己的花语，当你在选择送的对象时，<br>千万不要送错，免得出糗哦</p>
				</div>
				<div class="bd">
					<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p2_1.jpg" height="450" width="318"></a>
					<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p2_2.jpg" height="450" width="318"></a>
					<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p2_3.jpg" height="450" width="318"></a>
				</div>
			</div>
		</section>

		<section class="t-amount" id="Section03">
			<div class="container">
				<div class="hd">
					<h3>数量</h3>
					<p>不同玫瑰朵数，有不同的寓意，但都是对爱情的美好祝福<br><span class="text-primary">（最简单的秘诀：有纪念意义的场合就多送就对了）</span></p>
				</div>
				<div class="bd">
					<ul>
						<li class="amount-li">
							<a href="">
								<img src="${pageContext.request.contextPath}/pimg/tutorial_p3_11.png" height="60" width="64">
								11枝代表一心一意
							</a>
						</li>
						<li><img src="${pageContext.request.contextPath}/pimg/tutorial_p3_1.png" height="220" width="160"></li>
						<li class="amount-li">
							<a href="">
								<img src="${pageContext.request.contextPath}/pimg/tutorial_p3_16.png" height="60" width="64">
								16枝代表最深的爱
							</a>
						</li>
						<li class="amount-li">
							<a href="">
								<img src="${pageContext.request.contextPath}/pimg/tutorial_p3_19.png" height="60" width="64">
								19枝代表期待陪伴
							</a>
						</li>
						<li><img src="${pageContext.request.contextPath}/pimg/tutorial_p3_2.png" height="220" width="160"></li>
						<li class="amount-li">
							<a href="">
								<img src="${pageContext.request.contextPath}/pimg/tutorial_p3_33.png" height="60" width="64">
								33枝代表爱你三生三世
							</a>
						</li>
						<li class="amount-li">
							<a href="">
								<img src="${pageContext.request.contextPath}/pimg/tutorial_p3_99.png" height="60" width="64">
								99枝代表长相厮守
							</a>
						</li>
						<li><img src="${pageContext.request.contextPath}/pimg/tutorial_p3_3.png" height="220" width="160"></li>
					</ul>
				</div>
			</div>
		</section>
		
		<section class="t-colour" id="Section04">
			<div class="container">
				<div class="hd">
					<h3>颜色</h3>
					<p>花的颜色也可以诉说不同的语言，你想要表达什么呢？<br>花能说出你心中的秘密</p>
				</div>
				<div class="bd">
					<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p4_1.jpg" height="224" width="480"></a>
					<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p4_2.jpg" height="224" width="480"></a>
					<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p4_3.jpg" height="224" width="480"></a>
					<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p4_4.jpg" height="224" width="480"></a>
				</div>
			</div>
		</section>

		<section class="t-advance" id="Section05">
			<div class="container">
				<div class="hd">
					<h3>进阶篇</h3>
				</div>
				<div class="bd">
					<div class="owl-carousel">
						<div class="item">
							<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p5_1.jpg" title="高端" height="440" width="960"></a>
						</div>
						<div class="item">
							<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p5_2.jpg" title="别致" height="440" width="960"></a>
						</div>
						<div class="item">
							<a href=""><img src="${pageContext.request.contextPath}/pimg/tutorial_p5_3.jpg" title="珍藏" height="440" width="960"></a>
						</div>
					</div>
					<div class="prev">prev</div>
					<div class="next">next</div>
				</div>
			</div>
		</section>
	</div>
	

<script type="text/javascript" charset="gbk" src="${pageContext.request.contextPath}/pimg/common.js"></script>
<script type="text/javascript" charset="gbk" src="${pageContext.request.contextPath}/pimg/owl.carousel.min.js"></script>
<script>
$('#loginModal').modal({backdrop: 'static', keyboard: false, show: false});
$('#loginModal').on('shown.bs.modal', function () {
	var $this = $(this);
	var $modal_dialog = $this.find('.modal-dialog');
	$this.css('display', 'block');
	$modal_dialog.css({'margin-top': Math.max(0, ($(window).height() - $modal_dialog.height()) / 2) });
});

//关注end
		$(function() {
		 	// 进阶篇tabs
		 	var owl = $(".owl-carousel");
			owl.owlCarousel({
				mouseDrag: false,
				touchDrag : false,
      			slideSpeed : 300,
      			paginationSpeed : 400,
      			singleItem: true,
      			autoPlay: true,
      			navigation: false,
      			afterInit: customPager,
			});

			function customPager() {
			    $.each(this.owl.userItems, function (i) {
			        var titleData = jQuery(this).find('img').attr('title');
			        var paginationLinks = jQuery('.owl-controls .owl-pagination .owl-page span');
			    	$(paginationLinks[i]).append(titleData);
			    });
			};

			$(".next").click(function(){
				owl.trigger('owl.next');
			})
			$(".prev").click(function() {
				owl.trigger('owl.prev');
			})
		});
	</script>
</body>
</html>

