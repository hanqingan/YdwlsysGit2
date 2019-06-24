<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人简介</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" ></script>
		<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
		<link href="${pageContext.request.contextPath}/css/zaizhijiaoshi.css" rel='stylesheet' type='text/css' />
		<script type="application/x-javascript" >
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);
	
			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<script src="../js/wow.min.js"></script>
		<link href="../css/animate.css" rel='stylesheet' type='text/css'/>
		<script>
			new WOW().init();
		</script>
		<style type="text/css">
	    .wrap_2{
	        width: 200px;
	        height: 100%;
	        background-color: wirte;
	        position:absolute ;
			left: 0px;
	    }
	    .header_2{
	        width: 100%;
	        height: 65px;
	        background-color: #00FFFF;
	        font-size: 24px;
	        color: #fff;
	        text-align: center;
	        line-height: 65px;
	    }
	    .nav_2{
	        width:190px;
	        margin: 10px 5px 0;
	    }
	    .list_2{
	        margin-bottom: 5px;
	    }
	    .list_2 h2{
	        position: relative;
	        padding: 15px 0;
	        background-color: #00FFFF;
	        text-align: center;
	        font-size: 16px;
	        color: #fff;
	        transition: .5s;
	    }
	    .list_2 h2.on{
	        background-color: fuchsia;
	    }
	    .list_2 i{
	        position: absolute;
	        right: 10px;
	        top: 16px;
	        border: 8px solid transparent;
	        border-left-color: yellow;/*triangle*/
	        transform:rotate(0deg);
	        transform-origin: 1px 8px;
	        transition: .5s;
	    }
	    .list_2 i.on{
	        transform:rotate(90deg);
	    }
	    .hide_2{
	        overflow: hidden;
	        height: 0;
	        transition: .5s;
	    }
	    .hide_2 h5{
	        padding: 10px 0;
	        background-color: yellow;
	        text-align: center;
	        color:cyan;
	        border-bottom:#42495d;
	    }
	</style>
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
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="wrap_2">
		    <div class="header_2">师资队伍</div>
		    <div class="nav_2">
		        <ul>
		            <li class="list_2" style="list-style:none;">
		                <h2><i></i><a href="${pageContext.request.contextPath}/shiziduiwu/zaizhijiaoshi/zaizhijiaoshi.html" style="text-decoration: none;">在职教师</a></h2>
		                <div class="hide_2">
		                    <h5><a href="${pageContext.request.contextPath}/shiziduiwu/zaizhijiaoshi/zaizhijiaoshi.html" style="text-decoration: none;">按拼音排序</a></h5>
		                    <h5><a href="${pageContext.request.contextPath}/shiziduiwu/zaizhijiaoshi/zzjszy.html" style="text-decoration: none;">按专业排序</a></h5>
		                    <h5><a href="${pageContext.request.contextPath}/shiziduiwu/zaizhijiaoshi/zzjszc.html" style="text-decoration: none;">按职称排序</a></h5>
		                </div>
		            </li>
		            <li class="list_2" style="list-style:none;">
		                <h2><i></i><a href="${pageContext.request.contextPath}/shiziduiwu/rencaijihua/rencaijihua.html" style="text-decoration: none;">人才计划</a></h2>
		            </li>
		            <li class="list_2" style="list-style:none;">
		               <h2><i></i> <a href="${pageContext.request.contextPath}/shiziduiwu/jiaoxuemingshi/jiaoxuemingshi.html" style="text-decoration: none;">教学名师</a></h2>
		            </li>
		            <li class="list_2" style="list-style:none;">
		               <h2><i></i> <a href="${pageContext.request.contextPath}/shiziduiwu/jianzhijiaoshi/jianzhijiaoshi.html" style="text-decoration: none;">兼职教师</a></h2>
		            </li>
		        </ul>
		    </div>
		</div>
		<script>
		    (function () {
		        var oList = document.querySelectorAll('.list_2 h2'),
		            oHide = document.querySelectorAll('.hide_2'),
		            oIcon = document.querySelectorAll('.list_2 i'),
		            lastIndex = 0;
		        for(var i=0;i<oList.length;i++){
		            oList[i].index = i;//自定义属性
		            oList[i].isClick = false;
		            oList[i].initHeight = oHide[i].clientHeight;
		            oHide[i].style.height = '0';
		            oList[i].onclick = function () {
		                if(this.isClick){
		                    oHide[this.index].style.height = '0';
		                    oIcon[this.index].className = '';
		                    oList[this.index].className = '';
		                    oList[this.index].isClick = false;
		                }
		                else{
		                    oHide[lastIndex].style.height = '0';
		                    oIcon[lastIndex].className = '';
		                    oList[lastIndex].className = '';
		                    oHide[this.index].style.height = '220px';
		                    oIcon[this.index].className = 'on';
		                    oList[this.index].className = 'on';
		                    oList[lastIndex].isClick = false;
		                    oList[this.index].isClick = true;
		                    lastIndex = this.index;
		                }
		            }
		        }
		    })();
		</script>
		<c:forEach items="${list}" var="t">
		<div class="container">
							<div class="w3l_main_grids">
								<div class="w3l_main_grid">
									<div class="w3ls_order">
								</div>
							</div>
								<div class="w3l_main_grid">
									<div class="w3l_main_grid_top w3l_main_grid_top1">
										<h3><span>个人简介</span> </h3>
										<img src="${pageContext.request.contextPath}/${t.getImage()}" alt=" " />
										<div class="w3ls_order w3ls_order2">
										<h3>${t.getName()}</h3>
									</div>
									</div>
									<div class="w3ls_order w3ls_order1">
								</div>
							</div>
						
								<div class="w3l_main_grid">
							
									<div class="w3l_main_grid_middle w3l_main_grid_middle2">
										<ul>
											<li>职称：${t.getPrat()}</li>
											<li>职务：${t.getPost()}</li>
											<li>主讲课程：${t.getScore()}</li>
											<li>科学研究：${t.getScre()}</li>
											<li>教学研究：${t.getTr()}</li>
										</ul>
									</div>
									<div class="w3ls_order w3ls_order2">
								</div>
							</div>
						</div>
			</div>
	</c:forEach>
<div class="footer" style="margin-top:10px;">
					<div class="container">
						<div class="footer_top">
				<div class="col-sm-3">
					<ul class="list1">
						</h3><h3>关于本站</h3>
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
			Copyright©2018-2019吉林农业科技学院电气与信息工程学院版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：吉林市吉林经济技术开发区翰林路77号&nbsp;&nbsp;邮编：132101&nbsp;&nbsp;电话：0432-63509888、63509118
		</p>
	</div>
</body>
</html>