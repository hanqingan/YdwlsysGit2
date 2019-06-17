<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.js"></script>
		<link rel="stylesheet" href="../css/bootstrap.css"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>党建思政</title>
<style type="text/css">
			a{
				
				text-decoration: none;
				color: #000000;
			}
			a:hover{
				color:  #c40000;
				text-decoration: none;
				
			}
			
			.dao1{
				height: 80px;
				width: 150px;
				 text-align: center; 
				 padding-top: 20px;
				 display: inline;
				 padding-left: 2px;
				 font-size: 22px;
				 color: #000000;
				border-bottom: solid  whitesmoke  2px;
				
			}
			.footer_top{
				line-height: 30px;
				padding-top: 10px;
				font-family: "微软雅黑";
			}
			li{
				outline-style: none;
			}
		</style>
</head>
<body>
<div class="container-fluid">
			<div class="row dao1">
				<div class="col-lg-1" style="background-color: red; height: 80px; padding-top: 20px;margin-left: 120px;"><a href="#">首页</a></div>
				<div id="1" class="col-lg-2 dao1" style="margin-left: 100px;" ><a  onmousemove="on()" onmouseout="out()" href="index.html" class="active">党建思政</a></div>
				<div id="2" class="col-lg-1 dao1 "><a  onmousemove="on1()" onmouseout="out1()" href="info?flag=dt&part=dt">党建动态</a></div>
				<div id="3" class="col-lg-1 dao1"><a  onmousemove="on2()" onmouseout="out2()" href="info?flag=number">组织结构</a></div>
				<div id="4" class="col-lg-1 dao1"><a  onmousemove="on3()" onmouseout="out3()" href="info?flag=dt&part=xx">理论学习</a></div>
				<div id="5" class="col-lg-1 dao1"><a  onmousemove="on4()" onmouseout="out4()" href="info?flag=dt&part=fj">共青妇建</a></div>
				<div id="6" class="col-lg-1 dao1 "><a  onmousemove="on5()" onmouseout="out5()" href="info?flag=dt&part=dt">资料下载</a></div>
			</div>
			
		</div>	
		<div style="margin-top: 0px; height:400px; text-align: center; ">
			<img src="../images/dangzheng/dang.png" style="height: 400px;width: 95%; margin: 0 20px 0 1px;"/>
		</div>
		<!-- footer -->
		
		<div style=" height:600px;" >
			
		
		<table  class="colspan"  align="center" height="400px" ><br>
		
		<c:forEach items="${list}" var="item" varStatus="i">
			<tr align="left">
				<td style="width: 600px;" ><a href="info?flag=text&title=${item.title}">${item.title}</a></td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
				<td>${item.tm}</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
				<td>${item.author}</td>&nbsp&nbsp;
			</tr>
		</c:forEach>
		
	</table>
					
		</div>
		<div style="background-color: #202020;" >
			<div class="container">
				<div class="footer_top">
					<div class="col-sm-3" style="padding-top: 30px;">
							<div style="height: 150px; width: 150px; border-radius: 100px;"><img src="../images/yuanhui.png"></div>
					</div>
					<div class="col-sm-3" style="padding-top: 30px;">
						<ul class="list1">
							<h3>关于本站</h3>
							<li><a href="#">网站目录</a></li>
							<li><a href="#">版本更新</a></li>
							<li><a href="#">制作团队</a></li>
							<li><a href="#">服务信箱</a></li>
							
						</ul>
					</div>	
					<div class="col-sm-3" style="padding-top: 30px;">
						<ul class="list1">
							<h3>联系我们</h3>
							<li><a href="#">院长信箱</a></li>
							<li><a href="#">本科生招生</a></li>
							<li><a href="#">专科生招生</a></li>
						</ul>
					</div>
					<div class="col-sm-3" style="padding-top: 30px;">
						<ul class="list1">
							<h3>功能待定</h3>
							<li><a href="#">功能待定</a></li>
							<li><a href="#">功能待定</a></li>
							<li><a href="#">功能待定</a></li>
							<li><a href="#">功能待定</a></li>
						</ul>
					</div>
					<!-- <div class="clearfix"></div> -->
				</div>
			</div>
		</div>
		<div class="copy" style="background-color: rgb(32,32,32);">
			<p style="color: black;" align="center">
				Copyright©2018-2019吉林农业科技学院电气与信息工程学院版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：吉林市吉林经济技术开发区翰林路77号&nbsp;&nbsp;邮编：132101&nbsp;&nbsp;电话：0432-63509888、63509118
			</p>
		</div>
	</body>
	<script type="text/javascript">
		function on(){
			var div1=document.getElementById("1");
			$(div1).css("border-bottom"," red solid 2px")
		}
		function out(){
			var div1=document.getElementById("1");
			$(div1).css("border-bottom","whitesmoke  solid 2px")
		}
		function on1(){
			var div1=document.getElementById("2");
			$(div1).css("border-bottom"," red solid 2px")
		}
		function out1(){
			var div1=document.getElementById("2");
			$(div1).css("border-bottom","whitesmoke  solid 2px")
		}
		function on2(){
			var div1=document.getElementById("3");
			$(div1).css("border-bottom"," red solid 2px")
		}
		function out2(){
			var div1=document.getElementById("3");
			$(div1).css("border-bottom","whitesmoke  solid 2px")
		}
		function on3(){
			var div1=document.getElementById("4");
			$(div1).css("border-bottom"," red solid 2px")
		}
		function out3(){
			var div1=document.getElementById("4");
			$(div1).css("border-bottom","whitesmoke  solid 2px")
		}
		function on4(){
			var div1=document.getElementById("5");
			$(div1).css("border-bottom"," red solid 2px")
		}
		function out4(){
			var div1=document.getElementById("5");
			$(div1).css("border-bottom","whitesmoke  solid 2px")
		}
		function on5(){
			var div1=document.getElementById("6");
			$(div1).css("border-bottom"," red solid 2px")
		}
		function out5(){
			var div1=document.getElementById("6");
			$(div1).css("border-bottom","whitesmoke  solid 2px")
		}
	</script>
</body>
</html>






