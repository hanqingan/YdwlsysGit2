<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
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
					  	<li class="active"><a href="about.html">教育教学</a></li>
					  	<li><a href="services.html">科教研究</a></li>
					  	<li><a href="blog.html">学团工作</a></li>
					  	<li><a href="contact.html">党建思政</a></li>	
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
	<style>
	 .essay{
	 	height: 900px;
	 }
	 .essay h1{
	 	text-align: center;
	 	line-height: 100px;
	 }
	 .essay p
	     {
	    
		text-align: center;
	 	line-height: 18px;	
	 }
	 .essay-header{
	 	height: 150px;
	 	border-bottom: 2px #ccc solid;
	 }
	 .essay ul{
	 
	 	width: 300px;
	 	height: 50px;
	 	float:right;
	    margin-right: 400px;
	    margin-bottom: 15px;

	 }
	  .essay ul p{
	 float: left; 

	 }
	 .zhengwen{
	 	
	 	margin:60px auto;
	 	width: 1200px;
	 	height: 700px;
	 	
	 }
	 }
	</style>
	<c:forEach items="${list}" var="list">
   <div class="essay">
	  	   <div class="essay-header">
	  	   	 <h1>${list.vtest_name}</h1>
	  	   	 <ul> <p>指导教师：李鹏</p>
	  	   	 <p>时间：2019年6月17日08:59:08</p>
	  	   	 </ul>
	  	   	
	  	   </div>
	  	   <div class="essay-moddle">
	  	   	<p class="zhengwen">
	  	 <%--   ${list.cessay} --%>
	  	<img alt="" src="${pageContext.request.contextPath}/${list.cimage}">
	  	   	</p>
	  	   </div>
	  </div>
<%--  <img alt="" src="${pageContext.request.contextPath}/${list.cimage}"> --%>
 </c:forEach>
	



   <div class="footer">
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

</body>
</html>