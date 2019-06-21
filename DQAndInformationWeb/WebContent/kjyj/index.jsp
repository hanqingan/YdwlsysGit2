<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>电气与信息工程学院</title>
		<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery-1.11.1.min.js"></script>
		<script src="../js/bootstrap.js"></script>
		<!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
		<link href="../css/hstyle.css" rel='stylesheet' type='text/css' />

	</head>
	<body>
		<div class="header wow fadeInUpBig" data-wow-delay="0.4s">
			<div class="container">
				<div class="header_top">
					<h1>Welcome</h1>
					<h2>to our education</h2>
				</div>
			</div>
		</div>
		<div class="header-home">
			<div class="fixed-header">
				<div class="logo wow bounceInDown" data-wow-delay="0.4s">
					<a href="index.html">
						<span class="secondary">Careers,skills</span>
						<span class="main">Ability</span>
					</a>
				</div>
				<div class="top-nav wow bounce" data-wow-delay="0.4s">
					<span class="menu"> </span>
					<ul>
					<li class="active"><a href="/DQAndInformationWeb/LeadershipServlet">学院概况</a></li>
					<li><a href="/DQAndInformationWeb/jiaoyujiaoxue/edu.html">教育教学</a></li>
					<li><a href="/DQAndInformationWeb/kjyj/index.jsp">科教研究</a></li>
					<li><a href="/DQAndInformationWeb/xuetuangongzuo.jsp">学团工作</a></li>
					<li><a href="/DQAndInformationWeb/dangzheng/dangzheng.html">党政思建</a></li>
				</ul>
					<!-- script-nav -->
					<script>
						$("span.menu").click(function() {
							$(".top-nav ul").slideToggle(500, function() {});
						});
					</script>
					<!-- //script-nav -->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--script-->
		<script>
			$(document).ready(function() {
				$(".top-nav li a").click(function() {
					$(this).parent().addClass("active");
					$(this).parent().siblings().removeClass("active");
				});
			});
		</script>
		<!-- script-for sticky-nav -->
		<script>
			$(document).ready(function() {
				var navoffeset = $(".header-home").offset().top;
				$(window).scroll(function() {
					var scrollpos = $(window).scrollTop();
					if (scrollpos >= navoffeset) {
						$(".header-home").addClass("fixed");
					} else {
						$(".header-home").removeClass("fixed");
					}
				});

			});
		</script>
		<!-- /script-for sticky-nav -->
		<!--//header-->
		</div>
		<!-- <div class="col-sm-3">
			<ul class="list1"> -->
		<!-- <li><h3>首页</h3></li> -->
		<div class="li">
			<br /><br /><br /><br /><br />
			<h1><a href="#">首页</a></h1>
			<br /><br /><br /><br /><br /><br />
			<h4>
				<li><a href="/DQAndInformationWeb/kj?method=findAll&cid=1">科教动态</a></li>
			</h4>
			<br /><br /><br /><br /><br /><br />
			<h4>
				<li><a href= "/DQAndInformationWeb/kj?method=findAll&cid=3">科教计划</a></li>
			</h4>
			<br /><br /><br /><br /><br /><br />
			<h4>
				<li><a href="/DQAndInformationWeb/kj?method=findAll&cid=4">科教成果</a></li>
			</h4>
			<br /><br /><br /><br /><br /><br />
			<h4>
				<li><a href="/DQAndInformationWeb/kj?method=findAll&cid=2">研究机构</a></li>
			</h4>
			<br /><br /><br /><br /><br /><br />
			<h4>
				<li><a href="/DQAndInformationWeb/xz?method=doGet&filename=study.txt">资料下载</a></li>
			</h4>
			<br /><br /><br /><br /><br /><br />
		</div>
		<script type="text/javascript">
			function on() {
				var k = document.getElementById("mul");
				k.style.transform = 'rotate(0deg)';
			}

			function out() {
				var k = document.getElementById("mul");
				k.style.transform = 'rotate(25deg)';
			}
		</script>

				<div class="mulu" id="mul" onmouseover="on()" onmouseout="out()">
			<h1 align="center">科教动态</h1><br /><br />
			
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=1">  电气与信息工程学院召开教育教学改革课题立项评审会 </a></h5><br />
			<h5 align="center" ><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=1">  全国大学生电子设计竞赛命题及评审专家吕铁男教授来我院做宣讲报告 </a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=1">  我校在吉林省大学生机器人竞赛中再获佳绩 </a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=1">  我校在大学生程序设计竞赛吉林省赛和东北地区赛中获佳绩 </a></h5>
		

		</div>
		<script type="text/javascript">
			function on1() {
				var k = document.getElementById("m");
				k.style.transform = 'rotate(0deg)';
			}

			function out1() {
				var k = document.getElementById("m");
				k.style.transform = 'rotate(-25deg)';
			}
		</script>
		<div class="m" id='m' onmouseover="on1()" onmouseout="out1()">
			<h1 align="center">科教计划</h1><br /><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=3">  吉林农业科技学院科研奖励管理办法</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=3">  吉林农业科技学院学科带头人选拔和管理办法</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=3">  吉林省市社科联项目2018年度申报和2017年度课题结题的通知 </a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=3">  吉林农业科技学院学科建设管理办法</a></h5>

		</div>
		<script type="text/javascript">
			function on2() {
				var k = document.getElementById("mu");
				k.style.transform = 'rotate(0deg)';
			}

			function out2() {
				var k = document.getElementById("mu");
				k.style.transform = 'rotate(-15deg)';
			}
		</script>
		<div class="mu" id="mu" onmouseover="on2()" onmouseout="out2()">
			<h1 align="center" >科教成果</h1><br /><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=4">  电气与信息工程学院院徽（LOGO）设计大赛圆满成功</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=4">  电气与信息工程学院2017年大学生创新项目组同学到企业参观纪实</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=4">  电气与信息工程学院圆满完成2017年大学生科技创新项目申报工作</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=4">  电气与信息工程学院科研项目管理办法征求意见会</a></h5>

		</div>
		<script type="text/javascript">
			function on3() {
				var k = document.getElementById("muu");
				k.style.transform = 'rotate(0deg)';
			}

			function out3() {
				var k = document.getElementById("muu");
				k.style.transform = 'rotate(15deg)';
			}
		</script>
		<div class="muluu" id="muu" onmouseover="on3()" onmouseout="out3()">

			<h1 align="center">研究机构</h1><br /><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=2">  关于进一步完善省财政科研项目资金管理等政策的若干实施意见</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=2">  吉林农业科技学院科研平台建设与管理办法</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=2">  吉林农业科技学院校内科研基金项目管理办法（征求意见稿）</a></h5><br />
			<h5 align="center"><a href="${pageContext.request.contextPath}/kj?method=findAll&cid=2">  吉林农业科技学院中青年学术骨干遴选和管理办法（征求意见稿）</a></h5>

		</div>
		




		<!-- <div class="footer wow fadeInRight" data-wow-delay="0.4s">
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
					<ul class="list1">
						<h3>功能待定</h3>
						<li><a href="#">功能待定</a></li>
						<li><a href="#">功能待定</a></li>
						<li><a href="#">功能待定</a></li>
						<li><a href="#">功能待定</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<ul class="socials">
						<li><a href="#"><i class="fa fb fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa tw fa-twitter"></i></a></li>
					</ul>
					<ul class="list2">
						<li><strong class="phone">+0018 58287 58</strong><br><small>Mon
									- Fri / 9.00AM - 06.00PM</small></li>
						<li>Questions? <a href="malito:mail@demolink.org">mail(at)ability.com</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="copy">
		<p>
			Copyright©2018-2019吉林农业科技学院电气与信息工程学院版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：吉林市吉林经济技术开发区翰林路77号&nbsp;&nbsp;邮编：132101&nbsp;&nbsp;电话：0432-63509888、63509118
		</p>
	</div> -->

	</body>
</html>
