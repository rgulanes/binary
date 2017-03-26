var reportsTree = (function(){
	var report = { parent_id : '', tree_id : '', node_id : 0, node_desc : '', node_status : 1};

	var createTree = function(){
		var json = $.post('../Admin/get_tree_nodes', { 'desc' : 'Members'}, function(data) {
			var jsonData = JSON.parse(data);
			$('#reportTree').jstree({ 
				'core' : {
				    'data' : jsonData,
					'multiple' : false
		        },
		        "plugins" : [ "changed" ]
			});
		});
	};

	var openTree = function(){
		$('#reportTree').on('loaded.jstree', function() {
			$(this).jstree('open_all');
		});
	}

	var getNodeInfo = function(data){
		var nodeId = $('#reportTree').jstree("get_node", data);
		return nodeId;
	};

	var triggerEvents = function(){
		$('#reportTree').on("select_node.jstree", function (e, data) {
			var tree = $('#reportTree');
			if(data.selected.length) {
				var selected = getNodeInfo(data.selected[0]);
				var firstChild = selected.children[0] != undefined ? selected.children[0] : '';

				if(data.node.parent == '#'){
					$(this).jstree('select_node', firstChild);
					$(this).jstree('deselect_node', data.node.id);
				}else{
					$('#reportContent').attr('src', '../' + selected.data.file_url);
				}
			}
		});
	}

	return {
			Build : function(){
				createTree();
				openTree();
				triggerEvents();
			}
		}
})();

$(document).ready(function(){
	reportsTree.Build();
});