<!DOCTYPE html>
<html lang="en">
<head>
	<title>Rebates for this Month &amp; Dynamic Compression</title>
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/reports_template.css?v='.date('mdohis');?>" />
</head>
<body>
	<h3 class="report-title">Rebates for this Month &amp; Dynamic Compression</h3>
	<small>Report Generated : <?php echo date('F d, o H:i:s');?></small>
	<hr>
	<table border="0">
		<tr>
			<td style="border: none;">
				<table class="reports-table" style="font-size: 12px;">
					<thead>
						<tr style="background-color: #fff;">
							<th colspan="6" style="text-align: left; font-size: 15px; border: none;">
								<b>Unilevel as of Today</b>
							</th>
						</tr>
						<tr style="background-color: #f9fb80;">
							<th>Member's Full Name</th>
							<th>Level</th>
							<th>Date Entered</th>
							<th>Purchases' Amount</th>
							<th>Rebate's Uncredited Count</th>
							<th>Rebate Amount based on Level</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$size = sizeof($uTree);
							for ($i=1; $i <= $size; $i++) { 
								foreach ($uTree[$i] as $k) {
									echo '<tr>';
										echo '<td>'.$k['full_name'].'</td>';
										echo '<td>'.($k['depth'] == 0 ? 1 : $k['depth']).'</td>';
										echo '<td>'.$k['entered_on'].'</td>';
										echo '<td>'.$k['amount'].'</td>';
										echo '<td>'.$k['rebate_count'].'</td>';
										echo '<td>'.$k['rebate'].'</td>';
									echo '</tr>';
								}
							}
						?>
					</tbody>
				</table>
				<br>
				<table class="table table-bordered table-condensed" style="font-size: 12px;">
					<thead>
						<tr style="background-color: #fff;">
							<th colspan="6" style="text-align: left; font-size: 15px; border: none;">
								<b>Unilevel as of Today with Dynamic Compression</b>
							</th>
						</tr>
						<tr style="background-color: #f9fb80;">
							<th>Member's Full Name</th>
							<th>Level</th>
							<th>Date Entered</th>
							<th>Purchases' Amount</th>
							<th>Rebate's Uncredited Count</th>
							<th>Rebate Amount based on Level</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$size = sizeof($nTree);
							for ($i=1; $i <= $size; $i++) { 
								$amount = 0;

		                        if(in_array($i, array(6,7,8,9,10))){
		                            $amount = 5;
		                        }elseif(in_array($i, array(3,4,5))){
		                            $amount = 10;
		                        }elseif($i == 2){
		                            $amount = 15;
		                        }elseif($i == 1){
		                            $amount = 30;
		                        }else{
		                            $amount = 0;
		                        }

								foreach ($nTree[$i] as $k) {
									echo '<tr>';
										echo '<td>'.$k['full_name'].'</td>';
										echo '<td>'.$i.'</td>';
										echo '<td>'.$k['entered_on'].'</td>';
										echo '<td>'.$k['amount'].'</td>';
										echo '<td>'.$k['rebate_count'].'</td>';
										echo '<td>'.$amount.'</td>';
									echo '</tr>';
								}
							}
						?>
					</tbody>
				</table>
			</td>
			<td style="vertical-align:top; border: none;">
				<table class="reports-table" style="font-size: 12px;">
					<thead>
						<tr>
							<th>Level</th>
							<th>Rebate Amount</th>
						</tr>
					 </thead>
					<tbody>
					<?php
						for ($i=1; $i <= 10; $i++) {
						    $amount = 0;
						                            
						    if($i == 1){
						        $amount = 30;
						    }elseif($i == 2){
						        $amount = 15;
						    }
						    elseif(in_array($i, array(3,4,5))){
						        $amount = 10;
						    }elseif(in_array($i, array(6,7,8,9,10))){
						        $amount = 5;
						    }else{
						        $amount = 0;
						    }

						echo '<tr>';
							echo '<td style="width: 50px;">'.$i.'</td>';
							echo '<td style="width: 100px;">'.'Php. ' . number_format($amount, 2, '.', ',').'</td>';
						echo '</tr>';
						}
					?>
					</tbody>
				</table>
				<br><br>
				<table class="reports-table" style="font-size: 12px;">
					<thead>
						<tr>
							<th>Level</th>
							<th># of Inactive Upline</th>
						</tr>
					 </thead>
					<tbody>
					<?php
						$size = sizeof($rTree);
						for ($i=1; $i <= $size; $i++) { 
							echo '<tr>';
								echo '<td style="width: 50px;">'.$i.'</td>';
								echo '<td style="width: 100px;">'.$rTree[$i].'</td>';
							echo '</tr>';
						}
					?>
					</tbody>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>