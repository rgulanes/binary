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

		@media print
		{
			body * { visibility: hidden; }
			#print-area * { visibility: visible; }
			@page {size: landscape;}
			#tree{
				font-size: 18px !important;
				text-transform: uppercase;
			}

			#hidden-input{
				width: 0;
				overflow: hidden;
			}

			#hidden-input input{
				opacity:0;
				filter:alpha(opacity=0);
			}
		}

		#hidden-input{
			width: 0;
			overflow: hidden;
		}

		#hidden-input input{
			opacity:0;
			filter:alpha(opacity=0);
		}
	</style>
</head>
<body>
	<div id="hidden-input">
		<input type="text" id="parentId"/>
	</div>
	<div class="container-fluid">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<input type="hidden" id="new-parentId"/>
					<input type="hidden" id="prev-parentId"/>
					<input type="hidden" id="loggedInUser" value="<?php echo $this->session->userdata('user_id');?>"/>
					<div class="col-lg-4">
						<button type="button" id="backTree" class="btn btn-sm btn-primary hide"><i class="fa fa-chevron-left fa-fw"></i> Previous Tree</button>
						<button type="button" id="refreshTree" class="btn btn-sm btn-success"><i class="fa fa-refresh fa-fw"></i> Refresh Tree</button>
						<button type="button" id="printTree" class="btn btn-sm"><i class="fa fa-print fa-fw"></i> Print Tree</button>
					</div>
				</div>
			</div>
			<div class="row" id="print-area">
				<div class="col-lg-12" >
					<div class="outer">
				  <div class="middle">
				    <div class="inner">
				    	<div id="tree" ></div>
				    </div>
				  </div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script src="<?php echo base_url(); ?>assets/js/tree_layout.js?v=<?php echo date('His');?>"></script>
</body>
</html>