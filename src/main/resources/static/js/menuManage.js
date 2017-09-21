$(function(){
	$('#tt').tree({
		method : 'POST',
		url : '../menu/MagageMenuList',
		animate:true,
		loadFilter: function(data){
			console.log(data);
			if (data.code == 200){
				return data.data;
			}else{
				alert(data.message);
			}
		},
		error : function() {
			alert('系统异常，请稍候再试');
		},
		onClick: function(node){

			if(node.id == -1){
				loadMenu(0);
			}else{
				loadMenu(node.id);
			}
		}
	});
	loadMenu(0);
	function loadMenu(nodeId){
		var datagrid; //定义全局变量datagrid
		var editRow = undefined; //定义全局变量：当前编辑的行
		datagrid = $("#FMenuManage").datagrid({
			dnd: true,
			method:"POST",
			url:"GetMenuParent",
			idField:'muId',
			treeField:'muText', 
			rownumbers: true,
			checkOnSelect : true,  
			striped: true, //行背景交换
			fitColumns:true,
			singleSelect:true,
			queryParams: {          
				id: nodeId            
			},  
			onBeforeLoad:function(){
				MaskUtil.mask();
			},
			loadFilter: function(data){
				console.log(data);
				if (data.code == 200){
					return data.data;
				}else{
					alert("1:"+data.message);
				}
			},
			columns:[[{
				field : 'ck',
				title:'编号',
				checkbox : true
			},
			{
				field:'muId',
				title:"菜单编号",
				width:100,
			},{
				field:'muText',
				title:"菜单名称",
				width:100,
				editor: { type: 'validatebox', options: { required: true} }
			},{
				field:'muIconcls',
				title:"图标",
				width:100,
				editor: { 
					type: 'validatebox',
				}
			},{
				field:'muUrl',
				title:"请求地址",
				width:100,
				editor: { type: 'validatebox'}
			},{
				field:'muState',
				title:"状态",
				width:100,
				editor:{//编辑选项  
					type:'combobox',  
					options:{
						valueField: 'value',  
						textField: 'text',  
						data: [{ 'value': 'closed', 'text': 'closed' }, { 'value': 'open', 'text': 'open'}]  
					}
				}  
			},{
				field:'muChecked',
				title:"是否选中",
				width:100,
				editor:{//编辑选项  
					type:'combobox',  
					options:{
						valueField: 'value',  
						textField: 'text',  
						data: [{ 'value': 'false', 'text': 'false' }, { 'value': 'true', 'text': 'true'}]  
					}
				}  
			}
			]],
			toolbar:[{
				text:'新增',
				iconCls:'icon-image-add',
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
				iconCls:'icon-layout-edit',
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
				iconCls:'icon-layout-delete',
				handler:function(){
					doDelete(datagrid);
				}
			},{
				text:'上移',
				iconCls:'icon-arrow-up',
				handler:function(){
					MoveUp(datagrid);
				}
			},
			{
				text:'下移',
				iconCls:'icon-arrow-down',
				handler:function(){
					MoveDown(datagrid);
				}
			},
			{
				text:'移动到',
				iconCls:'icon-arrow-right',
				handler:function(){

				}
			}],
			onLoadSuccess: function(row){
				$("#save").hide();
				$("#cancle").hide();
				MaskUtil.unmask();
				datagrid.datagrid("unselectAll");
			},
			onBeforeEdit:function(index,row){
				$("#save").show();
				$("#cancle").show();
			},
			onAfterEdit:function(index,row){
				$.ajax({
					url:'UpdateMenu',
					type:'post',
					dataType: 'json',
					data: {  
						"muId" : row.muId,
						"muText":row.muText,
						"muIconcls":row.muIconcls,
						"muUrl":row.muUrl,
						"muChecked":row.muChecked,
						"muState":row.muState,
						"muPid":nodeId
					},
					success:function(data){
						$("#save").hide();
						$("#cancle").hide();
						editRow = undefined;
						$("#tt").tree("reload");
						datagrid.datagrid("reload",editRow);
					},
					error:function(){
						$("#save").show();
						$("#cancle").show();
					}
				});
			},
		});
	}

	//上移
	function MoveUp(datagrid) {
		var row = datagrid.datagrid("getSelected");
		console.log(row);
		if (row != null) {
			var index =datagrid.datagrid('getRowIndex', row);
			mysort(index, 'up', datagrid);
		}else{
			$.messager.alert("编辑提示", "请选择要进行移动的行");
		}
	}
	//下移
	function MoveDown(datagrid) {
		var row = datagrid.datagrid("getSelected");
		if (row != null) {
			var index = datagrid.datagrid('getRowIndex', row);
			mysort(index, 'down',datagrid);
		}else{
			$.messager.alert("编辑提示", "请选择要进行移动的行");
		}

	}


	function mysort(index, type, datagrid) {
		if ("up" == type) {
			if (index != 0) {
				var toup = datagrid.datagrid('getData').rows[index];
				var todown = datagrid.datagrid('getData').rows[index - 1];

				datagrid.datagrid('getData').rows[index] = todown;
				datagrid.datagrid('getData').rows[index - 1] = toup;
				exchange(toup.muId,todown.muId);
				datagrid.datagrid('refreshRow', index);
				datagrid.datagrid('refreshRow', index - 1);
				datagrid.datagrid('selectRow', index - 1);
			}
		} else if ("down" == type) {
			var rows = datagrid.datagrid('getRows').length;
			if (index != rows - 1) {
				var todown = datagrid.datagrid('getData').rows[index];
				var toup = datagrid.datagrid('getData').rows[index + 1];
				datagrid.datagrid('getData').rows[index + 1] = todown;
				datagrid.datagrid('getData').rows[index] = toup;
				exchange(toup.muId,todown.muId);
				datagrid.datagrid('refreshRow', index);
				datagrid.datagrid('refreshRow', index + 1);
				datagrid.datagrid('selectRow', index + 1);
			}
		}
	}

	function exchange(position1,position2){
		$.ajax({
			url:'ExchangeMenuPosition',
			type:'post',
			dataType: 'json',
			data: {  
				"id1" : position1,
				"id2":position2,
			},
			success:function(data){
				console.log(data);
			},
			error:function(){
				alert(data.message);
			}
		});
	}


	//删除数据
	function doDelete(datagrid) {
		var selectRows =datagrid.treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要删除的菜单!");
			return;
		}
		//提醒用户是否是真的删除数据
		$.messager.confirm("确认消息", "您确定要删除菜单【"+selectRows[0].muText+"】吗？", function (r) {
			if (r) {
				MaskUtil.mask();
				$.ajax({
					url: "DeleteMenuById",
					type: "post",
					dataType: "json",
					data:{"id": selectRows[0].muId},
					success: function (data) {
						MaskUtil.unmask();
						if(data.code == 200){
							datagrid.datagrid("reload");
							datagrid.datagrid("clearSelections");
							$("#tt").tree("reload");
						}else{
							$.messager.alert("删除提示", data.message);
						}
					}
				});
			}
		});
	}

});