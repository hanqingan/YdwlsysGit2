<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教学动态</title>
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
			<div class="tit-80">教育教学 - 查看详情</div>
			<div class="tabula-box">
				<div class="max-tit">教育教学</div>
				<ul>
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
				<p class="large_tittle"><b> <c:forEach items="${list}" var="item">			
			<td>${item.teaDyName}</td>		
			</c:forEach> </b></p>
				<div class="small_tittle"><span class="content_smalltitle">发布时间：2019-04-30 16:21:30&nbsp;&nbsp;&nbsp;&nbsp;作者：苏萌&nbsp;&nbsp;&nbsp;&nbsp;来源：行政&nbsp;&nbsp;&nbsp;&nbsp;访问量：33次</span></div>
				<p class="content" >
			
			<c:forEach items="${list}" var="item">			
			<td>${item.teaDyText}</td>		
			</c:forEach>
				
				</p>
			
		<!--  	<p style="text-align: center"><img src="images/content1_1.png" width="650" /></p>
				<br/><p style="text-align: center"><img src="images/content1_2.png" width="650" /></p>
-->	
				</div>
			</div>
		</div>
		<!-- div5 -->
		<div id="div5" class="clearfix">
			<div class="link-box">
				<span>友情链接：</span>
				<select onChange="frlink(this)" name="select" class="select-link">
					<option selected>--- 教育类网站 ---</option>
					<option value="http://www.veryhuo.com">烈火网</option>
					<option value="http://www.sina.com.cn">新浪网</option>
					<option value="http://www.163.com">网易</option>
				</select>
				<select onChange="frlink(this)" name="select" class="select-link">
					<option selected>--- 政府类网站 ---</option>
					<option value="http://www.china.com">中华网</option>
					<option value="http://www.sina.com.cn">新浪网</option>
					<option value="http://www.163.com">网易</option>
				</select>
				<select onChange="frlink(this)" name="select" class="select-link">
					<option selected>--- 校园类网站 ---</option>
					<option value="http://www.veryhuo.com">烈火网</option>
					<option value="http://www.sina.com.cn">新浪网</option>
					<option value="http://www.163.com">网易</option>
				</select>
				<select onChange="frlink(this)" name="select" class="select-link">
					<option selected>--- 其它类网站 ---</option>
					<option value="http://www.veryhuo.com">烈火网</option>
					<option value="http://www.sina.com.cn">新浪网</option>
					<option value="http://www.163.com">网易</option>
				</select>
			</div>
		</div>
		<div id="div6">Copyright©2018-2019吉林农业科技学院电气与信息工程学院 All rights reserved.</div>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script src="js/jquery.page.js"></script>
		<script>
			$(".tcdPageCode").createPage({
				pageCount: 100,
				current: 1,
				backFn: function(p) {
					//console.log(p);
				}
			});
		</script>

	</body>
</html>