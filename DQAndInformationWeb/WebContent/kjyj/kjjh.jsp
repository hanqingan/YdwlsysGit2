<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>About</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<!------ light-box-script ----->
<script src="js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8" />
<script type="text/javascript" charset="utf-8">
	$(function() {
		$('.about-grid a').Chocolat({linkImages:false});
	});
</script>
<!------ light-box-script ----->
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
						<li ><a href="index.html">学院概况</a></li>
						<li><a href="about.html">教育教学</a></li>
						<li  class="active"><a href="services.html">科教研究</a></li>
						<li><a href="blog.html">学团工作</a></li>
						<li><a href="contact.html">党政思建</a></li>
					</ul>
				<!-- script-nav -->
			<script>
			$("span.menu").click(function(){
				$(".top-nav ul").slideToggle(500, function(){
				});
			});
			</script>
			<!-- //script-nav -->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
        <!--script-->
		<script>
			$(document).ready(function(){
				$(".top-nav li a").click(function(){
					$(this).parent().addClass("active");
					$(this).parent().siblings().removeClass("active");
				});
			});
		</script>
			<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-home").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-home").addClass("fixed");
				}else{
					$(".header-home").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<div class="img3">
			<!-- <h1>这里放置图片</h1> -->
		</div>
		
		<div class="li" >
			<br /><br /><br /><br /><br />
			<h4><li><a href="/DQAndInformationWeb/kjyj/index.jsp">首页</a></li>	</h4>
			<br /><br /><br /><br /><br /><br />
			<h4><li><a href="/DQAndInformationWeb/kj?method=findAll&cid=1">科教动态</a></li></h4>
			<br /><br /><br /><br /><br /><br />
			<h1 ><a href="#">科教计划</a></h1>	
			<br /><br /><br /><br /><br /><br />
			<h4><li><a href="/DQAndInformationWeb/kj?method=findAll&cid=4">科教成果</a></li></h4>
			<br /><br /><br /><br /><br /><br />
			<h4><li><a href="/DQAndInformationWeb/kj?method=findAll&cid=2">研究机构</a></li></h4>
			<br /><br /><br /><br /><br /><br />
			<h4><li><a href="/DQAndInformationWeb/xz?method=doGet&filename=study.txt">资料下载</a></li></h4>
			<br /><br /><br /><br /><br /><br />
		</div>
		
		
		
		
		
		
		
		
		
		
		<div class="tab">
			<!-- //bootstrap -->
			<table border="0" cellspacing="" cellpadding="" align="center" class="table">
				<c:forEach items="${list}" var="t">
			<tr>
					<td><a href="${pageContext.request.contextPath}/kj?method=findByVid&vid=${t.getVid()}"> ${t.getTestname()}&nbsp;</a></td>
					<td> ${t.getVteacher()} &nbsp;</td>
					<td> ${t.getVtime()} &nbsp;</td>

				</tr>
 
</c:forEach>
</table>
				
		</div>
		<!-- /script-for sticky-nav -->
	<!--//header-->
	
   <!-- <div class="footer">
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
	    <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.17sucai.com/" target="_blank" title="17素材网">17素材网</a> - Collect from <a href="http://www.17sucai.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
 -->
</body>
</html>		