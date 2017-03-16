<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Member extends CI_Controller{

	function __construct(){
        parent::__construct();
        $this->load->model('Member_model');
        date_default_timezone_set('Asia/Manila');
    }

	function index(){
		
		if($this->session->userdata('user_id') != NULL){

			//get the user info
			$data['user_info'] = $this->Member_model->get_user_info($this->session->userdata('user_id'));
			$data['sponsor_by'] = $this->Member_model->get_user_info($data['user_info']->sponsor_by);

			$this->load->view('includes/header');
			$this->load->view('member/index',$data);
			$this->load->view('includes/footer');
		}else{
			redirect('login/index');
		}

	}

	function tree_view(){
		if($this->session->userdata('user_id') != NULL){
			$this->load->view('member/tree_layout');
		}else{
			redirect('login/index');
		}
	}

	function get_all_left(){

		$_POST = json_decode(file_get_contents('php://input'), true);
		$data['left_member'] = $this->Member_model->get_all_left($this->session->userdata('user_id'));

		return print json_encode($data);

	}

	function get_all_right(){

		$_POST = json_decode(file_get_contents('php://input'), true);
		$data['right_member'] = $this->Member_model->get_all_right($this->session->userdata('user_id'));

		return print json_encode($data);

	}

	function getAllLeftMembers(){

		$_POST = json_decode(file_get_contents('php://input'), true);
		$data = $this->Member_model->getAllLeftMembers($this->session->userdata('user_id'));

		return print json_encode($data);

	}

	function getAllRightMembers(){

		$_POST = json_decode(file_get_contents('php://input'), true);
		$data = $this->Member_model->getAllRightMembers($this->session->userdata('user_id'));

		return print json_encode($data);

	}

	function get_all_members(){
 		$_POST = json_decode(file_get_contents('php://input'), true);
		$data['user_info'] = $this->Member_model->get_all_members();

		return print json_encode($data);
	}

	function get_all_sponsored_member(){
			$_POST = json_decode(file_get_contents('php://input'), true);
			$id = $_POST['id'];
			$data['sponsored_members'] = $this->Member_model->get_all_sponsored_member($id);
			return print json_encode($data);
 
	}

	function get_members_not_assigned(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$id = $_POST['id'];
		$data['not_assigned'] = $this->Member_model->get_member_not_assigned($id);
		return print json_encode($data);

	}

	function check_available_position(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$id = $_POST['id'];
		$data['positions'] = $this->Member_model->check_available_position($id);
		return print json_encode($data);
	}

	function get_last_available_downline(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$id = $_POST['id'];
		$position = $_POST['position'];
		$data['available_downline'] = $this->Member_model->get_last_available_downline($id,$position);
		return print json_encode($data);		
	}

	function update_donwline_position(){
		$temp_upline = '';
		$temp_user = '';
		
		$_POST = json_decode(file_get_contents('php://input'), true);
		$user_id  = $_POST['id'];
		$position = $_POST['position'];
		$downline  = $_POST['downline'];
		$upline = $_POST['upline'];
		$available_position = strtolower($_POST['available_position']);


		$m_position = '';

		if($upline == '' && $available_position == ''){
			//this is main top of the pyramid 
			if($position == 'left'){
				$updated_data = array(
		            'position_left' => $position == 'left' ? $downline : 0 ,
		            'upline' => $user_id,
		        );
			}else{
				$updated_data = array(
		            'position_right' => $position == 'right' ? $downline : 0,
		            'upline' => $user_id,
		        );
			}	

			$m_position = $position;
			$result = $this->Member_model->update_donwline_position($updated_data,$user_id, strtolower($m_position), $downline);
		}else{
			if(strtolower($available_position) == 'left'){
				$updated_data = array(
		            'position_left' => strtolower($available_position) == 'left' ? $downline : 0 ,
		            'upline' => $upline,
		        );
			}else{
				$updated_data = array(
		            'position_right' => strtolower($available_position) == 'right' ? $downline : 0,
		            'upline' => $upline,
		        );
			}	

			$m_position = $position;
			$result = $this->Member_model->update_donwline_position($updated_data,$upline, strtolower($m_position), $downline);
		}

		if($result > 0 )
        {

            $this->response_code = 0;
            $this->response_message = "Success.. .";

		}
        else
        {
            $this->response_code = 1;
            $this->response_message = "Error...";
        }


        echo json_encode(array(
            "error"			=> $this->response_code,
            "message"		=> $this->response_message
        ));


	}

	function get_total_coh(){
		$data['cash_on_hand'] = $this->Member_model->get_totalCashOnHand($this->session->userdata('user_id'));
		return print json_encode($data);
	}

	function getUserCommissions(){

		$_POST = json_decode(file_get_contents('php://input'), true);
		$data = $this->Member_model->getUserCommissions($this->session->userdata('user_id'));

		return print json_encode($data);

	}

	function getUserWithdrawals(){

		$_POST = json_decode(file_get_contents('php://input'), true);
		$data = $this->Member_model->getUserWithdrawals($this->session->userdata('user_id'));

		return print json_encode($data);

	}

	function createTree(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$data = $this->Member_model->get_Hierarchy($this->session->userdata('user_id'));

		return print json_encode($data);
	}

	private function _prettify($array){
		echo '<pre>';
		print_r($array);
		echo '</pre>';
	}

	function getHierarchy(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		
		$newTree = $this->Member_model->get_Hierarchy($this->session->userdata('user_id'));
		
		$size = $this->Member_model->get_TreeDepth();
		$data = $this->Member_model->generate_userTree($this->session->userdata('user_id'), 'child');

		$rdata['size'] = $size[0]->tree_size;

		$treeArray = array();
		foreach ($data as $k => $v) {
			if (!array_key_exists($v->depth,$treeArray)) array_push($treeArray, $v->depth);
		}

		$tree = array();
		$childs = array();
		$node = array();
		$cnt = 0;
		foreach ($treeArray as $k => $v) {
			foreach ($data as $key => $value) {
				if($value->depth == $v[0] ){					
					if($k == $value->depth){
						$childs[$cnt] = $value;
						$treeArray[$k] = $childs;
					}
					$cnt++;
				}else{
					$cnt = 0;
				}
			}
			
		}

		$size = sizeof($treeArray);
		for ($i=0; $i < $size; $i++) { 
			$subNode = sizeof($treeArray[$i]);
			//echo 'index => ' . $i . '</br>';
			for ($a=0; $a < $subNode; $a++) { 
				//echo 'sub-index => ' . $a . '</br>';
				if(isset($treeArray[$i][$a]->depth)){
					if($i != $treeArray[$i][$a]->depth){
						unset($treeArray[$i][$a]);
					}
				}
				
			}
		}

		//$this->_prettify($treeArray);

		$rdata['tree'] = $treeArray;

		return print json_encode($rdata, true);
	}

	function get_Hierarchy(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		
		$newTree = $this->Member_model->get_Hierarchy($_REQUEST['node_id']);

		$size = $this->Member_model->get_TreeDepth();
		$data = $this->Member_model->generate_userTree($_REQUEST['node_id'], 'child');

		$rdata['size'] = $size[0]->tree_size;

		$treeArray = array();
		foreach ($data as $k => $v) {
			if (!array_key_exists($v->depth,$treeArray)) array_push($treeArray, $v->depth);
		}

		$tree = array();
		$childs = array();
		$node = array();
		$cnt = 0;
		foreach ($treeArray as $k => $v) {
			foreach ($data as $key => $value) {
				if($value->depth == $v[0] ){					
					if($k == $value->depth){
						$childs[$cnt] = $value;
						$treeArray[$k] = $childs;
					}
					$cnt++;
				}else{
					$cnt = 0;
				}
			}
			
		}

		$size = sizeof($treeArray);
		for ($i=0; $i < $size; $i++) { 
			$subNode = sizeof($treeArray[$i]);
			//echo 'index => ' . $i . '</br>';
			for ($a=0; $a < $subNode; $a++) { 
				//echo 'sub-index => ' . $a . '</br>';
				if($i != $treeArray[$i][$a]->depth){
					unset($treeArray[$i][$a]);
				}
			}
		}

		//$this->_prettify($treeArray);

		$rdata['tree'] = $treeArray;

		return print json_encode($rdata, true);
	}

	function get_selectedHierarchy(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$data = $this->Member_model->get_childHierarchy($_REQUEST['id'], $_REQUEST['str']);

		return print json_encode($data);
	}

	function generateHierarchy(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$userId = $this->session->userdata('user_id');
		$generateTree = $this->Member_model->get_Hierarchy($userId);

		return print json_encode(
			array(
				'generate_tree' => $generateTree,
			)
		);
	}

	function send_request(){
		
		$_POST = json_decode(file_get_contents('php://input'), true);

		$userId = $this->session->userdata('user_id');
		$amount =  $_POST['amount'];
		
		$cash_on_hand = $this->Member_model->get_totalCashOnHand($this->session->userdata('user_id'));
		
		if($cash_on_hand[0]->totalCashOnHand  > $amount){
			$insert_data = array(
	            'user_id' => $userId,
	            'amount' => $amount,
	            'date_requested' => date("Y-m-d H:i:s"),
	            'status' => 0,
	        );

	        $result = $this->Member_model->send_cash_request($insert_data);

        if($result > 0 )
        {

            $this->response_code = 0;
            $this->response_message = "Cash Request Sent .";

        }
        else
        {
            $this->response_code = 1;
            $this->response_message = "Error...";
        }


		}else{

            $this->response_code = 1;
            $this->response_message = "Insufficient Funds";

		}

        echo json_encode(array(
            "error"			=> $this->response_code,
            "message"		=> $this->response_message
        ));

	}

	function add_downline_position(){
		$temp_upline = '';
		$temp_user = '';
		
		$_POST = json_decode(file_get_contents('php://input'), true);
		//$user_id  = $_POST['id'];
		$position = $_POST['position'];
		$downline  = $_POST['downline'];
		$upline = $_POST['upline'];
		$available_position = strtolower($_POST['available_position']);


		$m_position = '';

		if(strtolower($available_position) == 'left'){
			$updated_data = array(
	            'position_left' => strtolower($available_position) == 'left' ? $downline : 0 ,
	            'upline' => $upline,
	        );
		}else{
			$updated_data = array(
	            'position_right' => strtolower($available_position) == 'right' ? $downline : 0,
	            'upline' => $upline,
	        );
		}	

		$m_position = $position;
		$result = $this->Member_model->update_donwline_position($updated_data,$upline, strtolower($m_position));

		if($result > 0 )
        {

            $this->response_code = 0;
            $this->response_message = "Success.. .";

		}
        else
        {
            $this->response_code = 1;
            $this->response_message = "Error...";
        }


        echo json_encode(array(
            "error"			=> $this->response_code,
            "message"		=> $this->response_message
        ));
	}

	public function board_stats(){
		$userId = $this->session->userdata('user_id');

		$this->db->select('COALESCE(SUM(c_amount), 0) AS count');
        $query = $this->db->get_where('commission', array('remarks' => 'referral', 'c_user_id' => $userId, 'DATE(date_create) <=' => date('o-m-d')));
        $referral = $query->row_array();

        $this->db->select('COALESCE(SUM(c_amount), 0) AS count');
        $query = $this->db->get_where('commission', array('remarks' => 'upline', 'c_user_id' => $userId, 'DATE(date_create) <=' => date('o-m-d')));
        $upline = $query->row_array();

        $this->db->select('COALESCE(SUM(w_amount), 0) AS count');
        $query = $this->db->get_where('withdrawal', array('remarks' => 'Approved', 'w_user_id' => $userId, 'DATE(date_create)' => date('o-m-d')));
        $withdrawal = $query->row_array();

        $this->db->select('COALESCE(COUNT(*), 0) AS count');
        $query = $this->db->get_where('_selectedhierarchy', array('f_position !=' => 'parent'));
        $treeSize = $query->row_array();


        echo json_encode(array(
            "treeSize"			=> $treeSize['count'],
            "withdrawal"		=> $withdrawal['count'],
            "upline"			=> $upline['count'],
            "referral"			=> $referral['count'],
        ));

	}
}

?>