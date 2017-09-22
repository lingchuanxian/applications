/**
 * 
 */

$(function(){
	var datagrid; //定义全局变量datagrid
	var editRow = undefined; //定义全局变量：当前编辑的行
	datagrid = $("#user-tb").datagrid({
		title:"用户列表",
		dnd: true,
		method:"GET",
		url:"GetUserList",
		idField:'usId',
		rownumbers: true,
		checkOnSelect : true,  
		fit:true,
		striped: true, //行背景交换
		fitColumns:true,
		pagination:true,//分页控件 
		pageSize: 2,//每页显示的记录条数，默认为10 
		pageList: [2,10,20,50,100],//可以设置每页记录条数的列表 
		frozenColumns:[[ 
			{field:'ck',checkbox:true} 
			]], 
			loadFilter: function(data){
				if (data.code == 200){
					return data.data;
				}else{
					alert("1:"+data.message);
				}
			},
			columns:[[
				{
					field:'usId',
					title:"用户编号",
					width:40,
					align:'center',
				},{
					field:'usName',
					title:"用户名",
					width:60,
					align:'center',
				},{
					field:'usLoginname',
					title:"登陆账号",
					width:60,
					align:'center',
				},{
					field:'role',
					title:"用户角色",
					width:60,
					align:'center',
					formatter: function(value,row,index){
						if(row.role.rlName){
							return row.role.rlName;
						}else{
							return "未分配角色";
						}
					}
				},{
					field:'usSex',
					title:"性别",
					width:50,
					align:'center',
					formatter: function(value,row,index){
						if(value == 0){
							return "男";
						}else{
							return "女";
						}
					}
				},{
					field:'usPhone',
					title:"手机号",
					width:60,
					align:'center',
				},{
					field:'usMail',
					title:"邮箱",
					width:80,
					align:'center',
				},{
					field:'usAddress',
					title:"联系地址",
					width:140,
					align:'center',
				},{
					field:'usState',
					title:"启用",
					width:30,
					align:'center',
					formatter: function(value,row,index){
						if(value == 0){
							return "是";
						}else{
							return "<font color='#FF0000'>否</font>";
						}
					}
				},{
					field:'usRegistdate',
					title:"添加时间",
					width:80,
					align:'center',
					formatter: function(value,row,index){
						return jsonYearMonthDay(value);
					}
				},{
					field:'usLastlogindate',
					title:"最后登陆时间",
					width:80,
					align:'center',
					formatter: function(value,row,index){
						return jsonTimeStamp(value);
					}
				}
				]],
				toolbar:[{
					text:'新增',
					iconCls:'icon-image-add',
					handler:function(){

					}
				},'-',{
					text:'编辑',
					iconCls:'icon-layout-edit',
					handler:function(){

					}
				},'-',{
					text:'删除',
					iconCls:'icon-layout-delete',
					handler:function(){
						doDelete(datagrid);
					}
				}],
				onBeforeLoad:function(){
				},
				onLoadSuccess: function(row){

				}
	});
	 $('#search').appendTo('.datagrid-toolbar');  
	//设置分页控件 
	var p = datagrid.datagrid('getPager'); 
	$(p).pagination({ 
		beforePageText: '第',//页数文本框前显示的汉字 
		afterPageText: '页    共 {pages} 页', 
		displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录', 
		/*onBeforeRefresh:function(){
            $(this).pagination('loading');
            alert('before refresh');
            $(this).pagination('loaded');
        }*/ 
	}); 

	//删除数据
	function doDelete(datagrid) {
		var selectRows =datagrid.treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要删除的菜单!");
			return;
		}
		//提醒用户是否是真的删除数据
		$.messager.confirm("确认消息", "您确定要删除角色【"+selectRows[0].rlName+"】吗？", function (r) {
			if (r) {
				MaskUtil.mask();
				$.ajax({
					url: "DeleteRoleById",
					type: "post",
					dataType: "json",
					data:{"id": selectRows[0].rlId},
					success: function (data) {
						MaskUtil.unmask();
						if(data.code == 200){
							datagrid.datagrid("reload");
							datagrid.datagrid("clearSelections");
						}else{
							$.messager.alert("删除提示", data.message);
						}
					}
				});
			}
		});
	}
});