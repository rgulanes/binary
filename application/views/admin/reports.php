<!DOCTYPE html>
<html ng-app="binaryApp">
<head>
 	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
	<title>LUYABAYA | Admin Panel</title>
    <link rel="icon" type="image/png" href="<?php echo base_url().('assets/pic/favicon.png');?>" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>bower_components/bootstrap/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/jstree/dist/themes/default/style.min.css" />
</head>
<body>
	<nav class="navbar navbar-default" style="border-radius: 0px!important;">
		<div class="container-fluid">
		  <div class="navbar-header">
		    <a class="navbar-brand" href="<?php echo base_url().('admin/index'); ?>">LUYANG BAYA</a>
		  </div>
		  </div><!--/.nav-collapse -->
		</div><!--/.container-fluid -->
	</nav>
	<div class="container-fluid">
        <div class="row">
        	<div class="col-lg-4">
        		<div class="panel panel-default">
	                <div class="panel-heading">
	                    <i class="glyphicon glyphicon-book"></i> Reports
	                </div>
	                <div class="panel-body" id="reportTree">
	                </div>
	            </div>
        	</div>
        	<div class="col-lg-8">
        		<div class="panel panel-default">
	                <div class="panel-heading">
	                    Report Content
	                </div>
	                <div class="panel-body" style="padding: 0px;">
	                	<iframe style="width: 100%; min-height: 50%; height: 465px;" id="reportContent" frameBorder="0"></iframe>
	                </div>
	            </div>
        	</div>
        </div>
    </div>
	<script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script src="<?php echo base_url(); ?>assets/plugins/jstree/dist/jstree.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/js/reports.js?v=<?php echo date('mdohis');?>"></script>
</body>
</html>