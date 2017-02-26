<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CronController extends CI_Controller {

	function __construct(){
        parent::__construct();
        is_cli() OR show_404(); // If cronjob ! 
       	if (!$this->input->is_cli_request()) show_error('Direct access is not allowed');
        $this->load->model('Member_model');
    }

	public function cron_request()
	{	
		switch ($_REQUEST['action']) {
			case 'generateCommissionSvc':
				$data = $this->_getUserCommission();
				print_r($data);
				break;
			default:
				echo 'Cron Request not found.' . PHP_EOL;
	      		return;
				break;
		}
	}

	public function cli_cron_request($action)
	{	
		if($this->input->is_cli_request()){
			switch ($action) {
				case 'generateCommissionSvc':
					$data = $this->_getUserCommission();
					print_r($data);
					break;
				default:
					echo 'Cron Request not found.' . PHP_EOL;
		      		return;
					break;
			}
		}else{
		      echo "This script can only be accessed via the command line" . PHP_EOL;
		      return;
		  }
		
	}

	private function _getUserCommission(){
		$data = array();
		$userTree = array();

		$this->db->trans_start();
        $query = $this->db->query("SELECT user_id FROM users WHERE user_name NOT IN ('admin') AND status = 1;");

        if ($query->num_rows() > 0){
            $data = $query->result_array();
        }else{
            $data = array();
        }

        $this->db->trans_complete();

        $response = 0;
        if ($this->db->trans_status() === FALSE)
        {
            $response = 0;
        }
        else
        {
            $response = 1;
        }

        foreach ($data as $k => $v) {
        	$userId = $v['user_id'];
        	
        	$userTree[$v['user_id']] = $this->_generateCommission($userId);
        }

        return $userTree;
	}

	private function _generateCommission($userId){
		$data = array();

		$this->db->trans_start();
    	$result = $this->db->query("CALL generateCommissionSvc('$userId');");
    	mysqli_next_result($this->db->conn_id);

    	if ($result->num_rows() > 0){
            foreach ($result->result_array() as $_result){
            	$data = array(
            		'tree_generate' => $_result['tree_generate'],
            		'updated_depths' => $_result['updated_depths'],
            		'generated_commission' => $_result['generated_commission'],
            	);
            };
        }else{
            $data = array();
        }
    	$this->db->trans_complete();

    	$response = 0;
        if ($this->db->trans_status() === FALSE)
        {
            $response = 0;
            $result->free_result();
        }
        else
        {
            $response = 1;
            $result->free_result();
        }

        return $data;
	}
}
