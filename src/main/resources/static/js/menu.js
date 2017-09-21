$(function(){
	$('#tt').tree({
		method : 'POST',
		url : 'menu/GetMenuList',
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
			if($('#tt').tree('isLeaf',node.target)){  
				addTab(node.text,node.url,node.iconCls);
			}
		}
	});

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
		var s = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
		return s;
	}
});