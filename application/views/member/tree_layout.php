<!DOCTYPE html>
<html ng-app="binaryApp">
<head>
 	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
	<title>LUYABAYA | Admin Panel</title>
    <link rel="icon" type="image/png" href="<?php echo base_url().('assets/pic/favicon.png');?>" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>bower_components/bootstrap/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/customCSS.css?v=<?php echo date('mdohis');?>" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/hierarchy.tree.css?v=<?php echo date('mdohis');?>" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>bower_components/font-awesome/4.6.3/css/font-awesome.min.css" />
</head>
<body>
	<br><br>
	<div class="container-fluid">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<input type="hidden" id="loggedInUser" value="<?php echo $this->session->userdata('user_id');?>"/>
					<div class="col-lg-4">
						<button type="button" id="backTree" class="btn btn-sm btn-primary"><i class="fa fa-chevron-left fa-fw"></i> Previous Tree</button>
						<button type="button" id="refreshTree" class="btn btn-sm btn-success"><i class="fa fa-refresh fa-fw"></i> Refresh Tree</button>
						<button type="button" id="printTree" class="btn btn-sm"><i class="fa fa-print fa-fw"></i> Print Tree</button>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<iframe style="width: 100%; min-height: 50%; height: 465px;" id="treeGenerated" class="panel-body"></iframe>
		</div>
	</div>

	<script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#treeGenerated').attr('src', './tree_generated?node_id=' + $('#loggedInUser').val());

			$('#refreshTree').on('click', function(){
				$('#treeGenerated').attr('src', './tree_generated?node_id=' + $('#loggedInUser').val());
			});

			$('#backTree').on('click', function(){
				window.history.back();
			});

			$('#printTree').on('click', function(){
				var iframe = $('#treeGenerated')[0];
				iframe.contentWindow.focus();
				iframe.contentWindow.print();
			});
		});
	</script>
</body>
</html>