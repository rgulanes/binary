<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Member extends CI_Controller{

	function __construct(){
        parent::__construct();
        $this->load->model('Member_model');
    }

	function index(){
		
		if($this->session->userdata('user_id') != NULL){

			//get the user info
			$data['user_info'] = $this->Member_model->get_user_info($this->session->userdata('user_id'));
			$data['sponsor_by'] = $this->Member_model->get_user_info($data['user_info']->sponsor_by);

			// echo "<pre>";
			// print_r($data['sponsor_by']);
			// echo "</pre>";
			$this->load->view('includes/header');
			$this->load->view('member/index',$data);
			$this->load->view('includes/footer');
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

	function get_last_available_downline(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$id = $_POST['id'];
		$position = $_POST['position'];

		$position_left = '';
		$position_right = '';
		if($position == 'left'){
			//left
			$position_left = 1;
			$position_right = 0; 
		}else{
			$position_left  = 0;
			$position_right  = 1		;
 		}

		$data['available_downline'] = $this->Member_model->get_last_available_downline($id,$position_left,$position_right);
		return print json_encode($data);
		
	}

	function update_donwline_position(){
	
		$_POST = json_decode(file_get_contents('php://input'), true);
		$user_id  = $_POST['id'];
		$position = $_POST['position'];
		$downline  = $_POST['downline'];
		$upline = $_POST['upline'];

        $updated_data = array(

            'position_left' => $position == 'left' ? 1 : 0 ,
            'position_right' => $position == 'right' ? 1 : 0,
            'upline' => $upline == '' ? $this->session->userdata('user_id') : $upline,
        );
		$result = $this->Member_model->update_donwline_position($updated_data,$downline);

		if($result > 0 )
        {
            $this->response_code = 0;
            $this->response_message = "Success...";

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
}

?>