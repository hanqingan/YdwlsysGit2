<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学院概况</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/nianfen.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/zuzhi.css" media="screen"
	type="text/css" />
<link href="css/style02.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    
</script>
<!--webfont-->
<!-- <link href='http://fonts.useso.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
-->
<!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<!------ light-box-script ----->
<script src="js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen" charset="utf-8" />
<!-- <script type="text/javascript" charset="utf-8">
$(function() {
    $('.about-grid a').Chocolat({linkImages:false});
});
</script>
-->
<style>
p.a {
	text-indent: 2em;
}

div.zuzhi {
	margin: 0 auto;
}
</style>
<!------ light-box-script ----->
<link rel="stylesheet" href="css/reset.css">
<!-- CSS reset -->
<link rel="stylesheet" href="css/xianrenlingdao.css">
<!-- Resource style -->
<script src="js/modernizr.js"></script>
<!-- Modernizr -->

<link rel="stylesheet" href="css/mue.css">
</head>
<body>
	<div class="header_about"></div>
	<div class="header-home">
		<div class="fixed-header">
			<div class="logo">
				<a href="index.html"> <span class="secondary">Careers,skills</span>
					<span class="main">Ability</span>
				</a>
			</div>
			<div class="top-nav">
				<span class="menu"> </span>
				<ul>
					<li class="active"><a href="/DQAndInformationWeb/LeadershipServlet">学院概况</a></li>
					<li><a href="/DQAndInformationWeb/jiaoyujiaoxue/edu.html">教育教学</a></li>
					<li><a href="#">科教研究</a></li>
					<li><a href="/DQAndInformationWeb/xuetuangongzuo.jsp">学团工作</a></li>
					<li><a href="/DQAndInformationWeb/dangzheng/dangzheng.html">党政思建</a></li>
				</ul>
				<!-- script-nav -->
				<script>
					$("span.menu").click(function() {
						$(".top-nav ul").slideToggle(500, function() {
						});
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
	<script type="text/javascript">
		window.onload = function() {
			var ele = document.getElementById("container");
			ele.addEventListener("click", function(e) {
				var arr = document.getElementsByTagName("a");
				for (var i = 0; i < arr.length; i++) {
					arr[i].style.color = "black";
				}
				e.target.style.color = "red";
			});
		}
	</script>
	<div class="mue" id="container"
		style="position: fixed; left: 5px; top: 430px; font-size: 20px; line-height: 30px; width: 84px; height: 230px;background-color: rgba(102, 146, 191, 0.44);
            /*边框*/
            border: solid 1px rgba(102, 146, 191, 0.68);
            /*边角弧度*/
            border-radius: 10px;
            /*阴影*/
            -moz-box-shadow:2px 2px 5px #333333; 
            -webkit-box-shadow:2px 2px 5px #333333; 
            box-shadow: 7px 15px 30px #285a63;
		">

		<a href="javascript:" ; onclick="dianji1()">院长致辞</a> <a
			href="javascript:" ; onclick="dianji2()">学院简介</a> <a
			href="javascript:" ; onclick="dianji3()">现任领导</a> <a
			href="javascript:" ; onclick="dianji4()">办学特色</a> <a
			href="javascript:" ; onclick="dianji5()">历史沿革</a> <a
			href="javascript:" ; onclick="dianji6()">组织结构</a> <a
			href="index.html">返回主页</a>

	</div>

	<script type="text/javascript">
		function dianji1() {
			document.getElementById("geshi1").style.display = "block";
			document.getElementById("geshi2").style.display = "none";
			document.getElementById("geshi3").style.display = "none";
			document.getElementById("geshi4").style.display = "none";
			document.getElementById("geshi5").style.display = "none";
			document.getElementById("geshi6").style.display = "none";
		}
		function dianji2() {
			document.getElementById("geshi1").style.display = "none";
			document.getElementById("geshi2").style.display = "block";
			document.getElementById("geshi3").style.display = "none";
			document.getElementById("geshi4").style.display = "none";
			document.getElementById("geshi5").style.display = "none";
			document.getElementById("geshi6").style.display = "none";
		}
		function dianji3() {
			document.getElementById("geshi1").style.display = "none";
			document.getElementById("geshi2").style.display = "none";
			document.getElementById("geshi3").style.display = "block";
			document.getElementById("geshi4").style.display = "none";
			document.getElementById("geshi5").style.display = "none";
			document.getElementById("geshi6").style.display = "none";
		}
		function dianji4() {
			document.getElementById("geshi1").style.display = "none";
			document.getElementById("geshi2").style.display = "none";
			document.getElementById("geshi3").style.display = "none";
			document.getElementById("geshi4").style.display = "block";
			document.getElementById("geshi5").style.display = "none";
			document.getElementById("geshi6").style.display = "none";
		}
		function dianji5() {
			document.getElementById("geshi1").style.display = "none";
			document.getElementById("geshi2").style.display = "none";
			document.getElementById("geshi3").style.display = "none";
			document.getElementById("geshi4").style.display = "none";
			document.getElementById("geshi5").style.display = "block";
			document.getElementById("geshi6").style.display = "none";
		}
		function dianji6() {
			document.getElementById("geshi1").style.display = "none";
			document.getElementById("geshi2").style.display = "none";
			document.getElementById("geshi3").style.display = "none";
			document.getElementById("geshi4").style.display = "none";
			document.getElementById("geshi5").style.display = "none";
			document.getElementById("geshi6").style.display = "block";
		}
	</script>


	<!-- /script-for sticky-nav -->
	<!--//header-->
	<div class="grid_1" id="geshi1" style="display: block;">
		<div class="container">
			<div class="box_1">
				<h3>院 长 致 辞</h3>
			</div>

			<div class="box_20">
				<div class="col-sm-6 box_3">
					<img src="images/xueyuangaikuang/yuanzhang.jpg"
						class="img-responsive" alt="" />
				</div>
				<div class="col-sm-6 box_3" style="text-align:left">
					<p class="a">欢迎您来到吉林农业科技学院电气与信息工程学院！</p>
					<p class="a">吉林农业科技学院电气与信息工程学院全面贯彻执行党的教育方针，以“提升人才培养质量”为目标，坚持创新驱动发展，坚持应用型本科教育转型发展。现有计算机科学与技术、网络工程、软件工程、电子信息科学与技术、电气工程及其自动化、统计学共六个本科专业和移动通信技术一个专科专业。其中电子信息科学与技术专业为吉林省“卓越工程师教育培养计划”试点专业，计算机科学与技术专业为吉林省“校企联合、工学融合”的计算机应用技术人才培养模式创新实验区并在吉林省专业评估中获新建本科专业定性、定量和总分三个第一的成绩，拥有吉林省信息技术类“双师双能型”教师培训基地，吉林省虚拟仿真实习基地（电子），吉林省智慧农业工程研究中心；校级计算机科学与技术校内重点培育学科，校级校外优秀实习基地和校级实验示范中心。</p>

				</div>

				<div class="clearfix"></div>
			</div>
			<div class="box_20">
				<div class="box_3" style="text-align:left">
					<p class="a">2015年与珠海世纪鼎利科技有限公司进行深度校企合作，成立学校第一个行业学院——鼎利学院，在移动互联开发、大数据、嵌入式、智能制造、移动通信技术等方面开展深度合作，企业投资4000万元建立了校内产教融合实践和创新基地，在理论教学、实践教学和科研创新方面开展深度合作。实行“2.5+1.5”工学交替、产教融合的UBL培养体系，以企业真实项目为载体实施项目化教学，突出培养学生的实践能力、职业能力、创新能力和创业能力的培养，为学生高质量就业打下坚实的基础。</p>
					<p class="a">近年来，学院学生在国际、国内各级大学生程序设计竞赛、在全国移动互联网大赛、全国大学生电子设计竞赛、数学建模、吉林省“互联网+”大学生创新创业大赛、挑战杯等各项比赛中成绩显著，获得国家级奖项50余项、省级奖项60余项。学生考研录取率、国家电网通过率、10万元以上高年薪就业率不断攀升。</p>
					<p class="a">我们诚挚欢迎爱好计算机技术、电子、电气技术的有志青年加入吉林农业科技学院电气与信息工程学院大家庭！</p>
					<p class="a">我们在这里不见不散！年与珠海世纪鼎利科技有限公司进行深度校企合作，成立学校第一个行业学院——鼎利学院，在移动互联开发、大数据、嵌入式、智能制造、移动通信技术等方面开展深度合作，企业投资4000万元建立了校内产教融合实践和创新基地，在理论教学、实践教学和科研创新方面开展深度合作。实行“2.5+1.5”工学交替、产教融合的UBL培养体系，以企业真实项目为载体实施项目化教学，突出培养学生的实践能力、职业能力、创新能力和创业能力的培养，为学生高质量就业打下坚实的基础。近年来，学院学生在国际、国内各级大学生程序设计竞赛、在全国移动互联网大赛、全国大学生电子设计竞赛、数学建模、吉林省“互联网+”大学生创新创业大赛、挑战杯等各项比赛中成绩显著，获得国家级奖项50余项、省级奖项60余项。学生考研录取率、国家电网通过率、10万元以上高年薪就业率不断攀升。我们诚挚欢迎爱好计算机技术、电子、电气技术的有志青年加入吉林农业科技学院电气与信息工程学院大家庭！我们在这里不见不散！</p>


				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<div class="grid_1" id="geshi2" style="display: none;">
		<div class="container">
			<div class="box_1">
				<h3>学 院 简 介</h3>
			</div>
			<div class="box_20">
				<div class="col-sm-6 box_3">
					<img src="images/xueyuangaikuang/xueyuan.jpg"
						class="img-responsive" alt="" />
				</div>
				<div class="col-sm-6 box_3" style="text-align:left">
					<p class="a">电气与信息工程学院源于1994年3月成立的计算机系，后经多次机构调整和更名，2013年3月更名现在的学院名称。</p>
					<p class="a">吉林农业科技学院电气与信息工程学院全面贯彻执行党的教育方针，以“提升人才培养质量”为目标，坚持创新驱动发展，坚持应用型本科教育转型发展。现有计算机科学与技术、网络工程、软件工程、电子信息科学与技术、电气工程及其自动化、统计学共六个本科专业和移动通信技术一个专科专业。其中电子信息科学与技术专业为吉林省“卓越工程师教育培养计划”试点专业，计算机科学与技术专业为吉林省“校企联合、工学融合”的计算机应用技术人才培养模式创新实验区并在吉林省专业评估中获新建本科专业定性、定量和总分三个第一的成绩，拥有吉林省信息技术类“双师双能型”教师培训基地，吉林省虚拟仿真实习基地（电子），吉林省智慧农业工程研究中心；校级计算机科学与技术校内重点培育学科，校级校外优秀实习基地和校级实验</p>

				</div>

				<div class="clearfix"></div>
			</div>
			<div class="box_20">
				<div class="box_3" style="text-align:left">
					<p>示范中心。此外，还建立了4个企业联合实验室和产学研基地和校内专业实验室26个。学院教师承担省级以上科研项目60余项，国家实用新型专利4项，软件著作权15项，出版专著（含教材）15部，获省级奖励30余项，在国家级、省级以上刊物上发表论文460余篇。还承接了大量的服务企业与地方政府的横向合作项目，获得了一批具有广泛影响的理论成果和产生显著效益的应用成果。</p>
					<p class="a">学院目前拥有1个校级优秀教学团队，1门省级精品课程，1门校级精品课程，3门校级优质课程，13门校级优秀课程；近年来获得校级教学成果一等奖1项、二等奖1项、三等奖2项。</p>
					<p class="a">学院现有教师65人，其中教授4人，副教授16人，高级实验师2人，具有中高级以上职称50人，硕士研究生学历以上58人，占教师总人数的90%，在读博士9人，省级创新创业指导教师1人，校级教学名师1人，校级中青年骨干教师2人，双师型教师33人，另有来自国内外知名企事业单位客座教授5人、企业教师15人。</p>
					<p class="a">2015年与珠海世纪鼎利科技有限公司进行深度校企合作，成立学校第一个行业学院——鼎利学院，在移动互联开发、大数据、嵌入式、智能制造、移动通信技术等方面开展深度合作，企业投资4000万元建立了校内产教融合实践和创新基地，在理论教学、实践教学和科研创新方面开展深度合作。实行“2.5+1.5”工学交替、产教融合的UBL培养体系，以企业真实项目为载体实施项目化教学，突出培养学生的实践能力、职业能力、创新能力和创业能力的培养，为学生高质量就业打下坚实的基础。近年来，学院学生在国际、国内各级大学生程序设计竞赛、在全国移动互联网大赛、全国大学生电子设计竞赛、数学建模、吉林省“互联网+”大学生创新创业大赛、挑战杯等各项比赛中成绩显著，获得国家级奖项50余项、省级奖项60余项。学生考研录取率、国家电网、公务员、三支一扶等通过率、10万元以上高年薪就业率不断攀升。</p>
					<p class="a">学院积极与国内外知名单位的学术交流与合作，现已与哈尔滨理工大学计算机科学与技术学院、浙江海洋学院开展联合培养硕士研究生工作，同时广泛开展对外交流，同法国、韩国、日本的一些知名院校建立了校际联系，为学生出国深造搭建平台，同韩国全美大学开展留学生互换交流。</p>



				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<!--现任领导-->
	<div class="grid_3" id="geshi3" style="display: none;">

		<h3>现 任 领 导</h3>
		<ul class="cd-items cd-container">
			<li class="cd-item"><img
				src="images/xueyuangaikuang/imgtangyou.jpg" alt="Item Preview">
				<a href="#0" class="cd-trigger" onclick="hahaha1()"></a></li>
			<!-- cd-item -->

			<li class="cd-item"><img
				src="images/xueyuangaikuang/imgchenkaifeng.jpg" alt="Item Preview">
				<a href="#0" class="cd-trigger" onclick="hahaha2()"></a></li>
			<!-- cd-item -->

			<li class="cd-item"><img
				src="images/xueyuangaikuang/imghanyu.jpg" alt="Item Preview">
				<a href="#0" class="cd-trigger" onclick="hahaha3()"></a></li>
			<!-- cd-item -->

			<li class="cd-item"><img
				src="images/xueyuangaikuang/imghoufangbo.jpg" alt="Item Preview">
				<a href="#0" class="cd-trigger" onclick="hahaha4()"></a></li>
			<!-- cd-item -->

			<li class="cd-item"><img
				src="images/xueyuangaikuang/imgmamingtao2.jpg" alt="Item Preview">
				<a href="#0" class="cd-trigger" onclick="hahaha5()"></a></li>
			<!-- cd-item -->
		</ul>
		<!-- cd-items -->
		<div class="cd-quick-view">
			<div class="cd-slider-wrapper">
				<ul class="cd-slider">
					<li class="selected"><img
						src="images/xueyuangaikuang/imgtangyou.jpg" alt="Product 1"></li>
					<li><img src="images/xueyuangaikuang/imgchenkaifeng.jpg"
						alt="Product 2"></li>
					<li><img src="images/xueyuangaikuang/imghanyu.jpg"
						alt="Product 3"></li>
					<li><img src="images/xueyuangaikuang/imghoufangbo.jpg"
						alt="Product 3"></li>
					<li><img src="images/xueyuangaikuang/imgmamingtao2.jpg"
						alt="Product 3"></li>
				</ul>
				<!-- cd-slider -->
			</div>
			<!-- cd-slider-wrapper -->

			<div class="cd-item-info" id="aa">
				<div id="xianrenlingdao1">
					<c:forEach items="${list}" var="item" begin="1" end="1">
						<p class="description" align="left">
							姓名：
							<td>${item.name}</td> <br>职务：
							<td>${item.job}</td> <br>研究成果：
							<td>${item.resume}</td> <br>涉及领域：
							<td>${item.education}</td> <br>研究方向：
							<td>${item.honors}</td>
						</p>
					</c:forEach>
				</div>
				<div id="xianrenlingdao2">
					<c:forEach items="${list}" var="item" begin="2" end="2">
						<p class="description" align="left">
							姓名：
							<td>${item.name}</td> <br>职务：
							<td>${item.job}</td> <br>任职履历：
							<td>${item.resume}</td> <br>教育背景：
							<td>${item.education}</td> <br>所获荣誉：
							<td>${item.honors}</td>
					</c:forEach>
				</div>
				<div id="xianrenlingdao3">
					<c:forEach items="${list}" var="item" begin="3" end="3">
						<p class="description" align="left">
							姓名：
							<td>${item.name}</td> <br>职务:
							<td>${item.job}</td> <br>任职履历：
							<td>${item.resume}</td> <br>教育背景：
							<td>${item.education}</td> <br>所获荣誉：
							<td>${item.honors}</td>
					</c:forEach>
				</div>
				<div id="xianrenlingdao4">
					<c:forEach items="${list}" var="item" begin="0" end="0">
						<p class="description" align="left">
							姓名：
							<td>${item.name}</td> <br>职务:
							<td>${item.job}</td> <br>任职履历：
							<td>${item.resume}</td> <br>教育背景：
							<td>${item.education}</td> <br>所获荣誉：
							<td>${item.honors}</td> <br>社会职务：
							<td>${item.position}</td>
					</c:forEach>
				</div>
				<div id="xianrenlingdao5">
					<c:forEach items="${list}" var="item" begin="4" end="4">
						<p class="description" align="left">
							姓名：
							<td>${item.name}</td> <br>职务:
							<td>${item.job}</td> <br>任职履历：
							<td>${item.resume}</td> <br>教育背景：
							<td>${item.education}</td> <br>所获荣誉：
							<td>${item.honors}</td>
					</c:forEach>
				</div>

			</div>
			<!-- cd-item-info -->



			<a href="#0" class="cd-close">Close</a>

		</div>
		<!-- cd-quick-view -->
	</div>
	<script>
		function hahaha1() {
			document.getElementById("xianrenlingdao1").style.display = "block";
			document.getElementById("xianrenlingdao2").style.display = "none";
			document.getElementById("xianrenlingdao3").style.display = "none";
			document.getElementById("xianrenlingdao4").style.display = "none";
			document.getElementById("xianrenlingdao5").style.display = "none";

		}
		function hahaha2() {
			document.getElementById("xianrenlingdao1").style.display = "none";
			document.getElementById("xianrenlingdao2").style.display = "block";
			document.getElementById("xianrenlingdao3").style.display = "none";
			document.getElementById("xianrenlingdao4").style.display = "none";
			document.getElementById("xianrenlingdao5").style.display = "none";

		}
		function hahaha3() {
			document.getElementById("xianrenlingdao1").style.display = "none";
			document.getElementById("xianrenlingdao2").style.display = "none";
			document.getElementById("xianrenlingdao3").style.display = "block";
			document.getElementById("xianrenlingdao4").style.display = "none";
			document.getElementById("xianrenlingdao5").style.display = "none";

		}
		function hahaha4() {
			document.getElementById("xianrenlingdao1").style.display = "none";
			document.getElementById("xianrenlingdao2").style.display = "none";
			document.getElementById("xianrenlingdao3").style.display = "none";
			document.getElementById("xianrenlingdao4").style.display = "block";
			document.getElementById("xianrenlingdao5").style.display = "none";

		}
		function hahaha5() {
			document.getElementById("xianrenlingdao1").style.display = "none";
			document.getElementById("xianrenlingdao2").style.display = "none";
			document.getElementById("xianrenlingdao3").style.display = "none";
			document.getElementById("xianrenlingdao4").style.display = "none";
			document.getElementById("xianrenlingdao5").style.display = "block";

		}
	</script>

	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/velocity.min.js"></script>
	<script src="js/main.js"></script>
	<!-- Resource jQuery -->



	<div class="grid_1" id="geshi4" style="display: none;">
		<div class="container">
			<div class="box_1">
				<h3>办 学 特 色</h3>
			</div>
			<div class="box_20">
				<div class="col-sm-6 box_3">
					<img src="images/xueyuangaikuang/wenzi.png" class="img-responsive"
						alt="" />
				</div>
				<div class="col-sm-6 box_3" style="text-align:left">
					<p class="a">学院始终坚持以本科教育为主，以发展为主题，以改革创新为动力，以学科建设为龙头，以创造性人才为根本，以高水平师资队伍建设为关键，努力实现跨越式发展。注重大学生的创新思维、创新能力和创业精神的培养。学院专门设立了大学生创新实验室，在历次ACM国际程序设计竞赛、全国大学生电子设计竞赛、全国大学生创业大赛等竞赛、全国信息技术应用大赛中，均取得了优异成绩。</p>
					<p class="a">学院重视学生综合素质培养，许多学生考取了软件设计师、网络工程师、数据库管理、嵌入式工程师等专业技术资格证书以及微软认证证书；在国家级、省级计算机等级考试中，我院学生过级率在92%以上。</p>
					<p class="a">学院领导高度重视学生的就业工作，目前已与大连安博，北京达内科技、中软国际、北京CSTP等单位建立校外实训基地、与校网络中心建立校内实训基地，就业单位遍布北京、上海、山东、广东、吉林、宁夏、黑龙江、内蒙古十余个省市，目前学院已向社会输送本专科生3300余人，毕业生一次性就业率达90%以上，学生考研率达到10%以上。</p>

				</div>

				<div class="clearfix"></div>
			</div>
			<div class="box_20">
				<div class="box_3">
					<p class="a" style="text-align:left">学院坚持以“基础知识扎实、实践技能过硬、素质全面发展”为教育目标，所培养学生在社会上赢得了良好的社会声誉，学院将进一步探索新型人才培养模式，注重高素质人才培养，争取为社会和谐、快速发展而努力。</p>


				</div>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>

	<div class="grid_1">
		<div class="container">
			<div class="box_1">
				<div id="geshi5" style="display: none;">
					<h3>历 史 沿 革</h3>
					<div>
						<div class="main01">
							<ul class="time-axis"></ul>
						</div>

						<script type="text/javascript" src="js/nianfen.js"></script>
						<script type="text/javascript">
							//这是要遍历时间轴的数据
							var dimeAxis = [
									{
										date : '2018 年',
										title : '1月30日荣获实用新型专利2项；5月5日荣获吉林省高等学校机器人大赛省级二等奖4项、三等奖4项。',
										achievement : ''
									},
									{
										date : '2017 年',
										title : '1月16日荣获吉林市科技进步一等奖1项；4月21日与中科院长春光机所长春希达电子技术有限公司校企共建校内实习实训基地1个，获得学校10万元转型经费支持；5月06日参加团中央组织举办的“青年之声.我的校园我的梦”VR视频制作大赛，有2队入围国家赛；5月10日获批国家级大学生创新创业训练项目4项、吉林省大学生创新创业训练项目13项;5月12日荣获国家实用新型专利1项;',
										achievement : ''
									},
									{
										date : '2016 年',
										title : '1月7日30名教师被吉林省教育厅授予“双师型”教师称号；5月4日学院团委被团市委评为“吉林市五四红旗团委”；9月1日移动通信技术（专科）专业正式招生；12月28日荣获国家实用新型专利1项，在吉林省教育厅开展的专业评价中，我院计算机科学与技术专业获新办本科院校第一名的好成绩。',
										achievement : ''
									},
									{
										date : '2015 年',
										title : '3月20日与吉林吉智工场信息科技有限公司签署校外实训基地；5月3日入选吉林省高教学会专家库首批入选专家1人；11月17日荣获国家实用新型专利1项；12月29日学院获批成立吉林省教育厅智慧农业工程研究中心',
										achievement : ''
									},
									{
										date : '2014 年',
										title : '3月10日电气工程及其自动化专业获批中央财政专项700万元；9月15日学院“心桥志愿者”团队被评为“吉林省优秀志愿者团队”，1名教师获得“吉林省优秀志愿者”称号；10月18日荣获全国大学生电子设计竞赛吉林赛区二等奖1项、三等奖2项',
										achievement : ''
									},
									{
										date : '2013 年',
										title : '4月5日与北京博看文思科技有限责任公司签署校外实训基地；5月10日获批吉林省大学生创新创业训练项目3项；5月25日与北京甲骨文公司签署校外实训基地；10月28日电气工程及其自动化专业获批吉林省财政专项230万元',
										achievement : ''
									},
									{
										date : '2012 年',
										title : '6月6日与海辉软件（国际）集团公司签署校外实训基地；9月18日与北京中软国际教育科技有限公司签署校外实训基地；11月08日北京达内科技有限公司投资20万元与我院共建“吉农科—达内TTS”实验室',
										achievement : ''
									},
									{
										date : '2011 年',
										title : '3月7日学院被中关村软件协会评为“可信人才培养学院”；9月1日网络工程（本科）专业和电气工程及其自动化（本科）专业正式招生；10月18日与北京凌阳爱普科技有限公司签署校外实训基地；12月28日学校通过本科教学水平合格评估',
										achievement : ''
									},
									{
										date : '2010 年',
										title : '5月4日学院团委被团市委评为“吉林市五四红旗团委”；7月30日荣获吉林省教育厅举办的东北地区《大学计算机基础》讲课大赛一等奖1项；12月20日学院1名教师被评为2010年全国教育改革优秀教师',
										achievement : ''
									},
									{
										date : '2009 年',
										title : '2月27日与东北亚国际交流中心、日本阿斯因特株式会社、吉林省一夫智能科技有限公司建立了PJC实训中心项目合作协议；4月14日与北京动力时代资讯有限公司签署校外实训基地；11月17日与北京中关村国际孵化软件协会签署校外实训基地；12月21日与大连安博教育集团签署千人免费培养基地协议',
										achievement : ''
									},
									{
										date : '2008 年',
										title : '4月14日计算机科学与技术（本科）专业本科学位授予权评估；5月14日全院教师为四川汶川地震灾区捐款、捐物，共7850元，棉衣棉被38件；5月28日与国信神州教育科技（北京）有限公司签署校外实训基地；7月24日与北京国虹华安信息技术有限公司签署校外实训基地；12月5日与北京华信智原教育技术有限公司签署校外实训基地',
										achievement : ''
									},
									{
										date : '2007 年',
										title : '5月19日荣获首届大学生ACM程序设计大赛省级三等奖1项；9月6日学校百年校庆；11月18日与南京百音高科技有限公司签署校外实训基地',
										achievement : ''
									}, {
										date : '2006 年',
										title : '9月1日电子信息科学与技术（本科）专业正式招生',
										achievement : ''
									}, {
										date : '2005 年',
										title : '9月1日计算机科学与技术（本科）专业正式招生',
										achievement : ''
									}, {
										date : '2004 年',
										title : '5月18日学校升为本科',
										achievement : ''
									}, {
										date : '2002 年',
										title : '8月30日信息科学系成立',
										achievement : ''
									}, {
										date : '1994 年',
										title : '3月12日计算机系成立',
										achievement : ''
									},

							];

							$(function() {
								$
										.each(
												dimeAxis,
												function(i, e) {
													var html = '<li class="time-axis-item">'
															+ '<div class="time-axis-date">'
															+ e.date
															+ '<span></span></div>'
															+ '<div class="time-axis-title">'
															+ e.title
															+ '</div>'
															+ '<p class="time-axis-achievement">'
															+ e.achievement
															+ '</p>' + '</li>';
													$('.time-axis')
															.append(html);
												});
							});
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div id="geshi6" style="display: none;">

		<div class="box_1">
			<h3>组 织 结 构</h3>
		</div>
		<div class="content zuzhi";>
			<figure class="org-chart cf">
			<div class="board ">
				<ul class="columnOne">
					<li><span class="lvl-b"> <strong>电气与信息工程学院</strong> <br>
						<img src="images/xueyuangaikuang/z1.png" /><img
							src="images/xueyuangaikuang/z2.png" />
					</span></li>
				</ul>
			</div>
			<ul class="departments ">
				<li class="department central"><span class="lvl-b"> <strong>行政部门</strong>
						<br /> <br /> <br />
				</span>
					<ul class="sections">
						<li class="section"><span> <strong>学院办公室</strong> <br>
							<img src="images/xueyuangaikuang/z3.png" />

						</span></li>





					</ul></li>
				<li class="department "><span class="lvl-b"> <strong>党团部门</strong>
						<br /> <br /> <br />
				</span>
					<ul class="sections">
						<li class="section"><span> <strong>工会</strong> <br>
							<img src="images/xueyuangaikuang/z16.png" />

						</span></li>
						<li class="section"><span> <strong>青年教师联合会</strong> <br>
							<img src="images/xueyuangaikuang/z17.png" />

						</span></li>
						<li class="section"><span> <strong>妇委会</strong> <br>
							<img src="images/xueyuangaikuang/z13.png" />

						</span></li>
						<li class="section"><span> <strong>分团委、辅导班</strong> <br>
							<img src="images/xueyuangaikuang/z18.png" />

						</span></li>

					</ul></li>
				<li class="department "><span class="lvl-b"> <strong>教学部门</strong>
						<br>
					<img src="images/xueyuangaikuang/z4.png" />

				</span>
					<ul class="sections">
						<li class="section"><span> <strong>计算机科学与技术系</strong>
								<br>
							<img src="images/xueyuangaikuang/z5.png" />

						</span></li>
						<li class="section"><span> <strong>电子信息科学与技术系</strong>
								<br>
							<img src="images/xueyuangaikuang/z6.png" />

						</span></li>
						<li class="section"><span> <strong>网络工程系</strong> <br>
							<img src="images/xueyuangaikuang/z7.png" />

						</span></li>
						<li class="section"><span> <strong>电气工程及其自动化系</strong>
								<br>
							<img src="images/xueyuangaikuang/z8.png" />

						</span></li>
						<li class="section"><span> <strong>软件工程系</strong> <br>
							<img src="images/xueyuangaikuang/z9.png" />

						</span></li>
						<li class="section"><span> <strong>通信工程教研室</strong> <br>
							<img src="images/xueyuangaikuang/z10.png" />

						</span></li>
						<li class="section"><span> <strong>计算机公共教研室</strong> <br>
							<img src="images/xueyuangaikuang/z11.png" />

						</span></li>
					</ul></li>
				<li class="department central"><span class="lvl-b"> <strong>科研、实验中心</strong>
						<br>
					<img src="images/xueyuangaikuang/z12.png" />

				</span>
					<ul class="sections">
						<li class="section"><span> <strong>信息技术类实验室</strong> <br>
							<img src="images/xueyuangaikuang/z13.png" />

						</span></li>
						<li class="section"><span> <strong>电子电气类实验室</strong> <br>
							<img src="images/xueyuangaikuang/z14.png" />

						</span></li>
						<li class="section"><span> <strong>ICT实训中心</strong> <br>
							<img src="images/xueyuangaikuang/z15.png" />

						</span></li>

					</ul></li>


			</ul>
			</figure>

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
					<ul class="list1">
						<h3>功能待开发</h3>
						<li><a href="#">待开发</a></li>
						<li><a href="#">待开发</a></li>
						<li><a href="#">待开发</a></li>
						<li><a href="#">待开发</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<ul class="socials">
						<li><a href="#"><i class="fa fb fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa tw fa-twitter"></i></a></li>
					</ul>
					<ul class="list2">
						<li><strong class="phone">+0018 58287 58</strong><br>
						<small>Mon - Fri / 9.00AM - 06.00PM</small></li>
						<li>Questions? <a href="malito:mail@demolink.org">mail(at)ability.com</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="copy">
		<p>Copyright © 2018 - 2019吉林农业科技学院电气与信息工程学院版权所有</p>
		<p>地址：吉林市吉林经济技术开发区翰林路77号 邮编：132101 电话：0432-63509888、63509118</p>
	</div>

	</div>

</body>
</html>