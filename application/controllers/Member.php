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
		$available_position = $_POST['available_position'];

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

			$result = $this->Member_model->update_donwline_position($updated_data,$user_id);			

		}else{
			if($position == 'left'){
				$updated_data = array(
		            'position_left' => $position == 'left' ? $downline : 0 ,
		            'upline' => $upline,
		        );
			}else{
				$updated_data = array(
		            'position_right' => $position == 'right' ? $downline : 0,
		            'upline' => $upline,
		        );
			}	

			$result = $this->Member_model->update_donwline_position($updated_data,$upline);	
		}

		// if($upline  == ''){
		// 	//the  upline  will be  user_id 
		// 	$temp_upline = $user_id;
		// }else{
		// 	$temp_upline = $upline;
		// }



        // $updated_data = array(

        //     'position_left' => $position == 'left' ? $temp_upline : 0 ,
        //     'position_right' => $position == 'right' ? $temp_upline : 0,
        //     'upline' => $temp_upline,
        // );
		




		if($result > 0 )
        {

            $this->response_code = 0;
            $this->response_message = "Success.. .";

			// if($available_position != ''){
			// 	//update the upper person  pisitioning
		 //            if($available_position == 'Left'){
			// 	        $updated_data = array(
			// 	            'position_left' => $available_position == 'Left' ? 1 : 0 ,
			// 	        );
			// 	    }else{
			// 	        $updated_data = array(
			// 	            'position_right' => $available_position == 'Right' ? 1 : 0 ,
			// 	        );
				    
			// 	    }

			// 	$this->Member_model->update_donwline_position($updated_data,$upline);
			// }
    
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