<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {


	function __construct(){
        parent::__construct();
        $this->load->model('Member_model');
    }

	public function index()
	{
		$this->load->view('includes/header');
		$this->load->view('login/index');
		$this->load->view('includes/footer');
	
	}

	function save_member(){
    
        $_POST = json_decode(file_get_contents('php://input'), true);

        $first_name =  $_POST['firstname'];
        $last_name = $_POST['lastname'];
        $gender = $_POST['gender'];
        $contact = $_POST['contact'];
        $email = $_POST['email'];
        $address = $_POST['address'];
        $sponsor = $_POST['sponsor'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $generated_code = $_POST['generated_code'];

      
            $insert_data = array(
                'first_name' => ucwords($first_name),
                'last_name' => ucwords($last_name),
                'gender' => ucwords($gender),
                'contact' => $contact,
                'email' => $email,
                'address' => ucwords($address),
                'sponsor_by' => $sponsor,
                'user_name' => $username,
                'password' => $password,
                'position' => 0,
                'entered_on' => date("Y-m-d H:i:s"),
            );

            $inserted = $this->Member_model->save_member($insert_data);


            $insert_position = array(

                'user_id' => $inserted,
                'position_left' => '',
                'position_right' => '',
                'sponsor_by' => $sponsor,
                'upline' => ''
            );

            $this->Member_model->save_position($insert_position);
        
        
        if($inserted > 0 )
        {
            $update_codes = array(
                'status' => 1,
                'used_by' => $inserted
            );

            $this->Member_model->update_code($update_codes,$generated_code);

            $this->response_code = 0;
            $this->response_message = "Save Successfully";

            $this->Member_model->add_commission($sponsor, 50, 'referral');
        }
        else
        {
            $this->response_code = 1;
            $this->response_message = "Failed to save.";
        }


        echo json_encode(array(
            "error"         => $this->response_code,
            "message"       => $this->response_message,
        ));
    
    }


	function user_authentication(){

        $_POST = json_decode(file_get_contents('php://input'), true);

        $username =  $_POST['username'];
        $password =  $_POST['password'];

        $result = $this->Member_model->get_user_credentials($username,$password);

       
        if($result == null)
        {
            $this->position_id = '';
            $this->response_code = 1;
            $this->response_message = "Incorrect Credentials.";

        }
        else
        {
            $this->session->set_userdata('user_id',$result->user_id);
            $this->position_id = $result->position;
            $this->response_code = 0;
            $this->response_message = "Success...";
        }


        echo json_encode(array(
            "error"			=> $this->response_code,
            "position"      => $this->position_id,    
            "message"		=> $this->response_message
            
        ));


    }

    function check_code(){

        $_POST = json_decode(file_get_contents('php://input'), true);
        $code =  $_POST['code'];

        $result = $this->Member_model->check_code($code);

        if($result == null)
        {
            $this->response_code = 1;
            $this->response_message = "Incorrect Code.";

        }
        else
        {
           $this->response_code = 0;
           $this->response_message = "Success...";
        }

        echo json_encode(array(
            "error"         => $this->response_code,
            "message"       => $this->response_message
            
        ));

    }


    function logout(){
        $_POST = json_decode(file_get_contents('php://input'), true);
        $this->session->set_userdata('user_id','');
        $this->session->sess_destroy();
    }

}
