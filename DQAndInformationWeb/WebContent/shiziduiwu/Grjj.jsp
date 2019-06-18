<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人简介</title>
		<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery-1.11.1.min.js"></script>
		<script src="../js/bootstrap.js" ></script>
		<!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
		<!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript" >
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);
	
			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!--webfont-->
		<!----font-Awesome----->
		<!-- <link rel="stylesheet" href="fonts/css/font-awesome.min.css"> -->
		<!----font-Awesome----->
		<!--Animation-->
		<script src="../js/wow.min.js"></script>
		<link href="../css/animate.css" rel='stylesheet' type='text/css'/>
		<script>
			new WOW().init();
		</script>
	</head>
<body>
	<div class="header_about"> </div>
		<div class="header-home">
		<div class="fixed-header">
				<div class="logo">
					<a href="index.html">
						<span class="secondary">Careers,skills</span>
						<span class="main">Ability</span>
					</a>
				</div>
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li class="active"><a href="#">学院概况</a></li>
						<li><a href="#">教育教学</a></li>
						<li><a href="#">科教研究</a></li>
						<li><a href="#">学团工作</a></li>
						<li><a href="../../dangzheng/dangzheng.html">党政思建</a></li>
					</ul>
					<!-- script-nav -->
					<script>
						$("span.menu").click(function() {
							$(".top-nav ul").slideToggle(500, function() {});
						});
					</script>
					<!-- //script-nav -->
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="fixed-header">
				<div class="logo" style="width:375.65px;">
					<a href="index.html">
						<span class="secondary">电气与信息工程学院</span>
						<span class="main" style="font-size:40px">师资队伍</span>
					</a>
				</div>
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li class="active"><a href="../../index.html">首页</a></li>
						<li><a href="zaizhijiaoshi.html">在职教师</a></li>
						<li><a href="zaizhijiaoshi.html">按拼音排序</a></li>
						<li><a href="zzjszy.html">按专业排序</a></li>
						<li><a href="zzjszc.html">按职称排序</a></li>
					</ul>
					<!-- script-nav -->
					<script>
						$("span.menu").click(function() {
							$(".top-nav ul").slideToggle(500, function() {});
						});
					</script>
					<!-- //script-nav -->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<c:forEach items="${list}" var="t">
						<div class="w3l_main_grid_top w3l_main_grid_top1">
						<img alt="" src="${pageContext.request.contextPath}/${t.getImage()}">
						</div>
						<div class="w3ls_order w3ls_order2">
										${t.getName()}
									</div>
									<div class="w3l_main_grid_middle w3l_main_grid_middle2">
										<ul>
											<li>职称：${t.getPrat()}</li>
											<li>职务：${t.getPost()}</li>
											<li>主讲课程：${t.getScore()}</li>
											<li>科学研究：${t.getScre()}</li>
											<li>教学研究：${t.getTr()}</li>
										</ul>
									</div>
</c:forEach>
</div>
<div class="footer wow fadeInRight" data-wow-delay="0.4s">
					<div class="container">
						<div class="footer_top">
							<div class="col-sm-3">
								<ul class="list1">
									<h3>Browse</h3>
									<li><a href="#">Prices</a></li>
									<li><a href="#">Courses</a></li>
									<li><a href="#">Blog</a></li>
									<li><a href="#">Contacts</a></li>
								</ul>
							</div>
							<div class="col-sm-3">
								<ul class="list1">
									<h3>Next Courses</h3>
									<li><a href="#">Biology</a></li>
									<li><a href="#">Management</a></li>
									<li><a href="#">History</a></li>
									<li><a href="#">Literature</a></li>
								</ul>
							</div>
							<div class="col-sm-3">
								<ul class="list1">
									<h3>About Learn</h3>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Apply</a></li>
									<li><a href="#">Terms and Conditions</a></li>
									<li><a href="#">Register</a></li>
								</ul>
							</div>
							<div class="col-sm-3">
								<ul class="socials">
									<li><a href="#"><i class="fa fb fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa tw fa-twitter"></i></a></li>
								</ul>
								<ul class="list2">
									<li><strong class="phone">+0018 58287 58</strong><br><small>Mon - Fri / 9.00AM - 06.00PM</small></li>
									<li>Questions? <a href="malito:mail@demolink.org">mail(at)ability.com</a></li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="copy">
					<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.17sucai.com/" target="_blank"
						 title="17素材网">17素材网</a> - Collect from <a href="http://www.17sucai.com/" title="网页模板" target="_blank">网页模板</a></p>
				</div>
</body>
</html>