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
            case 'cleanDB':
                $_data = $this->_backupDatabase();
                $data = $this->_cleanDB();
                print_r($_data);
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
        $commissions = array();

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

        set_time_limit(0);

        $size = sizeof($data);
        foreach ($data as $k => $v) {
        	$userId = $v['user_id'];

            $this->db->trans_start();
            $this->db->query("CALL get_Hierarchy('$userId');");

            if($userId == 2){
                $this->db->query("CALL get_childsDepth();");
            }

            $sql = "SELECT * FROM _selectedhierarchy;";

            $result = $this->db->query($sql);
            $output = array();
            if ($result->num_rows() > 0){
                $output[$userId] = $result->result_array();
            }else{
                $output = array();
            }
            $result->free_result();
            $this->db->trans_complete();
            
            $size = sizeof($output[$userId]);

            $commission = array();
            for ($i=0; $i < $size; $i++) { 
                foreach ($output as $k => $v) {
                    $depth = $v[$i]['depth'];

                    $this->db->select('COUNT(*) AS count');
                    $query = $this->db->get_where('_selectedhierarchy', array('depth' => $depth, 'f_position' => 'left'));
                    $lCount = $query->row_array();
                    
                    $this->db->select('COUNT(*) AS count');
                    $query = $this->db->get_where('_selectedhierarchy', array('depth' => $depth, 'f_position' => 'right'));
                    $rCount = $query->row_array();

                    $this->db->select('COUNT(*) AS count');
                    $query = $this->db->get_where('commission', array('depth' => $depth, 'c_user_id' => $userId));
                    $iCommission = $query->row_array();

                    $maxChild = pow(2, $depth);

                    if($depth != 0){
                        $commission[$depth] = array(
                            'lCount' => $lCount['count'],
                            'rCount' => $rCount['count'],
                            'max_child' => $maxChild,
                            'inserted_commissions' => $iCommission['count']
                        );
                    }
                }
            }

            $maxSize = sizeof($commission);
            $genCommission = array();
            for ($i=1;$i<=$maxSize;$i++) { 
                $lCount = $commission[$i]['lCount'];
                $rCount = $commission[$i]['rCount'];
                $maxChild = $commission[$i]['max_child'];
                $commissioned = $commission[$i]['inserted_commissions'];

                $c_lvl = 0;
                if($lCount == $rCount && ($lCount + $rCount) == $maxChild){
                    $c_lvl = ($maxChild / 2);
                }else{
                    if($lCount > $rCount && ($lCount != 0 && $rCount != 0)){
                        $c_lvl = $rCount;
                    }else{
                        if(($lCount != 0 && $rCount != 0)){
                            $c_lvl = $lCount;
                        }
                    }
                }

                $totCommission = ($c_lvl - $commissioned);

                $this->db->trans_start();
                $genCommission = $this->db->query("CALL generateCommission('$userId', '$i', '$totCommission')");
                $this->db->trans_complete();

                if ($this->db->trans_status() === FALSE)
                {
                    $genCommission->free_result();
                }
                else
                {
                    $genCommission->free_result();
                }

            }
        }
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

    private function _cleanDB(){
        $this->db->trans_start();
        $result = $this->db->query("CALL clean_DB();");
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

        return $response;
    }
}
