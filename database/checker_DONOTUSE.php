		$tree = array();
		foreach ($data as $k => $v) {
			$v = get_object_vars($v);
			$tree[$k] = $v;
		}

		echo '<div style="font-size: 10px; font-family: Arial;">';

		echo '<pre>';
		print_r($tree);
		echo '</pre>';

		echo '<h2>Tree Structuring</h2>';
		$treeStruc = array();
		for ($i = 0; $i < sizeof($tree); $i++) { 
			echo $tree[$i]['full_name'] . " ( '$k' ) => " . $tree[$i]['child'] ." => ";
			echo $tree[$i]['depth'] . ' => ';
			echo $tree[$i]['parent'] .'<br/>';

			$temp = array();
			$temp2 = array();

			$treeStruc[1] = $tree[0];
			if(isset($tree[$i + 1]))
			{	
				$temp = $tree[$i];
				$temp2 = $tree[$i + 1];
				echo '<pre>';
				print_r($temp);
				echo '</pre>';

				echo '<pre>';
				print_r($temp2);
				echo '</pre>';

				echo $temp['full_name'] . '<br>';

				if($temp['depth'] == $temp2['depth'] && $temp['parent'] == $temp2['parent']){
					echo 'SAME <br>';
					$treeStruc[$temp['parent']] = array( 'left' => $temp, 'right' => $temp2);
				}
			}
			echo '<br>';
		}
		

		echo '<h2>Tree Structure</h2>';
		echo '<pre>';
		print_r($treeStruc);
		echo '</pre>';

		echo '</div>';
	}


	<?php
	$full_tree = '';

	$children = array();

	foreach ($tree as $k => $v) {

		if(sizeof($v) == 1){
			$full_tree = '<li>'.$v['parent']['full_name'].'%child%</li>';
		}else{
			echo $k . '<br>';
			if(($tree[1]['parent']['parent'] == $tree[$k]['left']['parent']) && ($tree[$k]['left']['parent'] == $tree[$k]['right']['parent'])){
				$full_tree = str_replace('%child%', '<ul><li>'.$v['left']['full_name'].'%child%</li><li>'.$v['right']['full_name'].'%child%</li></ul>', $full_tree) ;
			}elseif(($tree[$k]['left']['parent'] == $tree[$k]['right']['parent'])){
				$children[$k] = array('<ul><li>'.$v['left']['full_name'].'</li><li>'.$v['right']['full_name'].'</li></ul>');
				
				foreach ($children as $a => $x) {
					if(($a == $v['left']['parent']) && ($a == $v['right']['parent']) && ($v['right']['parent'] == $v['left']['parent'])){
						if(($v['left']['parent'] == $v['right']['parent'])){
							$full_tree = str_replace('%child%', $children[3][0], $full_tree) ;
						}
						
					}else{
						$full_tree .= '<li>'.$v['left']['full_name'].'</li><li>'.$v['right']['full_name'].'</li>';
					}

					
				}

				
			}else{
				$full_tree .= '<li>'.$v['left']['full_name'].'</li><li>'.$v['right']['full_name'].'</li>';
			}
		}
	}
?>

	<pre>
		<?php print_r($children);?>
	</pre>
	<ul class="tree">
	<?php echo $full_tree;?>
	</ul>