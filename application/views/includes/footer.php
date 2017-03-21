	<script src="<?php echo base_url(); ?>bower_components/angular/angular.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/angular-ui-select/dist/select.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/ng-table/bundles/ng-table.min.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/angular-ui-select/dist/select.min.js"></script>


	<!-- Datatables -->
	<script src="<?php echo base_url(); ?>bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url(); ?>bower_components/datatables/media/js/dataTables.bootstrap.min.js"></script>

	<script src="<?php echo base_url(); ?>assets/js/login.js?v=<?php echo date('mdohis');?>"></script>
	<script src="<?php echo base_url(); ?>assets/js/admin.js?v=<?php echo date('mdohis');?>"></script>
	<script src="<?php echo base_url(); ?>assets/js/member.js?v=<?php echo date('mdohis');?>"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			function checkTime(i) {
			    if (i < 10) {
			        i = "0" + i;
			    }
			    return i;
			}

			function startTime() {
			    var today = new Date();
			    var h = today.getHours();
			    var m = today.getMinutes();
			    var s = today.getSeconds();
			    // add a zero in front of numbers<10
			    m = checkTime(m);
			    s = checkTime(s);
			    $('#runtime').html('');
			    $('#runtime').append(h + ":" + m + ":" + s);
			    t = setTimeout(function () {
			        startTime()
			    }, 500);
			}

			startTime();
		});
	</script>
</body>
</html>