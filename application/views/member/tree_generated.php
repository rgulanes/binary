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
	<style type="text/css">
		#tree{
			font-size: 15px !important;
			text-transform: uppercase;
		}

		.user_name{
			margin: 0px;
		    font-size: 13px;
		    color: #d07311;
		    font-weight: 600;
		}

		.outer {
		    display: table;
		    position: absolute;
		    height: 100%;
		    width: auto;
		}

		.middle {
		    display: table-cell;
		    vertical-align: middle;
		}

		.inner {
		    margin-left: auto;
		    margin-right: auto;
		    width: 100%;
		}

		.lazyLoader{
			position: absolute;
		    top: 0px;
		    right: 0px;
		    width: 100%;
		    height: 100%;
		    z-index: 10000000;
		}
	</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row" id="loadingPage">
			<div class="col-lg-12">
				<div id="tree" ></div>
			</div>
		</div>
	</div>

	<script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script src="<?php echo base_url(); ?>assets/js/tree_layout.js?v=<?php echo date('His');?>"></script>
</body>
</html>