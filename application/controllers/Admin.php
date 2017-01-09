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


}



?>