<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>


		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<link rel="stylesheet" href="css/bootstrap.css"/>
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
				width: 100px; 
				height: 50px; 
				float: left;
				margin-top: 5px;
				align="center";
				padding-top: 10px;
				margin-left: 30px;
				font-size: 22px;
			}
			.footer_top{
				line-height: 30px;
				padding-top: 10px;
				font-family: "微软雅黑";
			}
			li{S
				outline-style: none;
			}
		</style>
</head>
<body>
		<div class="container-fluid" align="center"  style="display:table;width:auto; margin-top: 5px;">
			<div  style="width: 100px; height: 50px;  float: left; margin-top:5px; padding-top: 10px; font-size: 22px; background-color: red;margin-rigth: 40px;" align="center"><a href="index.html">首页</a></div>	
			<div class="dao1" id="1"><a  onmousemove="on()" onmouseout="out()" href="dangzheng/dangzheng.html" action="post">党建思政</a></div>
			<div class="dao1" id="2" ><a onmousemove="on1()" onmouseout="out1()" href="InfoServlet?flag=dt&part=dt" action="post">党建动态</a></div>
			<div  class="dao1" id="3" ><a onmousemove="on2()" onmouseout="out2()" href="InfoServlet?flag=number" action="post" >组织结构</a></div>
			<div  class="dao1" id="4" ><a onmousemove="on3()" onmouseout="out3()" href="InfoServlet?flag=dt&part=xx" action="post" >理论学习</a></div>
			<div  class="dao1" id="5" ><a onmousemove="on4()" onmouseout="out4()" href="InfoServlet?flag=dt&part=fj" action="post" >工青妇建</a></div>
			<div  class="dao1" id="6" ><a onmousemove="on5()" onmouseout="out5()" href="dangzheng/load.jsp" >资料下载</a></div>
			<br><br><br><br>
		</div>
		<div  align="center" style=" width="1000px"; position: fixed;">
		
			<img src="images/dangzheng/dang.png"  style=" width="1000px";" />
		</div>
		<!-- footer -->
		
		<div style=" height:800px;" align="center" >
		<h1 align="center" style="800px"> ${i.title}</h1>
		
			
		<div align="center">
			
			<!-- z组织结构 -->
			<div  style="width: 30%;">
			
			<h3>计算机与网络教工党支部党员名单</h3>
			<br>
			<c:forEach items="${listother}" var="item" varStatus="i"></br>
			
			<tr>
				<td style="width: 600px;" >${item.post}:&nbsp;&nbsp;${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				
				
			</tr>
			</c:forEach>
			<br>
			<h4>党员　&nbsp;</h4>
			<c:forEach items="${list}" var="item" varStatus="i">
			
			<tr>
				<td style="width: 600px; style="overflow: hidden;white-space: nowrap;"" >${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></br>
				
				
			</tr>
			</c:forEach>
			
			<!--数据科学与公共数学教工党支部  -->
			<br><br><br>
			<h3>数据科学与公共数学教工党支部党员名单</h3>
			<br>
			<c:forEach items="${listother1}" var="item" varStatus="i">
			
			<tr>
				<td style="width: 600px;" >${item.post}:&nbsp;&nbsp;${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></br>
				
				
			</tr>
			</c:forEach>
			
			<h4>党员　&nbsp;</h4>
			<c:forEach items="${list1}" var="item" varStatus="i">
			
			<tr>
				<td style="width: 600px;" >${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></br>
				
				
			</tr>
			</c:forEach>
			<!--电子与电气教工党支部  -->
			<br><br><br>
			<h3>电子与电气教工党支部党员名单</h3>
			<br>
			<c:forEach items="${list2}" var="item" varStatus="i">
			
			<tr>
				<td style="width: 600px; " >${item.post}:&nbsp;&nbsp;${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></br>
				
				
			</tr>
			</c:forEach>
			
			<h4>党员　&nbsp;</h4>
			<c:forEach items="${listother2}" var="item" varStatus="i">
			
			<tr>
				<td style="width: 600px;" >${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></br>
				
				
			</tr>
			</c:forEach>
			<!--学生党支部  -->
			<br><br><br>
			<h3>学生党支部党员名单</h3>
			<br>
			<c:forEach items="${listother3}" var="item" varStatus="i"></br>
			
			<tr>
				<td style="width: 600px;" >${item.post}:&nbsp;&nbsp;${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				
				
			</tr>
			</c:forEach>
			<%
				int i=0;
			%>
			<h4>党员　&nbsp;</h4>
			<c:forEach items="${list3}" var="item" varStatus="i">
			
			<tr>
				<td style="width: 600px;overflow: hidden;white-space: nowrap;" >${item.nname}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				
				
			</tr>
			<% 
				 i++;
				if(i%3==0){
					%>
					</br>
					<%
				}
			%>
			</c:forEach>	
			<br><br><br>
			
			
			
			</div>
							
		</div>
		<div style="background-color:  #808080;" >
			<div class="container">
				<div class="footer_top">
					<div class="col-sm-3" style="padding-top: 30px;">
							<div style="height: 150px; width: 150px; border-radius: 100px;"><img src="images/yuanhui.png"></div>
					</div>
					<div class="col-sm-3" style="padding-top: 5px;">
						<ul class="list1" style="list-style-type: none;">
							<h3>关于本站</h3>
							<li><a href="#">网站目录</a></li>
							<li><a href="#">版本更新</a></li>
							<li><a href="#">制作团队</a></li>
							<li><a href="#">服务信箱</a></li>
							
						</ul>
					</div>	
					<div class="col-sm-3" style="padding-top: 5px; ">
						<ul class="list1" style="list-style-type: none;">
							<h3>联系我们</h3>
							<li><a href="#">院长信箱</a></li>
							<li><a href="#">本科生招生</a></li>
							<li><a href="#">专科生招生</a></li>
						</ul>
					</div>
					<div class="col-sm-3" style="padding-top: 5px;">
						<ul class="list1" style="list-style-type: none;">
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
		<div class="copy" style="background-color: #808080;">
			<p style="color: black;" align="center">
				Copyright©2018-2019吉林农业科技学院电气与信息工程学院版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：吉林市吉林经济技术开发区翰林路77号&nbsp;&nbsp;
				邮编：132101&nbsp;&nbsp;电话：0432-63509888、63509118
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




