<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>学团工作</title>

	
	<!-- include main css -->
	<link rel="stylesheet" type="text/css" href="css/slick.css"/>	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css"/>
	<link rel="stylesheet" type="text/css" href="css/xtStyle.css"/>
	<link rel="stylesheet" type="text/css" href="css/xtStyle1.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css"/>
	<link rel="stylesheet" href="http://cdn.bootcss.com/animate.css/3.5.1/animate.min.css">
	
	
</head>
<body>
<div>
	
	<div class="header wow fadeInUpBig" data-wow-delay="0.4s">
		<div class="container">
			<div class="header_top">
				<h1>Welcome to</h1>
				<h2>DQAndInformation</h2>
			</div>
		</div>
	</div>
	<div class="header-home">
		<div class="fixed-header">
			<div class="logon wow bounceInDown" data-wow-delay="0.4s">
				<a href="index.html"> <span class="secondary">Careers,skills</span>
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
					<li><a href="/DQAndInformationWeb/dangzheng/dangzheng.html">党建思政</a></li>
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


	
<div>
<div class="brand-in container">
	<div class="brand-in-wrap">
		<div class="brand-left wow fadeInLeft" data-wow-delay="0.4s">
			<div class="loveh">
				学团工作<span>Brand introduction </span>
				<div class="line-bottom"></div>
			</div>
			<p>学生团委
（电气与信息工程学院）

　　长期以来，电气与信息工程学院团委在学院党总之、校团委的领导下，坚定不移地贯彻党的基本路线，坚持四项基本原则，坚持改革开放，在建设中国特色社会主义的伟大实践中，不断造就有理想、有道德、有文化、有纪律的接班人，努力为党输送新鲜血液，为国家培养青年建设人才，团结带领广大青年，自力更生，艰苦创业，积极推动社会主义物质文明、政治文明和精神文明建设，为全面建成小康社会、加快推进社会主义现代化贡献智慧和力量。
</p>
			<em></em>
			<div class="read-more">
				<a href="#">Read more</a>
			</div>
		</div>
		<div class="brand-right wow fadeInRight" data-wow-delay="0.4s">
			<img src="images/xt/brand-in.png" alt="" />
		</div>
	</div>
</div>
<!--经典案例-->

<div class="sycase container">
	<div class="sycase-wrap clearfix">
		<ul>
			<li class="wow fadeInDown" data-wow-delay="0.4s">
				<div class="pic"><a href="case_show.html"><img src="images/xt/sycase1.jpg" class="vcenter"  alt="" /></a></div>
				<a href="case_show.html" class="case-zzc">
					<h3>学团简介</h3>
					<p>电气与信息工程学院学生团委下辖38个团支部，同时设有组织部、宣传部、办公室、创业就业服务部、心理站、志愿者站和记者站7个部门。</p>
				</a>
			</li>
			<li class="wow fadeInDown" data-wow-delay="0.4s">
				<div class="pic"><a href="${pageContext.request.contextPath}/xt?method=findByCid&cid=2"><img src="images/xt/sycase2.jpg" class="vcenter"  alt="" /></a></div>
				<a href="${pageContext.request.contextPath}/xt?method=findByCid&cid=2" class="case-zzc">
					<h3>学团动态</h3>
					<p>电气与信息工程学院学生团委组织学生参加各种公益性活动以及举办各种团建活动。</p>
				</a>
			</li>
			<li class="wow fadeInUp" data-wow-delay="0.4s">
				<div class="pic"><a href="${pageContext.request.contextPath}/xt?method=findByCid&cid=9"><img src="images/xt/sycase3.jpg" class="vcenter"  alt="" /></a></div>
				<a href="${pageContext.request.contextPath}/xt?method=findByCid&cid=9" class="case-zzc">
					<h3>学生党建</h3>
					<p>电气与信息工程学院学生党委组织学生参加各种公益性活动以及举办各种团建活动。</p>
				</a>
			</li>
			<li class="wow fadeInUp" data-wow-delay="0.4s">
				<div class="pic"><a href="${pageContext.request.contextPath}/xt?1method=findByCid&cid=12"><img src="images/xt/sycase4.jpg" class="vcenter"  alt="" /></a></div>
				<a href="${pageContext.request.contextPath}/xt?method=findByCid&cid=12" class="case-zzc">
					<h3>生涯发展</h3>
					<p>学院组织各种活动以加强大学生对当前就业形势的了解，明晰其职业生涯规划的重要意义，认知职业生涯规划和就业情况明确职目标。</p>
				</a>
			</li>
			<li class="wow fadeInDown" data-wow-delay="0.4s">
				<div class="pic"><a href="${pageContext.request.contextPath}/xt?method=findByCid&cid=14"><img src="images/xt/sycase2.jpg" class="vcenter"  alt="" /></a></div>
				<a href="${pageContext.request.contextPath}/xt?method=findByCid&cid=14" class="case-zzc">
					<h3>学生风采</h3>
					<p>学院组织学生参加各种公益性活动，展示学生的独特风采</p>
				</a>
			</li><li class="wow fadeInDown" data-wow-delay="0.4s">
				<div class="pic"><a href="/DQAndInformationWeb/XtDownLoad"><img src="images/xt/sycase1.jpg" class="vcenter"  alt="" /></a></div>
				<a href="/DQAndInformationWeb/XtDownLoad" class="case-zzc">
					<h3>下载</h3>
					<p>学生自愿下载其感兴趣的文章</p>
				</a>
			</li>
		</ul>
	</div>
