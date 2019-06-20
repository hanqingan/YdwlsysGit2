<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>学团工作</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="shortcut icon" href="images/favicon.ico">
	
	<!-- include main css -->
	<link rel="stylesheet" type="text/css" href="css/slick.css"/>	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css"/>
	<link rel="stylesheet" type="text/css" href="css/xtStyle.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css"/>
	
    
</head>
<body>

<!--内页内容区域-->
<div class="container ny-wrap">
	<div class="pro-title clearfix">
		<span class="pull-left">经典案例</span>
		<p class="pull-right">
			<a class="active" href="#">经典案例</a><em>|</em>
			<a href="#">新增分类</a>
		</p>
	</div>
	<div class="container caseshow">
		<div class="fshow-title">
			<h1><c:forEach items="${list1}" var="t">
			 ${t.getText_name()}
			</c:forEach></h1>
			<div class="date">
				<span>电气与信息工程学院</span>
				<span>发布时间：2019/06/18</span>
				<span>作者：白熊</span>
			</div>
		</div>
		<div class="fshow-con">
			<p><c:forEach items="${list1}" var="t">
			 ${t.getText()}
			</c:forEach></p>
			<div class="fshowimg clearfix">
				<div class="pic">
			 <c:forEach items="${list1}" var="t">
			 <img src=${ t.getImage()} class="vcenter" alt="" />
			</c:forEach>
			</div>
			</div>
		</div>
		
	</div>
	





<!--Include Js-->
<script src="http://apps.bdimg.com/libs/jquery/1.8.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>

<!--移动端导航-->
<script src="js/jquery.mmenu.all.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<!--slick-->
<script src="js/slick.min.js" type="text/javascript" charset="utf-8"></script>


<!--placeholder-->
<script src="js/jquery.placeholder.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function(){ $('input, textarea').placeholder(); });
</script>
<script>
	$(".xgcase-con ul").slick({
			arrows: true,
			slidesToShow: 2,
			dots:false,
			autoplaySpeed:2000,
			autoplay:true,
			speed:500,
		})
</script>

<!--<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->

</body>
</html>
