<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- 要开始展示类别信息了....(和数据库进行一步交互) -->
		<table id="xtgz_list"></table>  
		<div id="xtgz_dialog"></div>
		alert(11111);
		<script>
			$('#xtgz_list').datagrid
			({
              url:'${pageContext.request.contextPath}/xt?method=findAll',		   // 要访问的serrvlet的地址  返回的是json数据
			    columns:  // 根据返回来的json数据进行匹配
			    [[  
			      	/* 				
			      		title:页面标题
			      		field:会和返回json的key做对比 对比成功 将value值放在分类编号等这一列
			      	*/
			        {field:'text_id',title:'文章编号',width:20},    
			        {field:'text_name',title:'文章名称',width:300}, 
			        {field:'text',title:'文章名称',width:1000}, 
			        {field:'xxxxx',title:'操作',width:100,formatter: function(value,row,index)
												        {
												        	/* 
												        		field=value
												        		row:一行的数据
												        		index:每行的角标
												        		,'"+row.vtest_time+"','"+row.vtest_teacher+"','"+row.vtest_id+"','"+row.cid+"',
												        		,'"+row.vname+"','"+row.vtest_name+"','"+row.vtest_teacher+"','"+row.vtest_time+"','"+row.vtest_id+"','"+row.cid+"'
												        	*/
												        	return "<a href=# onclick=del('"+row.vid+"')>删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=# onclick=update('"+row.vid+"')>修改</a>";
												        	
												        }
			        }
    
			    ]],
			    /* 占满父容器 */
			    fit:true,
			    /* 分页工具 */
			    pagination:true,
			    pageList:[5,10,15,20,25,30],
			    pageSize:5,
			    /* 工具栏 */
			   toolbar: 
			    [
			    {
					iconCls: 'icon-add', /* 图片样式 */
					handler: function() /*  点击图片后触发事件 */
							 {
								// 把一个html渲染成dialog
								$("#xtgz_dialog").dialog(
									{
										width:550,
										height:630,
										title:"添加",
										href:"xtgz_add.jsp"
									}		
								);
							}
				},'-',
				{
					iconCls: 'icon-help',
					handler: function()
							 {
									alert('帮助按钮')
							}
				}]

			});  
		</script>
		
		<script>
			function del(vid)
			{
			
				// ajax异步交互
		 	var url="${pageContext.request.contextPath}/back";
				var params="method=ZsdeleteByVid&vid="+vid;
				$.post(url,params,function(d)
				{
					if("ok"==d)
					{
						// 删除成功 右下角做提示
						$.messager.show({
							title:'分类删除消息',
					      	msg:'文章已经成功删除了！',
							timeout:5000,
							showType:'fade'
						});

						// 刷新表格的最新数据的方法
						$("#xtgz_list").datagrid("reload",true);
					}
				}) 
			}
			/* ,vtest_time,vtest_teacher,vtest_id,cid
			,vname,vtest_name,vtest_teacher,time,vtest_id,cid*/
		/* 	 */
			function update(vid)
			{
	   	$("#xtgz_dialog").dialog(
				{
					 width:550,
					height:630,
					href:"xtgz_update.jsp?vid="+vid
					
				});  
	
			
			}
			
			
		</script>
		
</body>
</html>