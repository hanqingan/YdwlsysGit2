<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资料下载</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
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
						<li><a href="../index.html">学院概况</a></li>
					  	<li class="active"><a href="edu.html">教育教学</a></li>
					  	<li><a href="#">科教研究</a></li>
					  	<li><a href="#">学团工作</a></li>
					  	<li><a href="../dangzheng/dangzheng.html">党政思建</a></li>		
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
		
		
		<div id="detail2-box" class="clearfix">
			<div class="tit-80">资料下载 - 查看详情</div>
			<div class="tabula-box">
				<div class="max-tit">教育教学</div>
				<ul>
				<li><a href="#">本科生教育</a></li>
					<li><a href="http://152.136.104.61:8080/DQAndInformationWeb/professionalIntrocducion.html">&emsp;&emsp;专业介绍</a></li>
					<li><a href="jiaoyujiaoxue/trainProgram.jsp">&emsp;&emsp;培养方案</a></li>
					<li><a href="jiaoyujiaoxue/speTrainProgram.jsp">&emsp;&emsp;特色培养项目</a></li>
					<li><a href="#">专科生教育</a></li>
					<li><a href="http://152.136.104.61:8080/DQAndInformationWeb/professionalIntrocducion.html">&emsp;&emsp;专业介绍</a></li>
					<li><a href="jiaoyujiaoxue/trainProgram.jsp">&emsp;&emsp;培养方案</a></li>
					<li><a href="jiaoyujiaoxue/speTrainProgram.jsp">&emsp;&emsp;特色培养项目</a></li>
					<li><a href="/DQAndInformationWeb/list_text">教学动态</a></li>
					<li><a href="jiaoyujiaoxue/courseBuild.jsp">课程建设</a></li>
					<li><a href="jiaoyujiaoxue/laborBuild.jsp">实验室建设</a></li>
					<li><a href="/DQAndInformationWeb/aa">资料下载</a></li>
				</ul>
			</div>
			<div class="content-box">
				<h1>资料下载</h1>
				<ul>	
					<li>
						<c:forEach items="${list}" var="item">
							<a href="#">
								<div style="float: left;">
									<td style="font-size: 50px">${item.fileName}</td>
								</div>
								
								<div style="float: right;">	
									<td style="font-size: 50px">${item.fileTime}</td>
									<td style="font-size: 50px">${item.fileOwner}</td>
									<td style="font-size: 50px"><a href="xiazai?fileName=${item.fileName}">下载</td>
								</div>
							</a><br /><hr />
						</c:forEach>
					</li>
				</ul>
				<div class="tcdPageCode">
					<span class="disabled">上一页</span>
					<span class="current">1</span>
					<a href="javascript:;" class="tcdNumber">2</a>
					<a href="javascript:;" class="tcdNumber">3</a>
					<a href="javascript:;" class="tcdNumber">4</a>
					<span>...</span>
					<a href="javascript:;" class="tcdNumber">100</a>
					<a href="javascript:;" class="nextPage">下一页</a></div>
				</div>
			</div>
		</div>
			
		
		
	
	
	
	
	<div class="footer">
		<div class="container">
		  <div class="footer_top">
			<div class="col-sm-3">
			   <ul class="list1">
			   	<h3>关于本站</h3>
			   	 <li><a href="#">网站目录</a></li>
			   	 <li><a href="#">版本更新</a></li>
			   	 <li><a href="#">制作团队</a></li>
			     <li><a href="#">服务信箱</a></li>
			   </ul>
			</div>
			<div class="col-sm-3">
			  <ul class="list1">
			    <h3>联系我们</h3>
			   	 <li><a href="#">院长信箱</a></li>
			   	 <li><a href="#">本科生招生</a></li>
			   	 <li><a href="#">专科生招生</a></li>
			  </ul>
			</div>
			<div class="col-sm-3">
			  <ul class="socials">
                 <li><a href="#"><i class="fa fb fa-facebook"></i></a></li>
                 <li><a href="#"><i class="fa tw fa-twitter"></i></a></li>
              </ul>
              <ul class="list2">
				<li><strong class="phone">0432-63509888</strong><br><small>Mon - Fri / 9.00AM - 06.00PM</small></li>
			  </ul>
			</div>
			<div class="clearfix"> </div>
		   </div>
		 </div>
	</div>
	<div class="copy">
	     <p>Copyright©2018-2019吉林农业科技学院电气与信息工程学院版权所有</p>
    </div>
</body>
</html>