<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
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
 <script language="javascript">
function chg(obj)
{
    if(obj.options[obj.selectedIndex].value =="0")
    document.getElementById("select_else").style.display="";
    else
    document.getElementById("select_else").style.display="none";
}
  </script>
	</head>
 <body> 
  <div id="fh5co-page">
		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
		<aside id="fh5co-aside" role="complementary" class="border js-fullheight">

			<h1 id="fh5co-logo"><a href="index.html"><img src="images/logo-colored.png" alt="Free HTML5 Bootstrap Website Template"></a></h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li><a href="index.jsp">上传图片</a></li>
					<li class="fh5co-active"><a href="addClassify.jsp">添加分类</a></li>
				</ul>
			</nav>

			

		</aside>
       		<div id="fh5co-main">
		<div class="fh5co-narrow-content">
				<div class="row">
					<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
						<h1 class="fh5co-heading-colored">添加标签类别</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
						<p class="fh5co-lead">通过手动输入标签名，选择添加一级或二级标签</p>
						<p>
<form name="myform" id="myform" action="servlet/AddClassifyServlet"
			method="post">
		   分类名<input type="text" name="name" id="name"/>
		    <select name="parentId" id="parentId" onchange="chg(this)">
		          <option value="-1">一级</option>
		          <option value="0">二级</option>
	       </select>
	      
            <jsp:useBean id="db" class="database.ImageIdentification" scope="page" />
           <select id="select_else" style="display:none" name="secId">  
              <option>--请选择一级分类--</option>
              <%
                 Connection connection = db.getConnection();
		     	 PreparedStatement preparedStatement;
			     String sql = "select *  from classify where parentId=-1";
			     preparedStatement = connection.prepareStatement(sql);
			     ResultSet rs = preparedStatement.executeQuery();
			     while (rs.next()){
               %>
               <option><%=rs.getString("name")%><%}%></option>
           </select>
		         
			<button type="submit" id="save" class="btn btn-primary btn-outline">保存</button>
		</form>
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
