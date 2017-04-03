<!DOCTYPE html>
<html lang="en">
<head>
	<title>List of Withdrawals for Today</title>
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/reports_template.css?v=<?php echo date('mdohis');?>" />
</head>
<body>
	<h3 class="report-title">List of Withdrawals for Today</h3>
	<small>Report Generated : <?php echo date('F d, o H:i:s');?></small>
	<hr>
	<table>
		<tr>
			<td style="width: 50%;border: 0px;">
				<h6>Total Count : <?php echo sizeof($report);?></h6>
			</td>
			<td  style="width: 50%;border: 0px;">
				<h6>Total Withdrawal Amount : <?php echo 'Php. ' . number_format((sizeof($report) * 60), 2, '.', ',');?></h6>
			</td>
		</tr>
	</table>
	<table class="report-table">
		<thead>
			<tr>
				<th>Member's Full Name</th>
				<th>Date of Withdrawal</th>
				<th>Amount Withdrawn</th>
			</tr>
		</thead>
		<tbody>
		<?php
			foreach ($report as $key) {
				echo '<tr>';
				echo '<td>'.$key['full_name'].'</td>';
				echo '<td>'.$key['date_create'].'</td>';
				echo '<td>'.'Php. ' . number_format($key['w_amount'], 2, '.', ',').'</td>';
				echo '</tr>';
			}
		?>
		</tbody>
	</table>
</body>
</html>