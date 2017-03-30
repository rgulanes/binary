<?php
	$cash_on_hand = 0;
	foreach ($report as $key) {
		$cash_on_hand += $key['c_amount'];
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Total Cash on Hand as of Today</title>
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
	<h3 class="report-title">Total Cash on Hand as of Today</h3>
	<small>Report Generated : <?php echo date('F d, o H:i:s');?></small>
	<hr>
	<table>
		<tr>
			<td style="width: 50%;border: 0px;">
				<p style="font-size: 11px;"><b>Member Name :</b> <?php echo $report[0]['full_name'];?></p>
			</td>
			<td style="width: 50%;border: 0px;">
				<p style="font-size: 11px;"><b>Member Since :</b> <?php echo $report[0]['sign_up_date'];?></p>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td style="width: 50%;border: 0px;">
				<h6>Total Count : <?php echo sizeof($report);?></h6>
			</td>
			<td  style="width: 50%;border: 0px;">
				<h6>Total Cash on Hand Amount : <?php echo 'Php. ' . number_format($cash_on_hand, 2, '.', ',');?></h6>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td  style="width: 50%;border: 0px;">
				<h6>Total Cash on Hand Amount (with deduction) : <?php echo 'Php. ' . number_format($tot_COH[0]->totalCashOnHand, 2, '.', ',');?></h6>
			</td>
		</tr>
	</table>
	<table class="report-table">
		<thead>
			<tr>
				<th style="width: 10px;">#</th>
				<th>Date</th>
				<th>Remarks</th>
				<th>Amount</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$cnt = 1;
			foreach ($report as $key) {
				echo '<tr>';
				echo '<td>'.$cnt++.'</td>';
				echo '<td>'.$key['date_create'].'</td>';
				echo '<td>'.$key['remarks'].'</td>';
				echo '<td>'.'Php. ' . number_format($key['c_amount'], 2, '.', ',').'</td>';
				echo '</tr>';
			}
		?>
		</tbody>
	</table>
</body>
</html>