<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div style="margin:20px 0;"></div>
		<div style="padding:10px 60px 20px 60px">
	    <form id="ff" method="post" action="${pageContext.request.contextPath}/back">
	    <input type="hidden" name="method" value="save">
	    	<table cellpadding="5">
	    		<tr>
	    			<td>文章名字:</td>
	    			<td><input class="easyui-textbox" type="text" name="vtest_name" data-options="required:true" style="width: 200px;text-align: center;"></input></td>
	    		</tr>
	    		<tr>
	    			<td>文章作者:</td>
	    			<td><input class="easyui-textbox" type="text" name="vtest_teacher" data-options="required:true" style="width: 200px;text-align: center;"></input></td>
	    		</tr>
	    		<tr>
	    			<td>文章时间:</td>
	    			<td><input class="easyui-textbox" type="text" name="vtest_time" data-options="required:true" style="width: 200px;text-align: center;"></input></td>
	    		</tr>
	    		<tr>
	    			<td>文章内容:</td>
	    			<td><input class="easyui-textbox" name="vtest_id" data-options="multiline:true"  style="width: 200px; height: 200px;width: 300px"></input></td>
	    		</tr>
	    		<tr>
	    			<td>上传图片：</td>
	    			<td><input class="easyui-textbox" name="vname" data-options="multiline:true"  style="width: 200px;text-align: center;"></input></td>
	    		</tr>
	    		<tr>
	    			<td>文章分类:</td>
	    			<td>
	    				<select class="easyui-combobox" name="cid"><option value="1">本科招生信息</option><option value="2">专科科招生信息</option>
	    				<option value="1">就业信息</option><option value="2">招聘信息</option>
                        </select>
	    			</td>
	    		</tr>
	    	</table>
	    </form>
	    <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
	    </div>
	    </div>
	<script>
		function submitForm(){
		
			$('#ff').form('submit',
					{
						success:function(d)
						{
							// 判断 
							if("ok"==d)
							{
								// 隐藏对话框
								$("#zsjy_dialog").dialog("close",true);
								// 右下角做提示
								$.messager.show({
									title:'添加分类消息',
									msg:'恭喜你,添加成功',
									timeout:5000,
									showType:'slide'
								});
								// 刷新表格数据
								$("#zsjy_list").datagrid("reload",true);
							}
							
						}
					});
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
</body>
</html>