</div>

<!--花之物语-->
<div class="container flower">
	<div class="flower-wrap">
		<div class="flower-title">
			<img src="images/flowerline.jpg" alt="" />
			<span>花之物语 <em>Flower</em></span>
			<img src="images/xt/flowerline.jpg" alt="" />
		</div>
		<div class="flower-con">
			<ul>
				<li class="wow rollIn" data-wow-delay="0.3s">
					<div class="flower-ch">
						<span>06-12</span><a href="#">时尚广告片中的自然花艺某某鲜花测试文字</a>
						<div class="line"></div>
					</div>
					<p>2016年6月6日，第十届虎啸国际高峰论坛暨第七届虎啸奖颁奖盛典在上海隆重举行。作为商业传播领域最具权威性、前瞻性及创新性的大型赛事活动之一，虎啸奖至今已成功举办... </p>
				</li>
				<li class="wow rollIn" data-wow-delay="0.4s">
					<div class="flower-ch">
						<span>06-12</span><a href="#">鲜花测试文字母亲节之与妈妈的美丽“花约”</a>
						<div class="line"></div>
					</div>
					<p>作为商业传播领域最具权威性、前瞻性及创新性的大型赛事活动之一，虎啸奖至今已成功举办七届。在本届颁奖盛典上，某某科技有限公司创始人·总裁赵旭隆先生荣膺“年度人物大奖” </p>
				</li>
				<li class="wow rollIn" data-wow-delay="0.5s">
					<div class="flower-ch">
						<span>06-12</span><a href="#">花艺师的多彩生活之盘点那些电影中的花儿</a>
						<div class="line"></div>
					</div>
					<p>虎啸奖至今已成功举办七届。在本届颁奖盛典上，某某科技有限公司创始人·总裁赵旭隆先生荣膺“年度人物大奖”、某某科技有限公司案例荣获“最佳创意奖”及案例类铜奖</p>
				</li>
				<li class="last wow rollIn" data-wow-delay="0.5s">
					<div class="flower-ch">
						<span>06-12</span><a href="#">时尚广告片中的自然花艺某某鲜花测试文字</a>
						<div class="line"></div>
					</div>
					<p>2016年6月6日，第十届虎啸国际高峰论坛暨第七届虎啸奖颁奖盛典在上海隆重举行。作为商业传播领域最具权威性、前瞻性及创新性的大型赛事活动之一，虎啸奖至今已成功举办... </p>
				</li>
			</ul>
		</div>
	</div>
</div>



<!--底部导航-->
<div class="footer wow fadeInRight" data-wow-delay="0.4s">
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
						<li><strong class="phone">0432-63509888</strong><br><small>Mon
									- Fri / 8.00AM - 04.30PM</small></li>
						<li>Questions? <a href="#">www.DQAndInformation.com</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="copy">
		<p>
			Copyright2018-2019吉林农业科技学院电气与信息工程学院版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：吉林市吉林经济技术开发区翰林路77号&nbsp;&nbsp;邮编：132101&nbsp;&nbsp;电话：0432-63509888、63509118
		</p>
	</div>




<!--Include Js-->
<script src="http://apps.bdimg.com/libs/jquery/1.8.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>

<!--移动端导航-->
<script src="js/jquery.mmenu.all.min.js" type="text/javascript" charset="utf-8"></script>

<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="http://cdn.bootcss.com/wow/1.1.2/wow.min.js"></script>
<script>
if (getIEVersion() !== "IE8") {
	  		new WOW().init();
	  	};
  	 </script>
<!--slick-->
<script src="js/slick.min.js" type="text/javascript" charset="utf-8"></script>

<!--placeholder-->
<script src="js/jquery.placeholder.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function(){ $('input, textarea').placeholder(); });
</script>

<!--<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->

</body>
</html>
