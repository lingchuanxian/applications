/**
 * 
 */

$(function(){
	var datagrid; //定义全局变量datagrid
	var editRow = undefined; //定义全局变量：当前编辑的行
	datagrid = $("#role-tb").datagrid({
		dnd: true,
		method:"GET",
		url:"selectAllOfRole",
		idField:'rlId',
		rownumbers: true,
		checkOnSelect : true,  
		width: $(window).width() - 20,
		height: $(window).height() - 10,
		striped: true, //行背景交换
		fitColumns:true,
		singleSelect:true,
		loadFilter: function(data){
			if (data.code == 200){
				return data.data;
			}else{
				alert("1:"+data.message);
			}
		},
		columns:[[{
			field : 'ck',
			title:'编号',
			checkbox : true,
			align:'center',
		},
		{
			field:'rlId',
			title:"角色编号",
			width:20,
			align:'center',
		},{
			field:'rlName',
			title:"角色名称",
			width:70,
			align:'center',
			editor: { type: 'validatebox', options: { required: true} }
		},{
			field:'rlCode',
			title:"角色代码",
			width:70,
			align:'center',
			editor: { 
				type: 'validatebox',
				options: { required: true}
			}
		},{
			field:'rlDetail',
			title:"角色描述",
			align:'center',
			width:200,
			editor: { type: 'validatebox'}
		}
		]],
		toolbar:[{
			text:'新增',
			iconCls:'icon-lock-add',
			handler:function(){
				//添加时先判断是否有开启编辑的行，如果有则把开户编辑的那行结束编辑
				if (editRow != undefined) {
					datagrid.datagrid("endEdit", editRow);
				}
				//添加时如果没有正在编辑的行，则在datagrid的最后追加
				if (editRow == undefined) {
					var index = datagrid.datagrid("appendRow", {
						muText: '',
						muIconcls: 'icon-node',
						muChecked:'false',
						muState:'closed',
						muUrl: ''
					}).datagrid('getRows').length-1;;
					//将新插入的那一行开户编辑状态
					datagrid.datagrid("beginEdit", index);
					datagrid.datagrid("checkRow",index);
					//给当前编辑的行赋值
					editRow = index;
				}
			}
		},'-',{
			text:'编辑',
			iconCls:'icon-lock-edit',
			handler:function(){
				//修改时要获取选择到的行
				var rows = datagrid.datagrid("getSelections");
				//如果只选择了一行则可以进行修改，否则不操作
				if (rows.length == 1) {
					//修改之前先关闭已经开启的编辑行，当调用endEdit该方法时会触发onAfterEdit事件
					if (editRow != undefined) {
						datagrid.datagrid("endEdit", editRow);
					}
					//当无编辑行时
					if (editRow == undefined) {
						//获取到当前选择行的下标
						var index = datagrid.datagrid("getRowIndex", rows[0]);
						//开启编辑
						datagrid.datagrid("beginEdit", index);
						//把当前开启编辑的行赋值给全局变量editRow
						editRow = index;
						//当开启了当前选择行的编辑状态之后，
						//应该取消当前列表的所有选择行，要不然双击之后无法再选择其他行进行编辑
						//datagrid.datagrid("unselectAll");
					}
				}else{
					$.messager.alert("编辑提示", "请选择要进行编辑的行");
				}
			}
		},
		{ id : 'save', text: '保存', iconCls: 'icon-disk', handler: function () {
			//保存时结束当前编辑的行，自动触发onAfterEdit事件如果要与后台交互可将数据通过Ajax提交后台
			datagrid.datagrid("endEdit", editRow);
			editRow = undefined;
		}
		},
		{ id : 'cancle', text: '取消编辑', iconCls: 'icon-undo', handler: function () {
			datagrid.datagrid('cancelEdit',editRow)
			editRow = undefined;
			datagrid.datagrid("unselectAll");
			//添加时取消新增的一行还在，暂时用刷新页面的方法
			datagrid.datagrid("reload");
			$("#save").hide();
			$("#cancle").hide();
		}
		},'-',{
			text:'删除',
			iconCls:'icon-lock-delete',
			handler:function(){
				doDelete(datagrid);
			}
		},'-',{
			text:'成员管理',
			iconCls:'icon-user-group',
			handler:function(){
				authorize();
			}
		}],
		onBeforeLoad:function(){
			$("#save").hide();
			$("#cancle").hide();
		},
		onLoadSuccess: function(row){
			datagrid.datagrid("unselectAll");
		},
		onBeforeEdit:function(index,row){
			$("#save").show();
			$("#cancle").show();
		},
		onAfterEdit:function(index,row){
			$.ajax({
				url:'AddOrUpdateRole',
				type:'post',
				dataType: 'json',
				data: {  
					"rlId" : row.rlId,
					"rlName":row.rlName,
					"rlCode":row.rlCode,
					"rlDetail":row.rlDetail,
				},
				success:function(data){
					$("#save").hide();
					$("#cancle").hide();
					editRow = undefined;
					datagrid.datagrid("reload",editRow);
				},
				error:function(){
					$("#save").show();
					$("#cancle").show();
				}
			});
		},
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

	var user_datagrid; 
	var user_select_datagrid; 

	function authorize(){
		var selectRows =datagrid.treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要管理的角色!");
			return;
		}
		openUserDialogAndLoadData(selectRows[0].rlId,selectRows[0].rlName);
	}

	function openUserDialogAndLoadData(id,name){

		$('#role_menu').dialog({
			title: "角色【"+name+'】成员管理',
			width: 915,
			height: 680,
			closed: false,
			cache: false,
			modal: true,
			buttons:[{
				text:'关闭',
				iconCls:'icon-cancel',
				handler:function(){
					user_datagrid.datagrid("clearSelections");
					$('#role_menu').dialog("close");
				}
			}]
		});

		user_datagrid = $("#role-user-tb").datagrid({
			method:"GET",
			url:"../userRole/SelectUserByRid?id="+id,
			idField:'urId',
			fit:true,
			checkOnSelect : true,  
			width:900,
			height: 600,
			fitColumns:true,
			pagination:true,//分页控件 
			pageSize: 20,//每页显示的记录条数，默认为10 
			pageList: [10,20,50,100],//可以设置每页记录条数的列表 
			loadFilter: function(data){
				if (data.code == 200){
					return data.data;
				}else{
					alert("1:"+data.message);
				}
			},
			columns:[[{
				field : 'ck',
				title:'编号',
				checkbox : true,
				align:'center',
			},
			{
				field:'usName',
				title:"用户名",
				width:20,
				align:'center',
				formatter:function(val,row,index){  
					return row.urUser.usName;
				},  
			},{
				field:'urOrg',
				title:"机构",
				width:30,
				align:'center',
				formatter:function(val,row,index){  
					return row.urUser.organization.orgName;
				},  
			},{
				field:'urDep',
				title:"部门",
				width:30,
				align:'center',
				formatter:function(val,row,index){  
					return row.urUser.department.depName;
				},  
			}
			]],
			toolbar:[{
				text:'新增',
				iconCls:'icon-user-add',
				handler:function(){
					OpenSelectUserDialog(id);
				}
			},'-',{
				text:'移除',
				iconCls:'icon-user-delete',
				handler:function(){
					RemoveRoleUser();
				}
			}],

		});

	}

	function RemoveRoleUser(){
		var selectRows =user_datagrid.treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要移除的用户!");
			return;
		}
		var ids = '';
		var names ='';
		for(var i =0; i< selectRows.length;i++){  
			ids += selectRows[i].urId+",";
			names += selectRows[i].urUser.usName+",";
		} 
		
		//提醒用户是否是真的删除数据
		$.messager.confirm("确认消息", "您确定要移除用户【"+names.substr(0,names.length-1)+"】吗？", function (r) {
			if (r) {
				$.ajax({
					url: "../userRole/RemoveUserOfRole",
					type: "post",
					dataType: "json",
					data:{"ids":ids},
					success: function (data) {
						if(data.code == 200){
							user_datagrid.datagrid("clearSelections");
							user_datagrid.datagrid("reload");
						}else{
							$.messager.alert("删除提示", data.message);
						}
					}
				});
			}
		});
	}

	function OpenSelectUserDialog(id){

		user_select_datagrid = $("#user-select-tb").datagrid({
			method:"GET",
			url:"../user/GetUserListExpectRoleExist",
			queryParams: {          
				rid: id            
			} ,
			idField:'usId',
			fit:true,
			checkOnSelect : true,  
			width:900,
			height: 600,
			fitColumns:true,
			pagination:true,//分页控件 
			pageSize: 20,//每页显示的记录条数，默认为10 
			pageList: [10,20,50,100],//可以设置每页记录条数的列表 
			loadFilter: function(data){
				if (data.code == 200){
					console.log(data.data);
					return data.data;
				}else{
					alert("1:"+data.message);
				}
			},
			columns:[[{
				field : 'ck',
				title:'编号',
				checkbox : true,
				align:'center',
			},
			{
				field:'usName',
				title:"用户名",
				width:20,
				align:'center',
			},{
				field:'urOrg',
				title:"机构",
				width:30,
				align:'center',
				formatter:function(val,row,index){  
					return row.organization.orgName;
				},  
			},{
				field:'urDep',
				title:"部门",
				width:30,
				align:'center',
				formatter:function(val,row,index){  
					return row.department.depName;
				},  
			}
			]],
		});

		$('#user_select').dialog({
			title: '选择用户',
			width: 815,
			height: 680,
			closed: false,
			cache: false,
			modal: true,
			buttons:[{
				text:'确定添加',
				iconCls:'icon-ok',
				handler:function(){
					SubmitSelectedUser(id);
				}
			},{
				text:'关闭',
				iconCls:'icon-cancel',
				handler:function(){
					user_select_datagrid.datagrid("clearSelections");
					$('#user_select').dialog("close");
				}
			}]
		});
	}

	function SubmitSelectedUser(id){
		var selectRows =user_select_datagrid.treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要新增的用户!");
			return;
		}
		var uids = '';
		for(var i =0; i< selectRows.length;i++){  
			uids += selectRows[i].usId+",";
		} 
		$.ajax({
			url: "../userRole/AddUserToRole",
			type: "post",
			dataType: "json",
			data:{"rid": id,"uids":uids},
			success: function (data) {
				if(data.code == 200){
					user_select_datagrid.datagrid("clearSelections");
					$('#user_select').dialog("close");
					user_datagrid.datagrid("reload");
				}else{
					$.messager.alert("删除提示", data.message);
				}
			}
		});
	}

});