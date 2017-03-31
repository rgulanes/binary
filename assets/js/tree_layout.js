var getTree = function (nodeId){
	$.ajax({
		type: "POST",
	    dataType: "json",
	    url: "./get_Hierarchy",
	    data: { node_id : nodeId},
	    beforeSend: function(){
	    	$('#loadingPage').append('<div class="lazyLoader"><center style="margin: 10% auto;"><i class="fa fa-spinner fa-spin fa-5x"></i><br>Generating Tree</center></div>');
	    },
		success: function(data) {
			var jsonData = data;

			var tree = $('#tree');

			tree.html('');
			tree.append('<ul class="tree"></ul>');

			var treeArray = new Array();
			$.each(jsonData.tree, function(k, v){
				if(v[0].position == 'parent'){
					var node = v[0];
					$('#new-parentId').val(node.child);
					var parent = '<li data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree"> '+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a> <ul class="pChildren"></ul></li>';
					tree.find('ul.tree').append(parent);
				}else{
					var sNode = v;
					var subNode = tree.find('ul.tree');
					var parentNode = subNode[0].firstChild.dataset;
					$.each(sNode, function(k,v){
						var node = v;
						var order = v.position == 'left' ? 'odd' : 'even';
						var leaf = '';
						

						if(node.parent == parentNode.nodeId){
							
							if( node.child_count == 1 || node.child_count == 0){
								leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a></li>';
							}else{
								leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a> <ul class="children_'+ node.depth +'"></ul></li>';
							}

							subNode.find('ul.pChildren').append(leaf);
						}else{
							if(node.depth <= 3){
								var pNode = $('#node_' + node.parent)[0].dataset;
								var cNode = subNode.find('ul.pChildren');
								var order = node.position == 'left' ? 'odd' : 'even';

								var leaf = '';

								if(node.depth == 3 || node.child_count == 1 || node.child_count == 0){
									leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a></li>';
								}else{
									leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a> <ul class="children_'+ node.depth +'"></ul></li>';
								}

								$('#node_' + node.parent).find('ul.children_'+ ( node.depth - 1 )+'').append(leaf);
							}
						}			
					});
				}
			});

			tree.find('a.viewTree').on('click', function(){
				var $a = $(this)[0];
				var data = $a.offsetParent.dataset;
				window.location.href = './tree_generated?node_id=' + data.nodeId;
			})	
		},
		complete: function(){
			$('#loadingPage').find('div.lazyLoader').remove();
		}
	});
};

$(document).ready(function(){
	var parts = window.location.search.substr(1).split("&");
	var $_GET = {};
	for (var i = 0; i < parts.length; i++) {
	    var temp = parts[i].split("=");
	    $_GET[decodeURIComponent(temp[0])] = decodeURIComponent(temp[1]);
	}

	getTree($_GET['node_id']);
});