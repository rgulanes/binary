<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller{

	function __construct(){
        parent::__construct();
        $this->load->model('Member_model');
         date_default_timezone_set('Asia/Manila');
    }

	function index(){
		if($this->session->userdata('user_id') != NULL){

			//get the user info
			$generateLuyabayaTree = $this->Member_model->generateLuyabayaTree();
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

	function Reports(){
		if($this->session->userdata('user_id') != NULL){
			$this->load->view('admin/reports');
		}else{
			redirect('login/index');
		}

	}

	function save_product_purchase(){
		$_POST = json_decode(file_get_contents('php://input'),true);
		$id 	= $_POST['user_id'];
		$amount = $_POST['amount'];
		$product_desc = $_POST['product_description'];
		$date_purchase = date("Y-m-d", strtotime($_POST['date_purchase']));
	
	  	$insert_data = array(
            'amount' => $amount,
            'date_purchase' => $date_purchase,
            'user_id' => $id,
            'product_desc' => $product_desc
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

	function get_profile_info(){
	
		$id = $this->session->userdata('user_id');
		$data['profile_info'] = $this->Member_model->get_user_info($id);
		return print json_encode($data);
	}

	function update_profile_info(){

		$_POST = json_decode(file_get_contents('php://input'),true);	

		$user_id	= $_POST['user_id'];
		$first_name = $_POST['first_name'];
		$last_name 	= $_POST['last_name'];
		$contact 	= $_POST['contact'];
		$email 		= $_POST['email'];
		$address 	= $_POST['address'];
		$gender 	= $_POST['gender'];

        $update_data = array(
            'first_name' => ucwords($first_name),
            'last_name' => ucwords($last_name),
            'gender' => ucwords($gender),
            'contact' => $contact,
            'email' => $email,
            'address' => ucwords($address),
            
        );
        
        $inserted = $this->Member_model->update_member($user_id,$update_data);

		if($inserted > 0 )
        {
            $this->response_code = 0;
            $this->response_message = "Save Successfully";
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

    function update_password(){

    	$_POST = json_decode(file_get_contents('php://input'),true);	

		$user_id	= $_POST['user_id'];
    	$password 	= $_POST['new_password'];
    
    	$update_data = array(
            'password' => ucwords($password),
        );

        $inserted = $this->Member_model->update_member($user_id,$update_data);

		if($inserted > 0 )
        {
            $this->response_code = 0;
            $this->response_message = "Save Successfully";
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


    public function board_stats(){
		$this->db->select('COALESCE(SUM(c_amount), 0) AS count');
        $query = $this->db->get_where('commission', array('remarks' => 'referral', 'DATE(date_create) <=' => date('o-m-d')));
        $referral = $query->row_array();

        $this->db->select('COALESCE(SUM(c_amount), 0) AS count');
        $query = $this->db->get_where('commission', array('remarks' => 'upline', 'DATE(date_create) =' => date('o-m-d')));
        $upline = $query->row_array();

        $this->db->select('COALESCE(SUM(w_amount), 0) AS count');
        $query = $this->db->get_where('withdrawal', array('remarks' => 'Approved', 'DATE(date_create)' => date('o-m-d')));
        $withdrawal = $query->row_array();

        $query = $this->db->query('SELECT DISTINCT depth FROM luyabaya_tree ORDER BY depth DESC LIMIT 1;');
        $treeSize = $query->row_array();

        $this->db->select('COALESCE(COUNT(*), 0) AS count');
        $query = $this->db->get_where('luyabaya_tree', array('m_position =' => 'left'));
        $left = $query->row_array();

        $this->db->select('COALESCE(COUNT(*), 0) AS count');
        $query = $this->db->get_where('luyabaya_tree', array('m_position =' => 'right'));
        $right = $query->row_array();

        $query = $this->db->query("SELECT COUNT(*) AS count FROM luyabaya_tree WHERE m_position != 'parent';");
        $members = $query->row_array();

        $query = $this->db->query("SELECT COUNT(*) AS count FROM request_withdrawal WHERE status = 0;");
        $forApproval = $query->row_array();

        $this->db->select('COALESCE(SUM(c_amount), 0) AS count');
        $query = $this->db->get_where('commission', array('remarks' => 'rebates', 'DATE(date_create) <=' => date('o-m-d')));
        $rebate = $query->row_array();


        echo json_encode(array(
            "treeSize"			=> $treeSize['depth'],
            "withdrawal"		=> $withdrawal['count'],
            "upline"			=> $upline['count'],
            "referral"			=> $referral['count'],
            "left"			=> $left['count'],
            "right"			=> $right['count'],
            'totMembers'	=> $members['count'],
            'withdrawalForApproval' => $forApproval['count'],
            "rebate"			=> $rebate['count']
        ));

	}

	public function get_tree_nodes(){
		$_POST = json_decode(file_get_contents('php://input'),true);
		$desc = $_POST['desc'];
        $data = $this->Member_model->get_tree_nodes($desc);
        return print json_encode($data);
    }
}



?>