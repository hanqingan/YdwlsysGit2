<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>EsayUI</title>
</head>
<body>
	<div id="cc" class="easyui-layout" style="width: 600px; height: 400px;"
		data-options="fit:true">
		<div data-options="region:'north',title:'电气与信息工程学院后台管理',split:false"
			style="height: 234px;">
			<img alt=""
				src="${pageContext.request.contextPath}/images/admin/bannerhou.png">
		</div>
		<div data-options="region:'west',title:'模块列表',split:false"
			style="width: 300px;">
			<div class="easyui-accordion" style="width: 350px; height: 200px;"
				data-options="fit:true">
				<div title="招生就业" id="zhaoshengjiuye">
					<ul class="easyui-tree">
						<li><span><a onclick="zhaoshengjiuye()">查询信息</a></span></li>
					</ul>
				</div>
				<div title="学院概况" id="xueyuangaikuang">
					<ul class="easyui-tree">
						<li><span><a onclick="xueyuangaikuang()">查询信息</a></span></li>
					</ul>
				</div>
				<div title="专业介绍" id="professionalIntrocducion">
					<ul class="easyui-tree">
						<li><span><a onclick="professionalIntrocducion()">查询信息</a></span>
						</li>
					</ul>
				</div>
				<div title="师资队伍" id="shiziduiwu">
					<ul class="easyui-tree">
						<li><span><a onclick="shiziduiwu()">查询信息</a></span></li>
					</ul>
				</div>
				<div title="学团工作" id="xuetuangongzuo">
					<ul class="easyui-tree">
						<li><span><a onclick="xuetuangongzuo()">查询信息</a></span></li>
					</ul>
				</div>
				<div title="党建思政" id="dangjiansizheng">
					<ul class="easyui-tree">
						<li><span><a onclick="dangjiansizheng()">查询信息</a></span></li>
					</ul>
				</div>
				<div title="科教研究" id="kejiaoyanjiu">
					<ul  class="easyui-tree">
						<li><span><a onclick="kejiaoyanjiu()">查询信息</a></span></li>
					</ul>
				</div>
				<div title="教育教学" id="jiaoyujiaoxue">
					<ul  class="easyui-tree">
						<li><span><a onclick="jiaoyujiaoxue()">查询信息</a></span></li>
					</ul>
				</div>
			</div>
		</div>
		<div data-options="region:'center'">
			<!--    选项卡 -->
			<div id="tabsss" class="easyui-tabs" data-options="fit:true,border:0">
				<div title="欢迎页面">
					<img alt=""
						src="${pageContext.request.contextPath}/images/admin/2.png">
				</div>
			</div>
		</div>
	</div>

	<script>
		function zhaoshengjiuye() {
			// 先判断选项卡中是否有指定的选项卡
			var flg = $("#tabsss").tabs("exists", "招生就业");
			if (flg) {
				// 有---跳过去
				$("#tabsss").tabs("select", "招生就业");
			} else {
				// 没有--创建
				$("#tabsss").tabs("add", {
					title : "招生就业",
					closable : true,
					/* 引入页面内容 */
					href : "${pageContext.request.contextPath}/admin/zhaoshengjiuye/ZsjyBack.jsp"
				})
			}
		}
		
		function xuetuangongzuo() {
			// 先判断选项卡中是否有指定的选项卡
			var flg = $("#tabsss").tabs("exists", "学团工作");
			if (flg) {
				// 有---跳过去
				$("#tabsss").tabs("select", "学团工作");
			} else {
				// 没有--创建
				$("#tabsss").tabs("add", {
					title : "学团工作",
					closable : true,
					/* 引入页面内容 */
					href : "${pageContext.request.contextPath}/admin/xuetuangongzuo/xuetuangongzuo.jsp"
				})
			}
		}
		
		function xueyuangaikuang() {
			// 先判断选项卡中是否有指定的选项卡
			var flg = $("#tabsss").tabs("exists", "学院概况");
			if (flg) {
				// 有---跳过去
				$("#tabsss").tabs("select", "学院概况");
			} else {
				// 没有--创建
				$("#tabsss").tabs("add", {
					title : "学院概况",
					closable : true,
					/* 引入页面内容 */
					href : "${pageContext.request.contextPath}/admin/xueyuangaikuang/xueyuangaikuang.jsp"
				})
			}
		}
	</script>
</body>
</html>