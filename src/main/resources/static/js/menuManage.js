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
			if($('#tt').tree('isLeaf',node.target)){  
				//alert("1");
			}else{  
				if(node.id == -1){
					loadParent();
				}else{
					loadChildren(node.id);
				}
			}  
		}
	});
	loadParent();
	function loadParent(){
		$("#FMenuManage").datagrid({
			dnd: true,
			method:"POST",
			url:"GetMenuParent",
			idField:'muId',
			treeField:'muText', 
			rownumbers: true,
			fitColumns:true,
			singleSelect:true,
			queryParams: {          
				id: 0            
			},  
			onBeforeLoad:function(){
				MaskUtil.mask();
			},
			loadFilter: function(data){
				console.log(data);
				if (data.code == 200){
					return data.data;
				}else{
					alert(data.message);
				}
			},
			columns:[[
				{
					field:'muId',
					title:"菜单ID",
					width:100,
				},{
					field:'muText',
					title:"菜单名称",
					width:100,
				},{
					field:'muIconcls',
					title:"图标",
					width:100,
				},{
					field:'muState',
					title:"状态",
					width:100,
				}
				]],
				toolbar:[{
					text:'新增',
					iconCls:'icon-image-add',
					handler:function(){toAddFMenu();}
				},'-',{
					text:'编辑',
					iconCls:'icon-layout-edit',
					handler:function(){doEdit();}
				},'-',{
					text:'删除',
					iconCls:'icon-layout-delete',
					handler:function(){
						doDelete();
					}
				},{
					text:'上移',
					iconCls:'icon-arrow-up',
					handler:function(){
						doDelete();
					}
				},
				{
					text:'下移',
					iconCls:'icon-arrow-down',
					handler:function(){
						doDelete();
					}
				}],
				onLoadSuccess: function(row){
					MaskUtil.unmask();
				},
		});
	}

	function loadChildren(nodeId){
		var datagrid; //定义全局变量datagrid
		var editRow = undefined; //定义全局变量：当前编辑的行
		datagrid = $("#FMenuManage").datagrid({
			dnd: true,
			method:"POST",
			url:"GetMenuParent",
			idField:'muId',
			treeField:'muText', 
			rownumbers: true,
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
					alert(data.message);
				}
			},
			columns:[[
				{
					field:'muId',
					title:"菜单ID",
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
					editor: { type: 'validatebox', options: { required: true} }
				},{
					field:'muState',
					title:"状态",
					width:100,
					editor:{//编辑选项  
						type:'combobox',  
						options:{  
							url:"emplAction!getJobStatusList.action",//请求地址  
							required:true,  
							panelHeight: 'auto',  
							valueField:'jsid',//下拉框的值  
							textField:'status'//下拉框显示的文本  
						}  
					}  
				},{
					field:'muUrl',
					title:"请求地址",
					width:100,
					editor: { type: 'validatebox', options: { required: true} }
				}
				]],
				toolbar:[{
					text:'新增',
					iconCls:'icon-image-add',
					handler:function(){
						/*//添加时先判断是否有开启编辑的行，如果有则把开户编辑的那行结束编辑
						if (editRow != undefined) {
							datagrid.datagrid("endEdit", editRow);
						}
						//添加时如果没有正在编辑的行，则在datagrid的第一行插入一行
						if (editRow == undefined) {
							datagrid.datagrid("insertRow", {
								index: 0, // index start with 0
								row: {

								}
							});
							//将新插入的那一行开户编辑状态
							datagrid.datagrid("beginEdit", 0);
							//给当前编辑的行赋值
							editRow = 0;
						}*/

						$('#FMenuManage').datagrid('appendRow',{
							muText: '',
							muIconcls: '',
							muUrl: ''
						});

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
								datagrid.datagrid("unselectAll");
							}
						}
					}
				}, '-',
				{ text: '保存', iconCls: 'icon-save', handler: function () {
					//保存时结束当前编辑的行，自动触发onAfterEdit事件如果要与后台交互可将数据通过Ajax提交后台
					datagrid.datagrid("endEdit", editRow);
				}
				}, '-',
				{ text: '取消编辑', iconCls: 'icon-redo', handler: function () {
					//取消当前编辑行把当前编辑行罢undefined回滚改变的数据,取消选择的行
					editRow = undefined;
					datagrid.datagrid("rejectChanges");
					datagrid.datagrid("unselectAll");
				}
				},'-',{
					text:'删除',
					iconCls:'icon-layout-delete',
					handler:function(){
						doDelete();
					}
				},{
					text:'上移',
					iconCls:'icon-arrow-up',
					handler:function(){
						doDelete();
					}
				},
				{
					text:'下移',
					iconCls:'icon-arrow-down',
					handler:function(){
						doDelete();
					}
				}],
				onLoadSuccess: function(row){
					MaskUtil.unmask();
				},
				onAfterEdit: function (rowIndex, rowData, changes) {
					//endEdit该方法触发此事件
					console.info(rowData);
					editRow = undefined;
				},
				onDblClickRow: function (rowIndex, rowData) {
					//双击开启编辑行
					if (editRow != undefined) {
						datagrid.datagrid("endEdit", editRow);
					}
					if (editRow == undefined) {
						datagrid.datagrid("beginEdit", rowIndex);
						editRow = rowIndex;
					}
				}
		});
	}


	$('#dfm').dialog({  
		title:'添加一级菜单',  
		collapsible:false, //设置可折叠  
		minimizable:false,  
		maximizable:true,  
		resizable:true,  
		buttons:[{ //设置下方按钮数组  
			text:'添加',  
			iconCls:'icon-ok',  
			handler:function(){  
				fmSubmit();  
			}  
		},{  
			text:'取消',
			iconCls:'icon-delete3',
			handler:function(){
				$('#dfm').dialog('close');
			}
		}]  
	});  

	$('#dtm').dialog({  
		title:'添加二级菜单',  
		collapsible:false, //设置可折叠  
		minimizable:false,  
		maximizable:true,  
		resizable:true,  
		buttons:[{ //设置下方按钮数组  
			text:'添加',  
			iconCls:'icon-ok',  
			handler:function(){  
				tmSubmit();  
			}  
		},{  
			text:'取消',
			iconCls:'icon-delete3',
			handler:function(){
				$('#dtm').dialog('close');
			}
		}]  
	});  

	$('#dm-edt').dialog({  
		title:'编辑菜单',  
		collapsible:false, //设置可折叠  
		minimizable:false,  
		maximizable:true,  
		resizable:true,  
		buttons:[{ //设置下方按钮数组  
			text:'确定',  
			iconCls:'icon-ok',  
			handler:function(){  
				emSubmit();  
			}  
		},{  
			text:'取消',
			iconCls:'icon-delete3',
			handler:function(){
				$('#dm-edt').dialog('close');
			}
		}]  
	});  


	//新增一级菜单
	function toAddFMenu() {
		$('#dfm').dialog('open');
	}

	$("input[name='muText']").validatebox({
		require:true,
		validType:'length[2,20]',
		missingMeasage:'请输入菜单名称',
		invalidMessage:'请输入2-20长度的名称',
	});

	function fmSubmit(){
		$('#ffm').form('submit', {   
			url:"AddMenu",   
			onSubmit: function(){   
				return $(this).form('validate');
			},   
			onBeforeLoad:function(){
				MaskUtil.mask();
			},
			success:function(data){ 
				MaskUtil.unmask();
				var data = eval('(' + data + ')');
				if(data.code == 200){
					$('#dfm').dialog('close');
					$(".textboxr").val("");
					$('#menuManage').treegrid("reload");
				}else{
					$.messager.alert("添加提示", data.message);
				}
			}   
		});  
	}


	//新增二级菜单
	function toAddTMenu() {
		var selectRows = $('#menuManage').treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要要添加二级菜单的一级菜单!");
			return;
		}else if(selectRows[0].pid != 0){
			$.messager.alert("提示消息", "请选择一级菜单!");
			return;
		}else{
			$(".pMenuName").html(selectRows[0].text);
			$(".muPid").val(selectRows[0].id);
			$('#dtm').dialog('open');
		}

	}
	function tmSubmit(){
		$('#ftm').form('submit', {   
			url:"AddMenu",   
			onSubmit: function(){   
				return $(this).form('validate');
			},   
			onBeforeLoad:function(){
				MaskUtil.mask();
			},
			success:function(data){ 
				MaskUtil.unmask();
				var data = eval('(' + data + ')');
				if(data.code == 200){
					$('#dtm').dialog('close');
					$(".textboxr").val("");
					$('#menuManage').treegrid("reload");
				}else{
					$.messager.alert("添加提示", data.message);
				}
			}   
		});  
	}

	function doEdit(){
		var selectRows = $('#menuManage').treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要编辑的菜单!");
			return;
		}else{
			$.ajax({
				method : 'POST',
				url : 'GetMenuById',
				async : false,
				dataType : 'json',
				data:{id:selectRows[0].id},
				beforeSend : function() {
					MaskUtil.mask();
				},
				success : function(data1) {
					console.log(data1);
					if(data1.code == 200){
						if(data1.data.muPid != 0){
							$.ajax({
								method : 'POST',
								url : 'GetMenuParent',
								async : false,
								dataType : 'json',
								complete:function(){
									MaskUtil.unmask();
								},
								success : function(data2) {
									console.log(data2);
									if(data2.code == 200){
										$(".muPid").remove();
										$('.muPid-select').combobox("loadData",data2.data);
										$.each(data2.data, function(i, item) {
											if(item.muId == data1.data.muPid){
												$(".muPid-select").combobox('setValue',item.muId);
												$(".muPid-select").combobox('setText',item.muText);
											}
										});
									}else{
										$.messager.alert("提示", data2.message);
									}
								},
								error : function() {
									alert('系统异常，请稍候再试');
								}
							});
						}else{
							MaskUtil.unmask();
							$(".edt_parent").remove();;
							$(".muPid").val(0);
							$(".edt-url").remove();
						}
						$(".muId").val(data1.data.muId);
						$('#dm-edt').form('load',{
							muText:data1.data.muText,
							muIconcls:data1.data.muIconcls,
							muUrl:data1.data.muUrl,
						}).dialog("open");
					}else{
						$.messager.alert("提示", data.message);
					}
				},
				error : function() {
					alert('系统异常，请稍候再试');
				}
			});
		}
	}

	function emSubmit(){
		$('#fem').form('submit', {   
			url:"UpdateMenu",   
			onSubmit: function(){   
				return $(this).form('validate');
			},   
			onBeforeLoad:function(){
				MaskUtil.mask();
			},
			success:function(data){ 
				MaskUtil.unmask();
				var data = eval('(' + data + ')');
				console.log(data);
				if(data.code == 200){
					$('#dm-edt').dialog('close');
					$(".textboxr").val("");
					$('#menuManage').treegrid("reload");
				}else{
					$.messager.alert("提示", data.message);
				}
			}   
		});  
	}

	//删除用户数据
	function doDelete() {
		var selectRows = $('#menuManage').treegrid("getSelections");
		if (selectRows.length < 1) {
			$.messager.alert("提示消息", "请选择要删除的菜单!");
			return;
		}
		//提醒用户是否是真的删除数据
		$.messager.confirm("确认消息", "您确定要删除该菜单吗？", function (r) {
			if (r) {
				MaskUtil.mask();
				$.ajax({
					url: "DeleteMenuById",
					type: "post",
					dataType: "json",
					data:{id: selectRows[0].id},
					success: function (data) {
						MaskUtil.unmask();
						if(data.code == 200){
							$('#menuManage').treegrid("reload");
							$('#menuManage').treegrid("clearSelections");
						}else{
							$.messager.alert("删除提示", json.message);
						}
					}
				});
			}
		});
	}

});