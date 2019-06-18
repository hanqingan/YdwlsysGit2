<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>专业介绍</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 --><!--webfont-->
<!-- <link href='http://fonts.useso.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
 --><!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<!------ light-box-script ----->
<script src="js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8" />
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
						<li><a href="index.html">学院概况</a></li>
					  	<li><a href="about.html">教育教学</a></li>
					  	<li><a href="services.html">科教研究</a></li>
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
		<!-- /script-for sticky-nav -->
	<!--//header-->
   <div class="grid_4">
   <c:forEach items="${list}" var="t">
		<div class="container"> 
		
			<h1 class="blog_head">${t.getP_Name()}</h1>
		    <div class="blog_grid">
		      <div class="blog_box">
		        <a href="" class="mask"> <img alt="" src="${pageContext.request.contextPath}/${t.getP_Image()}" class="img-responsive zoom-img" ></a>
				<h3><a href="#">${t.getP_Name()}</a></h3>
		     	<div class="links">
		  		    <ul>
		  		    
		  				<li><a href="#"><span>${t.getP_Degree()}</span></a></li><br>
		  				
		  				<li><a href="professionalIntrocducion.html">GoBack</a></li><br>
		  			
		  		    </ul>
		  		</div>
		     	<p>
		     	
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t.getP_Target()}<br>
                  &nbsp;&nbsp;${t.getP_MainCourse()}<br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t.getP_EmpDir()}<br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t.getP_Detail()}<br>
                </c:forEach>　
                </p>
		</div>  
	</div>
</body>
</html>