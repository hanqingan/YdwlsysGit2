<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icon.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>EsayUI</title>
</head>
<body> 
<div id="cc" class="easyui-layout" style="width:600px;height:400px;" data-options="fit:true">   
    <div data-options="region:'north',title:'电气与信息工程学院后台管理',split:true" style="height:230px;">
      放入图片
      <img alt="" src="">
    </div>     
   <!--  <div data-options="region:'south',title:'南 Title',split:true" style="height:100px;"></div>    -->
   <!--  <div data-options="region:'east',iconCls:'icon-reload',title:'西',split:true" style="width:100px;"></div>   
   -->  <div data-options="region:'west',title:'模块列表',split:true" style="width:350px;">
             <div class="easyui-accordion" style="width:350px;height:200px;"data-options="fit:true" >
                   <div title="招生就业">
                         <ul id="tt" class="easyui-tree">   
							    <li>   
							        <span><a onclick="addTabs()">查询信息</a></span>   
							        						     
							    </li>   
							    <li>   
							        <span>File21</span>   
							    </li>   
							</ul>                       	
                   </div>
                   <div title="招生就业"></div>
                   <div title="招生就业"></div>
                   <div title="招生就业"></div>
             </div>
    </div>
   <div data-options="region:'center'" >
              <!--    选项卡 -->
               <div id="tabsss" class="easyui-tabs" data-options="fit:true,border:0">
	    		<div title="欢迎页面">电气与信息工程学院后台管理系统</div>
	    	</div>     
   </div>   
</div>  

	<script>
		function addTabs()
		{
			// 先判断选项卡中是否有指定的选项卡
			var flg=$("#tabsss").tabs("exists","商品类别展示");
			if(flg)
			{
				// 有---跳过去
				$("#tabsss").tabs("select","商品类别展示");
			}else
			{
				// 没有--创建
				$("#tabsss").tabs("add",
				{
					title:"商品类别展示",
					closable:true,
					/* 引入页面内容 */
					href:"ZsjyBack.jsp"
				})
			}
			
		}
	</script>
</body>
</html>