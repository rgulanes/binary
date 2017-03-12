$('#refreshTree').click(function(){
	generateTree();
	$('#parentId').val($('#loggedInUser').val()).focus().trigger('change');
	$('#backTree').addClass('hide');
});

$('#backTree').click(function(){
	var parent = $('#prev-parentId').val();
	getTree(parent);
});

var generateTree = function (){
	$.post('./getHierarchy', function(data) {
		var jsonData = JSON.parse(data);

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
						leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a> <ul class="children_'+ node.depth +'"></ul></li>';

						subNode.find('ul.pChildren').append(leaf);
					}else{
						if(node.depth <= 100){
							var pNode = $('#node_' + node.parent)[0].dataset;
							var cNode = subNode.find('ul.pChildren');
							var order = node.position == 'left' ? 'odd' : 'even';

							var leaf = '';

							// if(node.depth == 3 || node.child_count == 1){
							// 	leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a></li>';
							// }else{
							// 	leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a> <ul class="children_'+ node.depth +'"></ul></li>';
							// }
							leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a> <ul class="children_'+ node.depth +'"></ul></li>';

							$('#node_' + node.parent).find('ul.children_'+ ( node.depth - 1 )+'').append(leaf);
						}
					}			
				});
			}
		});

		tree.find('a.viewTree').on('click', function(){
			var $a = $(this)[0];
			var data = $a.offsetParent.dataset;
			getTree(data.nodeId);

			var nparent = $('#new-parentId').val();
			var parent = $('#parentId').val();
			var loggedInUser = $('#loggedInUser').val();
			
			if(nparent == loggedInUser){
				$('#backTree').addClass('hide');
			}else if(loggedInUser == parent){
				$('#backTree').removeClass('hide');
			}else{
				$('#backTree').removeClass('hide');
			}

			if(loggedInUser == data.parent){
				$('#parentId').val(data.parent);
				$('#parentId').focus().trigger('focusin');
				$('#parentId').trigger('change');
			}
		});	
	});
};

var getTree = function (nodeId){
	$.post('./get_Hierarchy', { node_id : nodeId}, function(data) {
		var jsonData = JSON.parse(data);

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
						leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over viewTree" >'+node.full_name+'<p class="user_name"><small>'+node.user_name+'</small></p></a> <ul class="children_'+ node.depth +'"></ul></li>';

						subNode.find('ul.pChildren').append(leaf);
					}else{
						if(node.depth <= 100){
							var pNode = $('#node_' + node.parent)[0].dataset;
							var cNode = subNode.find('ul.pChildren');
							var order = node.position == 'left' ? 'odd' : 'even';

							var leaf = '';

							if(node.depth == 3 || node.child_count == 1){
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
			getTree(data.nodeId);
			$('#parentId').val(data.nodeId);
			$('#parentId').focus().trigger('focusin');
			$('#parentId').trigger('change');
		});	
	}).done(function(){
		var nparent = $('#new-parentId').val();
		var parent = $('#parentId').val();
		var loggedInUser = $('#loggedInUser').val();
		
		if(nparent == loggedInUser){
			$('#backTree').addClass('hide');
		}else if(loggedInUser == parent){
			$('#backTree').removeClass('hide');
		}else{
			$('#backTree').removeClass('hide');
		}
	});
};

$('#printTree').click(function(){
	window.print();
});

$(document).ready(function(){
	generateTree();
	$('#parentId').val($('#loggedInUser').val()).focus().trigger('change');

	$('#parentId').on('focusin', function(){
		$(this).attr('data-val', $(this).val());
	});

	$('#parentId').on('change', function(){
		var prev = $('#new-parentId').val();
		var old = prev;
		var current = $(this).val();
		if($('#new-parentId').val() == $(this).val()){
			prev = old;
			current = $(this).val();
		}
		//console.log("Prev value " + prev);
		//console.log("New value " + current);
		$('#prev-parentId').val(old);
	});
});