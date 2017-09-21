<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	

  	

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
 <body> 
  <div id="fh5co-page">
		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
		<aside id="fh5co-aside" role="complementary" class="border js-fullheight">

			<h1 id="fh5co-logo"><a href="index.html"><img src="images/logo-colored.png" alt="Free HTML5 Bootstrap Website Template"></a></h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li class="fh5co-active"><a href="index.jsp">上传图片</a></li>
					<li><a href="addClassify.jsp">添加分类</a></li>
				</ul>
			</nav>

			

		</aside>
        <div class="copyrights"> <a href="http://www.cssmoban.com/" ></a></div>

		<div id="fh5co-main">
			<div class="fh5co-gallery">

				<a class="gallery-item" href="#">
					<img src="images/work_1.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>大自然</h2>
						<span>4 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_2.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>人物</h2>
						<span>7 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_3.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>天空</h2>
						<span>2 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_4.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>建筑</h2>
						<span>2  张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_5.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>人物 2</h2>
						<span>1 张</span>
					</span>
				</a>
				
				<a class="gallery-item" href="#">
					<img src="images/work_6.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>海滩</h2>
						<span>4  张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_7.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>美食</h2>
						<span>3 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_8.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>旅游</h2>
						<span>9 张</span>
					</span>
				</a>

				<a class="gallery-item" href="#">
					<img src="images/work_9.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>家族</h2>
						<span>2 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_10.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>食物</h2>
						<span>10 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_11.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>玩具</h2>
						<span>2 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_12.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>汽车</h2>
						<span>5  张</span>
					</span>
				</a>

				<a class="gallery-item" href="#">
					<img src="images/work_13.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>动物</h2>
						<span>4 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_14.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>建筑 2</h2>
						<span>1 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_15.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>气球</h2>
						<span>1 张</span>
					</span>
				</a>
				<a class="gallery-item" href="#">
					<img src="images/work_16.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>动物 2</h2>
						<span>2 张</span>
					</span>
				</a>
			</div>


			<div class="fh5co-counters" style="background-image: url(images/hero.jpg);" data-stellar-background-ratio="0.5" id="counter-animate">
				<div class="fh5co-narrow-content animate-box">
					<div class="row" >
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0" data-to="7" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">用户</span>
						</div>
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0" data-to="52" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">图片</span>
						</div>
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0" data-to="7232" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">像素</span>
						</div>
					</div>
				</div>
			</div>
		

			<div class="fh5co-narrow-content">
				<div class="row">
					<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
						<h1 class="fh5co-heading-colored">上传图片</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
						<p class="fh5co-lead">通过点击上传按钮，选择本地图片，然后上传到服务器</p>
						<p>
						<form name="myform" id="myform" action="servlet/ImportImageServlet" enctype="multipart/form-data"
			             method="post">
			             <input type="file" id="seed" name="seed">
			             <button id="save" class="btn btn-primary btn-outline">上  传</button>
		                </form>
						<!-- <a href="#" class="btn btn-primary btn-outline">上  传</a> -->
						</p>
					</div>
					
				</div>
			</div>

		</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>
