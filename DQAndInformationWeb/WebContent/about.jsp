<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
<!-- <script type="text/javascript" charset="utf-8">
	$(function() {
		$('.about-grid a').Chocolat({linkImages:false});
	});
</script> -->
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
						<li><a href="index.html">Home</a></li>
					  	<li class="active"><a href="about.html">About</a></li>
					  	<li><a href="services.html">Services</a></li>
					  	<li><a href="blog.html">Blog</a></li>
					  	<li><a href="contact.html">Contact</a></li>		
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
	<div class="grid_1">
	   <div class="container">
		  <div class="box_1">
			<h3>招 生 就 业</h3>
		  </div>
		  <div class="col-md-12 about_banner"><img src="images/timg1.JPG" class="img-responsive" alt=""/></div>
		  <div class="box_20">
			  <div class="col-sm-6 box_3">
			  	<p>&nbsp&nbsp&nbsp&nbsp 学院拥有吉林省信息技术类“双师双能型”教师培训基地，吉林省虚拟仿真实习基地，吉林省智慧农业工程研究中心；4个企业联合实验室和26个校内专业实验室。拥有1个校级优秀教学团队，1门省级精品课程,1门校级精品课程，3门校级优质课程，13门校级优秀课程；获得校级教学成果一等奖1项、二等奖1项、三等奖2项。</p>
			  </div>
			  <div class="col-sm-6 box_3">
			  	<p>&nbsp&nbsp&nbsp&nbsp 学院大力开展第二课堂活动，组建大学生创新创业团队，积极参加全国、吉林省大学生创新创业大赛等各项比赛，获得国家级奖项50余项、省级奖项60余项，为学生高质量就业打下坚实的基础。近五年，学院毕业生就业覆盖全国31个省（市），就业率平均超过95%以上，学生就业专业对口率、就业率显著提升。</p>
			  </div>
		      <div class="clearfix"> </div>
		  </div>
	   </div>
	</div>
	<div class="grid_3">
		<div class="container"> 
			<h3>优秀毕业生</h3>
		  <div class="about-grids">
						<div class="col-sm-3 about-grid">
							<a href="images/s1.jpg" title="name" rel="title2">
						    <div class="view view-first">
                              <img src="images/pic8.jpg" class="img-responsive" alt=""/>
                              <div class="mask">
                                <div class="info"><img src="images/magnify-alt.png" alt=""></div>
		                      </div>
                             </div>
							</a>
							<h4><a href="#">王大雷</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.</p>
						</div>
						<div class="col-sm-3 about-grid">
							<a href="images/s2.jpg" title="name" rel="title2">
						    <div class="view view-first">
                              <img src="images/pic9.jpg" class="img-responsive" alt=""/>
                              <div class="mask">
                                <div class="info"><img src="images/magnify-alt.png" alt=""></div>
		                      </div>
                             </div>
							</a>
							<h4><a href="#">李铁柱</a></h4>
							<p>他去阿里巴巴了 老狠了		</div>
						<div class="col-sm-3 about-grid">
							<a href="images/s3.jpg" title="name" rel="title2">
						    <div class="view view-first">
                              <img src="images/pic10.jpg" class="img-responsive" alt=""/>
                              <div class="mask">
                                <div class="info"><img src="images/magnify-alt.png" alt=""></div>
		                      </div>
                             </div>
							</a>
							<h4><a href="#">杨翠花</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.</p>
						</div>
						<div class="col-sm-3 about-grid">
							<a href="images/s4.jpg" title="name" rel="title2">
						    <div class="view view-first">
                              <img src="images/pic11.jpg" class="img-responsive" alt=""/>
                              <div class="mask">
                                <div class="info"><img src="images/magnify-alt.png" alt=""></div>
		                      </div>
                             </div>
							</a>
							<h4><a href="#">杨建国</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.</p>
						</div>
				        <div class="clearfix"> </div>
	      </div>
	   </div>
	</div>
	<div class="advantages"> 
		<div class="container">
			<div class="col-md-6">
				<h3 class="m_3">本丶专招生就业</h3>
				
				<c:forEach items="${list}" var="t">
				<div class="feature about_box1">
	                   <i class="fa fa-globe"> </i>
	                   <a href="${pageContext.request.contextPath}/zs?method=findEssay&name=${t.vtest_name}"><h4>${t.vtest_name}</h4></a>                  
	                      指导教师:${t.vtest_teacher} </br>
	                      发文时间:${t.vtest_time}
	                   
	            </div>
	            </c:forEach>
	            <!-- 
	            <div class="feature about_box1">
	                   <i class="fa fa-heart"> </i>
	                   <h4>Claritas est etiam processus</h4>
	                    <p>
	                        Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
	                    </p>
	            </div>
	            <div class="feature">
	                   <i class="fa fa-gears"> </i>
	                   <h4>Mirum est notare quam</h4>
	                    <p>
	                        Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
	                    </p>
	            </div> -->
			</div>
			<div class="col-md-6">
				<h3 class="m_3">招聘信息</h3>
			
				<c:forEach items="${list1}" var="t1">
				<ul class="about_box span_1">
				  <li class="box_img"><img src="images/pic9.jpg" class="img-responsive" alt=""/></li>
				  <li class="box_desc">${t1.vtest_name }</li>
				   
				      
				          <p>    指导教师:${t1.vtest_teacher} </br>发文时间:${t1.vtest_time}</p> 
	                                                         
				  <div class="clearfix"> </div>
				</ul>
				</c:forEach>
			</div>
		</div>
	</div>
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