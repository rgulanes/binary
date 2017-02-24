<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller{

	function __construct(){
        parent::__construct();
        $this->load->model('Member_model');
    }

	function index(){
		if($this->session->userdata('user_id') != NULL){

			//get the user info
			$data['user_info'] = $this->Member_model->get_user_info($this->session->userdata('user_id'));

			// echo "<pre>";
			// print_r($data);
			// echo "</pre>";
			$this->load->view('includes/header');
			$this->load->view('admin/index',$data);
			$this->load->view('includes/footer');
		}else{
			redirect('login/index');
		}

	}

	function save_product_purchase(){
		$_POST = json_decode(file_get_contents('php://input'),true);
		$id 	= $_POST['user_id'];
		$amount = $_POST['amount'];
		$date_purchase = date("Y-m-d", strtotime($_POST['date_purchase']));
	
	  	$insert_data = array(
            'amount' => $amount,
            'date_purchase' => $date_purchase,
            'user_id' => $id,
        );

	  	$result = $this->Member_model->save_product_purchase($insert_data);


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

	function generateCode(){
		$_POST = json_decode(file_get_contents('php://input'), true);
        $number =  $_POST['number'];

		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$codeString = [];
	    $charactersLength = strlen($characters);
	    for ($v = 0; $v < $number; $v++) {
	    	$randomString = '';
		    for ($i = 0; $i < 10; $i++) {
		        $randomString .= $characters[rand(0, $charactersLength - 1)];

		    }
		    array_push($codeString,$randomString);	

		    $insert_data = array(
                'description' => $randomString,
                'generated_by' => $this->session->userdata('user_id'),
                'generated_date' => date("Y-m-d H:i:s"),
               	'status'		=> 0
            );

            $this->Member_model->save_generated_code($insert_data);

	    }
	 return print json_encode($codeString);
	}
	

	function get_generated_code(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		
		$data['generated_codes'] = $this->Member_model->get_generated_code($this->session->userdata('user_id'));


		foreach ($data['generated_codes'] as $key ) {
			$key->user_name = '';
			if($key->used_by != NULL){
				$user_info = $this->Member_model->get_user_info($key->used_by);
				$key->user_name = $user_info->first_name .' '. $user_info->last_name;
			}
		}

		return print json_encode($data);

	}

	function get_members_data(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$id = $_POST['id'];
		$data['member_details'] = $this->Member_model->get_members_data($id);
		return print json_encode($data);
	}

	function get_cash_request(){
		$_POST = json_decode(file_get_contents('php://input'), true);
		$data['cash_request'] = $this->Member_model->get_cashRequest();
		return print json_encode($data);
	}

	function update_request_status(){

		$_POST = json_decode(file_get_contents('php://input'), true);
		$id = $_POST['id'];
		 $update_data = array(
               	'status'	=> 1
            );
		$data['result'] = $this->Member_model->update_request_status($id,$update_data);
		return print json_encode($data);

	}

	function get_member_product_purchase(){
		$_POST = json_decode(file_get_contents('php://input'),true);
		$from  = date("Y-m-d", strtotime($_POST['from']));
		$to  = date("Y-m-d", strtotime($_POST['to']));

		$data['member_product_purchase'] = $this->Member_model->get_member_product_purchase($from,$to);

		return print json_encode($data);
	}
}



?>