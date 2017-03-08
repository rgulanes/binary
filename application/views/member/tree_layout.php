<!DOCTYPE html>
<html ng-app="binaryApp">
<head>
 	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
	<title>Binary</title>
	<link rel="stylesheet" href="<?php echo base_url(); ?>bower_components/bootstrap/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/customCSS.css?v=<?php echo date('mdohis');?>" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/hierarchy.tree.css?v=<?php echo date('mdohis');?>" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>bower_components/font-awesome/4.6.3/css/font-awesome.min.css" />
	<style type="text/css">
		#tree{
			font-size: 15px !important;
			text-transform: uppercase;
		}

		.always-center {
		    position: relative;
		    z-index: 15;
		    top: 50%;
		    left: 0;
		    margin: auto 5%;
		}

		.user_name{
			margin: 0px;
		    font-size: 13px;
		    color: #d07311;
		    font-weight: 600;
		}
	</style>
</head>
<body>

	<div class="container-fluid">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-12">
						<button type="button" id="refreshTree" class="btn btn-sm btn-success"><i class="fa fa-refresh fa-fw"></i> Refresh Tree</button>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 always-center">
						<div id="tree" ></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script type="text/javascript">

	$(document).ready(function(){
		generateTree();
	});
	
	$('#refreshTree').click(function(){
		generateTree();
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
							if(node.depth <= 3){
								var pNode = $('#node_' + node.parent)[0].dataset;
								var cNode = subNode.find('ul.pChildren');
								var order = node.position == 'left' ? 'odd' : 'even';

								var leaf = '';

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
				console.log(data.nodeId);
				getTree(data.nodeId);
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
							if(node.depth <= 3){
								var pNode = $('#node_' + node.parent)[0].dataset;
								var cNode = subNode.find('ul.pChildren');
								var order = node.position == 'left' ? 'odd' : 'even';

								var leaf = '';

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
			});	
		});
	};
	</script>
</body>
</html>