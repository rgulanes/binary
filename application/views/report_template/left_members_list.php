<!DOCTYPE html>
<html lang="en">
<head>
	<title>List of Left Members</title>
	<style type="text/css">
		body{
			font-family: Tahoma;
		}

		h3.report-title{
			margin: 0px;
		}

		small{
			font-size: 9px;
		}

		.report-table{
			font-size: 10px;
			vertical-align: middle;
		}

		thead, th{
			text-transform: uppercase;
			text-align: center;
		}

		table {
		    font-family: arial, sans-serif;
		    border-collapse: collapse;
		    width: 100%;
		}

		td, th {
		    border: 1px solid #dddddd;
		    padding: 8px;
		}

		tbody, td{
		    text-align: left;
		}

		tr:nth-child(even) {
		    background-color: #dddddd;
		}
	</style>
</head>
<body>
	<h3 class="report-title">List of Left Members</h3>
	<small>Report Generated : <?php echo date('F d, o H:i:s');?></small>
	<hr>
	<h6>Total Count : <?php echo sizeof($report);?></h6>
	<table class="report-table">
		<thead>
			<tr>
				<th rowspan="2" colspan="1" style="width: 125px;">Membership Code</th>
				<th colspan="3">Member Information</th>
				<th colspan="3">Membership Information</th>
			</tr>
			<tr>
				<th>Full Name</th>
				<th>Contact Number</th>
				<th>Gender</th>
				<th>Username</th>
				<th>Date Joined</th>
				<th>Sponsored By</th>
			</tr>
		</thead>
		<tbody>
		<?php
			foreach ($report as $key) {
				echo '<tr>';
				echo '<td>'.$key['g_code'].'</td>';
				echo '<td>'.$key['full_name'].'</td>';
				echo '<td>'.$key['contact'].'</td>';
				echo '<td>'.$key['gender'].'</td>';
				echo '<td>'.$key['user_name'].'</td>';
				echo '<td>'.$key['entered_on'].'</td>';
				echo '<td>'.$key['sponsor_name'].'</td>';
				echo '</tr>';
			}
		?>
		</tbody>
	</table>
</body>
</html>