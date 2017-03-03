<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CronController extends CI_Controller {

	function __construct(){
        parent::__construct();
        $this->load->model('Member_model');
    }

    public function cron_request()
    {   
        $action = '';
        if(isset($_REQUEST['action'])){
            $action = $_REQUEST['action'];
        }else{
            $action = $_GET['action'];
        }
        
        switch ($action) {
            case 'generateCommissionSvc':
                $data = $this->_getUserCommission();
                print_r($data);
                break;
            case 'backupDatabase':
                $data = $this->_backupDatabase();
                print_r($data);
                break;
            default:
                echo 'Cron Request not found.' . PHP_EOL;
                return;
                break;
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

    private function _backupDatabase(){
        // Load the DB utility class
        $this->load->dbutil();

        // Backup your entire database and assign it to a variable
        $prefs = array(
                'tables'        => array(),                     // Array of tables to backup.
                'ignore'        => array(),                     // List of tables to omit from the backup
                'format'        => 'zip',                       // gzip, zip, txt
                'filename'      => 'db_'.date('mdo_His').'.sql',              // File name - NEEDED ONLY WITH ZIP FILES
                'add_drop'      => TRUE,                        // Whether to add DROP TABLE statements to backup file
                'add_insert'    => TRUE,                        // Whether to add INSERT data to backup file
                'newline'       => "\n"                         // Newline character used in backup file
        );

        $backup = $this->dbutil->backup($prefs);

        // Load the file helper and write the file to your server
        $path = "./database/backups/";
        $f_path = "./database/backups/";
        $c_path = $f_path.'/'.'db_'.date('mdo_His').'.zip';

        if(!is_dir($path)) //create the folder if it's not already exists
        {
          mkdir($path,0744,TRUE);
          file_put_contents( $f_path.'/index.html' , '<!DOCTYPE html><html><head><title>403 Forbidden</title></head><body><p>Directory access is forbidden.</p></body></html>' );
        }

        $this->load->helper('file');
        write_file($c_path, $backup);
    }
}
