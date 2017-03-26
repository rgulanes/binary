<!DOCTYPE html>
<html lang="en">
<head>
	<title>List of Withdrawals as of Today</title>
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
	<h3 class="report-title">List of Withdrawals as of Today</h3>
	<small>Report Generated : <?php echo date('F d, o H:i:s');?></small>
	<hr>
	<table>
		<tr>
			<td style="width: 50%;border: 0px;">
				<h6>Total Count : <?php echo sizeof($report);?></h6>
			</td>
			<td  style="width: 50%;border: 0px;">
				<h6>Total Withdrawal Amount : <?php echo 'Php. ' . number_format($tot_amount, 2, '.', ',');?></h6>
			</td>
		</tr>
	</table>
	<table class="report-table">
		<thead>
			<tr>
				<th>Full Name</th>
				<th>Amount Withdrawn</th>
				<th>Date of Withdrawal</th>
			</tr>
		</thead>
		<tbody>
		<?php
			foreach ($report as $key) {
				echo '<tr>';
				echo '<td>'.$key['full_name'].'</td>';
				echo '<td>'.$key['w_amount'].'</td>';
				echo '<td>'.$key['date_create'].'</td>';
				echo '</tr>';
			}
		?>
		</tbody>
	</table>
</body>
</html>