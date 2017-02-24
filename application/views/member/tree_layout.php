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
	</style>
</head>
<body>

	<div class="container-fluid">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div id="tree" class="col-lg-12"></div>
				</div>
			</div>
		</div>
	</div>

	<script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script type="text/javascript">
	
	$.post('./getHierarchy', function(data) {
		var jsonData = JSON.parse(data);

		var tree = $('#tree');

		tree.html('');
		tree.append('<ul class="tree"></ul>');

		var treeArray = new Array();
		$.each(jsonData.tree, function(k, v){
			if(v.length == 1 && v[0].position == 'parent'){
				var node = v[0];
				var parent = '<li data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over"> '+node.full_name+'</a> <ul class="pChildren"></ul></li>';
				tree.find('ul.tree').append(parent);
			}else{
				var sNode = v;
				var subNode = tree.find('ul.tree');
				var parentNode = subNode[0].firstChild.dataset;
				$.each(sNode, function(k,v){
					var node = v;
					var order = v.position == 'left' ? 'even' : 'odd';
					var leaf = '';
					

					if(node.parent == parentNode.nodeId){
						leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over" >'+node.full_name+'</a> <ul class="children_'+ node.depth +'"></ul></li>';

						subNode.find('ul.pChildren').append(leaf);
					}else{
						var pNode = $('#node_' + node.parent)[0].dataset;
						console.log(pNode);
						console.log(node);
						var cNode = subNode.find('ul.pChildren');
						var order = node.position == 'left' ? 'even' : 'odd';

						var leaf = '';

						leaf = '<li class="'+order+'" id="node_'+node.child+'" data-depth="'+node.depth+'" data-parent="'+node.parent+'" data-node-id="'+node.child+'" data-position="'+node.position+'"><a class="mouse-over" >'+node.full_name+'</a> <ul class="children_'+ node.depth +'"></ul></li>';

						$('#node_' + node.parent).find('ul.children_'+ ( node.depth - 1 )+'').append(leaf);
					}						
				});
			}
		});
	});

	</script>
</body>
</html>