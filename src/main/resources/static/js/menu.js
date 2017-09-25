$(function(){

	$.ajax({  
		type : 'POST',  
		dataType : "json",  
		url : 'menu/GetMenuParent',  
		data:{
			"id":0
		},
		beforeSend: function () {
			MaskUtil.mask();
	    },
	    complete: function () {
	    	MaskUtil.unmask();
	    },
		success : function(data) {  
			$.each(data.data, function(i, item) {//加载父类节点即一级菜单  
				var id = item.muId;
				var title = item.muText;
				$('#layout_west_accordion').accordion('add', {  
					title : item.muText,  
					iconCls : item.muIconcls,  
					selected : item.muChecked,  
					content : '<div style="margin-top:8px;"><ul id="tree'+item.muId+'" name="'+item.text+'"></ul></div>',  
				});  
				getChild(id,title);
			});  
		}  
	});  

	function getChild(id,title){
		$("#tree"+id).tree({
			method : 'GET',
			url : 'menu/GetMainMenuChildren?id='+id,
			animate:true,
			loadFilter: function(data){
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
				if($("#tree"+id).tree('isLeaf',node.target)){  
					addTab(node.text,node.url,node.iconCls);
				}
			}
		});
	}
	
	function addTab(title, url,iconCls){
		if ($('#tabs').tabs('exists', title)){
			$('#tabs').tabs('select', title);//选中并刷新
			var currTab = $('#tabs').tabs('getSelected');
			var url = $(currTab.panel('options').content).attr('src');
			if(url != undefined && currTab.panel('options').title != 'Home') {
				$('#tabs').tabs('update',{
					tab:currTab,
					options:{
						content:createFrame(url)
					}
				})
			}
		} else {
			var content = createFrame(url);
			$('#tabs').tabs('add',{
				title:title,
				content:content,
				iconCls:iconCls,
				fit:true,
				closable:true
			});
		}
		tabClose();
	}

	function createFrame(url) {
		var s = '<iframe scrolling="no" frameborder="0"  src="'+url+'" style="width:100%;height:99%;"></iframe>';
		return s;
	}
});