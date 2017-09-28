$(function(){

	var datagrid; //定义全局变量datagrid
	var treegrid; //定义全局变量datagrid
	var id = 0;
	datagrid = $("#role-tb").datagrid({
		dnd: true,
		method:"GET",
		url:"../role/selectAllOfRole",
		idField:'rlId',
		rownumbers: true,
		checkOnSelect : true,  
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
		},{
			field:'rlName',
			title:"角色名称",
			width:70,
			align:'center',
		},{
			field:'rlCode',
			title:"角色代码",
			width:70,
			align:'center',
		},{
			field:'rlDetail',
			title:"角色描述",
			align:'center',
			width:200,
		}
		]],

		onBeforeLoad:function(){
		},
		onLoadSuccess: function(row,data){
			loadMenu();
		},
		onClickRow: function(rowIndex, rowData){
			id = rowData.rlId;
			loadChecked(rowData.rlName);
		},
	});

	function loadMenu(){
		treegrid = $('#menu-tt').treegrid({
			title:'角色的权限设置',
			url:'../menu/MagageMenuList',
			idField:'id',
			treeField:'text',
			animate:true,
			rownumbers: true,
			singleSelect:false,
			selectOnCheck :true,
			loadFilter: function(data){
				if (data.code == 200){
					return data.data;
				}else{
					alert("1:"+data.message);
				}
			},
			columns:[[
				{
					field:'text',
					title:'菜单名称',
					width:320,
				},
				{
					field:'url',
					title:'菜单地址',
					width:320,
				},
				{
					field:'iconCls',
					title:'菜单图标',
					width:200,
				},
				]],
				toolbar:[{
					text:'保存',
					iconCls:'icon-disk',
					handler:function(){
						getSelected();
					}
				}],
				onClickRow:function(row){  
					$(this).treegrid('cascadeCheck',{  
						id:row.id, //节点ID  
						deepCascade:true //深度级联  
					});  
				},
				onLoadSuccess: function(){
				}
		});
	}

	function loadChecked(title){
		treegrid.treegrid({title:'角色【'+title+'】的权限设置'});
		$.ajax({
			url: "../roleMenu/SelectRoleMenuByRid",
			type: "post",
			dataType: "json",
			data:{"id":id},
			success: function (data) {
				if(data.code == 200){
					var list = data.data;
					treegrid.treegrid("clearSelections");
					for(var i =0;i<list.length;i++){
						treegrid.treegrid("selectRow", list[i].rmMid);
					}
				}else{
					$.messager.alert("错误提示", data.message);
				}
			}
		});
	}


	function getSelected(){
		if(id == 0){
			$.messager.alert("提示消息", "请选择要配置权限的角色!");
			return;
		}
		var selectRows =treegrid.treegrid("getChecked");
		console.log(selectRows.length);
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要移除的用户!");
			return;
		}
		var mids = '';
		for(var i = 0;i<selectRows.length;i++){
			mids += selectRows[i].id+',';
		}
		$.ajax({
			url: "../roleMenu/SaveRoleMenu",
			type: "post",
			dataType: "json",
			data:{"id":id,"ids":mids},
			beforeSend: function(){
				MaskUtil.mask();
			},
			complete: function(){
				MaskUtil.unmask();
			},
			success: function (data) {
				if(data.code == 200){
					$.messager.alert("提示", "保存成功");
				}else{
					$.messager.alert("错误提示", data.message);
				}
			}
		});
	}
});