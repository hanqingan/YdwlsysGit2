<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>学团工作</title>

	
	<!-- include main css -->
	<link rel="stylesheet" type="text/css" href="css/slick.css"/>	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css"/>
	<link rel="stylesheet" type="text/css" href="css/xtStyle.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css"/>
	
	<!--[if lt IE 9]>
    <script src="http://apps.bdimg.com/libs/html5shiv/r29/html5.min.js"></script>
    <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
   
	
</head>
<body>
	
<div>
	
	<!--header-->
	<header class="header">
		<section class="container naver clearfix">
			<div class="logo pull-left" ><font size="7px" color="black" face="楷体"><a href="index.html" ><c:forEach items="${ list}" var="t" begin="0" end="0">
			 ${t.getGroup_name()}
			</c:forEach></a></font></div>
			<nav class="nav pull-left">
				<ul>
					
					<li class="active"><a href="index.html">首页</a></li>
					
				</ul>
			</nav>
			
		</section> 		
	</header>
	
    <section class="container">
    	<a href="#mmenu" class="phone-nav glyphicon glyphicon-list"></a>
    </section> 
			
	<!--banner-->
	<section class="banner nybanner">
	   <img src="images/xt/flower-banner.jpg" alt="">
	</section>
	



	<!--移动端  Mmenu-->
	<nav id="mmenu">
		<ul>
			<li><a href="">English</a></li>
			<li><a href="index.html">首 页</a></li>
			<li><a href="#">品牌简介</a>
				<ul>
					<li><a href="#">品牌简介</a></li>
					<li><a href="#">企业文化</a></li>
					<li><a href="#">荣誉资质</a></li>
				</ul>
			</li>
			<li><a href="#">产品中心</a>
				<ul>
					<li><a href="#">婚礼花艺</a>
						<ul>
							<li><a href="#">求婚必备</a></li>
							<li><a href="#">情人节专属</a></li>
							<li><a href="#">其他鲜花</a></li>
						</ul>
					</li>
					<li><a href="#">爱情鲜花</a>
						<ul>
							<li><a href="#">求婚必备</a></li>
							<li><a href="#">情人节专属</a></li>
							<li><a href="#">其他鲜花</a></li>
						</ul>
					</li>
					<li><a href="#">长辈鲜花</a>
						<ul>
							<li><a href="#">求婚必备</a></li>
							<li><a href="#">情人节专属</a></li>
							<li><a href="#">其他鲜花</a></li>
						</ul>
					</li>
					
				</ul>
			</li>
			<li><a href="#">经典案例</a>
				<ul>
					<li><a href="#">经典案例</a></li>
					<li><a href="#">新增分类</a></li>
				</ul>
			</li>
			<li><a href="#">花之物语</a>
				<ul>
					<li><a href="#">花之物语</a></li>
					<li><a href="#">养花知识</a></li>
				</ul>
			</li>
			<li><a href="#">联系我们</a>
				<ul>
					<li><a href="#">联系我们</a></li>
					<li><a href="#">在线留言</a></li>
					<li><a href="#">人才招聘</a></li>
				</ul>
			</li>
		</ul>
	</nav>	
		
</div>	

<!--内页内容区域-->
<div class="container ny-wrap">
	<div class="pro-title clearfix">
		<span class="pull-left">经典案例</span>
		<p class="pull-right">
			<a class="active" >经典案例</a><em>|</em>
			<a href="#">新增分类</a>
		</p>
	</div>
	<div class="container flower-show">
		<div class="fshow-title">
			<h1>学生团委</h1>
			<div class="date">
				<span>电气与信息工程学院</span>
				<span>发布时间：2019/06/18</span>
				<span>作者：白熊</span>
			</div>
		</div>
		<div class="fshow-con">
			<p>电气与信息工程学院学生团委是由电气与信息工程学院先进青年组成的群众组织，是学院大学生组织之一。作为党的助手与后备军，肩负着组织青年、引导青年、服务青年和维护青少年合法权益的基本职能。</p>
			<p>电气与信息工程学院学生团委，下辖38个团支部，同时设有组织部、宣传部、办公室、创业就业服务部、心理站、志愿者站和记者站7个部门。</p>
			<p>长期以来，电气与信息工程学院团委在学院党总之、校团委的领导下，坚定不移地贯彻党的基本路线，坚持四项基本原则，坚持改革开放，在建设中国特色社会主义的伟大实践中，不断造就有理想、有道德、有文化、有纪律的接班人，努力为党输送新鲜血液，为国家培养青年建设人才，团结带领广大青年，自力更生，艰苦创业，积极推动社会主义物质文明、政治文明和精神文明建设，为全面建成小康社会、加快推进社会主义现代化贡献智慧和力量。</p>
			<p>3月，来自全国各地的人大代表和政协委员承载着-百姓的寄托和希望，肩负着历史赋予的责任和使命，带着各自的议案，从全国各地奔赴北京，齐聚一堂。</p>
			<div class="fshowimg clearfix">
				<div class="pic"><img src="images/xt/fshowimg.jpg" class="vcenter" alt="" /></div>
				<div class="pic"><img src="images/xt/fshowimg2.jpg" class="vcenter" alt="" /></div>
				<div class="pic"><img src="images/xt/fshowimg3.jpg" class="vcenter" alt="" /></div>
			</div>
			<p>两会的十大热点也相继出炉，包括反腐、养老、改革、教育、医疗等都是人们非常关心的话题。两会不仅仅完善了治国理政新理念新思想新战略的实践之路，也为完善全球治理提供了行之有效的中国方案。从打造对话而不对抗、结伴而不结盟的伙伴关系到建立以合作共赢为核心的新型国际关系，再到提出构建人类命运共同体理念。</p>
			<p>中国从春天的盛会起航，在以习近平同志为核心的党中央坚强领导下，13亿多中华儿女万众一心、砥砺奋进，伟大复兴的目标一定要实现，伟大复兴的目标一定能够实现！<br/>进一步增强自身的使命意识和责任意识，把思想和行动统一到两会精神上来，在以后的学习工作中要立足本职岗位，作出成绩，在祖国建设的道路上贡献自己的智慧和力量。</p>
		</div>
		、
	</div>
	<!--相关信息-->

		<div class="xgcp-title">
			<h3>相关信息</h3>
			<p>We hope that through the flower box of love, affection and friendship express intuitive, needless to say, everything is in the middle of the flower box. </p>
		</div>
		<div class="renews-con">
			<div><ul>
			<c:forEach items="${ list}" var="t" begin="0" end="2"> 
				  <li><a href="${pageContext.request.contextPath}/xt?method=findNei&name=${t.getText_name()}"> ${t.getText_name()}</a></li>
				</c:forEach>
			</ul></div>
			<div><ul>
				<c:forEach items="${list}" var="t" begin="3" end="5"> 
				  <li><a href="${pageContext.request.contextPath}/xt?method=findNei&name=${ t.getText_name()}"> ${t.getText_name()}</a></li>
				</c:forEach>
			</ul></div>
			<div><ul>
				<c:forEach items="${list}" var="t" begin="6" end="8"> 
				  <li><a href="${pageContext.request.contextPath}/xt?method=findNei&name=${ t.getText_name()}"> ${t.getText_name()}</a></li>
				</c:forEach>
			</ul></div>
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
	$(".renews-con").slick({
			arrows: true,
			slidesToShow: 3,
			dots:false,
			autoplaySpeed:2000,
			autoplay:true,
			speed:500,
		})
</script>
<!--<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->

</body>
</html>
