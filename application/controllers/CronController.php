<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CronController extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('Member_model');
        date_default_timezone_set('Asia/Manila');
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
                break;
            case 'generateCommissionSvc2':
                $data = $this->_getUserCommissionByPosition();
                break;
            case 'postGenerateCommissionSvc':
                $data = $this->_getUserCommissionByDate($_GET['date']);
                break;
            case 'generateRebates':
                $this->_cleanUniLevel();
                $data = $this->_generateRebates();
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
        $query = $this->db->query("SELECT user_id FROM users WHERE user_name NOT IN ('admin');");

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

    private function _getUserCommissionByPosition(){
        $data = array();
        $userTree = array();
        $commissions = array();

        $this->db->trans_start();
        $query = $this->db->query("SELECT user_id FROM users WHERE user_name NOT IN ('admin');");

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

        $commission = array();
        foreach ($data as $k => $v) {
            $userId = $v['user_id'];

            $this->db->trans_start();
            $this->db->query("CALL get_Hierarchy('$userId');");
            $this->db->trans_complete();

            if($userId == 2){
                $this->db->trans_start();
                $this->db->query("CALL get_childsDepth();");
                $this->db->trans_complete();
            }

            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('_selectedhierarchy', array('f_position' => 'left'));
            $lCount = $query->row_array();
            
            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('_selectedhierarchy', array('f_position' => 'right'));
            $rCount = $query->row_array();

            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('commission', array('c_user_id' => $userId , 'r_user_id' => $userId, 'remarks' => 'upline'));
            $iCommission = $query->row_array();

            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('commission', array('c_user_id' => $userId , 'r_user_id' => $userId , 'remarks' => 'upline', 'DATE(date_create)' => date('o-m-d')));
            $generatedCommission = $query->row_array();
            
            $this->db->select('COALESCE(SUM(log_count), 0) AS count');
            $query = $this->db->get_where('pair_logs', array('user_id' => $userId , 'DATE(date_generated) <= ' => date('o-m-d')));
            $totCommissions = $query->row_array();
            
            $commission[$userId] = array(
                'lCount' => $lCount['count'],
                'rCount' => $rCount['count'],
                'inserted_commissions' => $iCommission['count'],
                'generate_commission_today' => $generatedCommission['count'],
                'pairs_logged' => $totCommissions['count']
            );
        }

        foreach ($commission as $id => $v) {
            $userId = $id;
            $lCount = $v['lCount'];
            $rCount = $v['rCount'];
            $commissioned = $v['inserted_commissions'];
            $tCommissions = $v['pairs_logged'];

            $c_lvl = 0;
            $totPairs = ($lCount + $rCount);

            if($lCount == $rCount){
                $c_lvl = ($totPairs / 2);
            }else{
                if($lCount > $rCount && ($lCount != 0 && $rCount != 0)){
                    $c_lvl = $rCount;
                }else{
                    if(($lCount != 0 && $rCount != 0)){
                        $c_lvl = $lCount;
                    }
                }
            }
            
            $totLvl = $c_lvl;

            $this->db->trans_start();
            $this->db->query("DELETE FROM pair_logs WHERE date_generated = '".date('o-m-d')."' AND user_id = '$userId';");
            $this->db->trans_complete();
            $_logs = array(
                'user_id' => $id,
                'log_count' => $totLvl,
                'date_generated' => date('o-m-d')
            );
            $this->db->insert('pair_logs', $_logs);
            

            $totCommission = floor(($totLvl - $commissioned));

            $pairing = 'pairing_'. $userId;
            if($totCommission > 0){
                for($i = 1; $i <= $totCommission; $i++){
                    $iCommission = $this->_commissionForToday($id);
                    //echo $iCommission . '</br>';
                    if($iCommission < 10){
                        $_data = array(
                            'c_user_id' => $id,
                            'c_amount' => '60',
                            'r_user_id' => $id,
                            'depth' => $pairing,
                            'remarks' => "upline",
                            'date_create' => date('o-m-d H:i:s')
                        );
                        $this->db->insert('commission', $_data);
                        $insert_id = $this->db->insert_id();
                    }
                }
            }
            
        }

        echo '<pre>';
        print_r($commission);
        echo '</pre>';
    }

    private function _getUserCommissionByDate($date){
        $data = array();
        $userTree = array();
        $commissions = array();

        $this->db->trans_start();
        $query = $this->db->query("SELECT user_id FROM users WHERE user_name NOT IN ('admin') AND user_id = 2;");

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

        $commission = array();
        foreach ($data as $k => $v) {
            $userId = $v['user_id'];

            $this->db->trans_start();
            $this->db->query("CALL get_HierarchyByDate('$userId', '$date');");
            $this->db->trans_complete();

            if($userId == 2){
                $this->db->trans_start();
                $this->db->query("CALL get_childsDepth();");
                $this->db->trans_complete();
            }

            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('_selectedhierarchy', array('f_position' => 'left'));
            $lCount = $query->row_array();
            
            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('_selectedhierarchy', array('f_position' => 'right'));
            $rCount = $query->row_array();

            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('commission', array('c_user_id' => $userId , 'r_user_id' => $userId, 'remarks' => 'upline'));
            $iCommission = $query->row_array();

            $this->db->select('COUNT(*) AS count');
            $query = $this->db->get_where('commission', array('c_user_id' => $userId , 'r_user_id' => $userId , 'remarks' => 'upline', 'DATE(date_create)' => date('o-m-d')));
            $generatedCommission = $query->row_array();

            $this->db->select('COALESCE(SUM(log_count), 0) AS count');
            $query = $this->db->get_where('pair_logs', array('user_id' => $userId , 'DATE(date_generated) <= ' => date('o-m-d')));
            $totCommissions = $query->row_array();
            
            $commission[$userId] = array(
                'lCount' => $lCount['count'],
                'rCount' => $rCount['count'],
                'inserted_commissions' => $iCommission['count'],
                'generate_commission_today' => $generatedCommission['count'],
                'pairs_logged' => $totCommissions['count']
            );
        }

        foreach ($commission as $id => $v) {
            $userId = $id;
            $lCount = $v['lCount'];
            $rCount = $v['rCount'];
            $commissioned = $v['inserted_commissions'];
            $tCommissions = $v['pairs_logged'];

            $c_lvl = 0;
            $totPairs = ($lCount + $rCount);

            if($lCount == $rCount){
                $c_lvl = ($totPairs / 2);
            }else{
                if($lCount > $rCount && ($lCount != 0 && $rCount != 0)){
                    $c_lvl = $rCount;
                }else{
                    if(($lCount != 0 && $rCount != 0)){
                        $c_lvl = $lCount;
                    }
                }
            }
            
            $totLvl = $c_lvl;

            $this->db->trans_start();
            $this->db->query("DELETE FROM pair_logs WHERE date_generated = '$date' AND user_id = '$userId';");
            $this->db->trans_complete();
            $_logs = array(
                'user_id' => $id,
                'log_count' => $totLvl,
                'date_generated' => $date
            );
            $this->db->insert('pair_logs', $_logs);

            $totCommission = floor(($totLvl - $commissioned));
            $pairing = 'pairing_'. $userId;
            if($totCommission > 0){
                for($i = 1; $i <= $totCommission; $i++){
                    $iCommission = $this->_commissionForDate($id, $date);
                    //echo $iCommission . '</br>';
                    if($iCommission < 10){
                        $_data = array(
                            'c_user_id' => $id,
                            'c_amount' => '60',
                            'r_user_id' => $id,
                            'depth' => $pairing,
                            'remarks' => "upline",
                            'date_create' => $date . ' ' . date('H:i:s')
                        );
                        $this->db->insert('commission', $_data);
                        $insert_id = $this->db->insert_id();
                    }
                }
            }
            
        }

        echo '<pre>';
        print_r($commission);
        echo '</pre>';
    }

    private function _commissionForToday($id){
        $this->db->select('COUNT(*) AS count');
        $query = $this->db->get_where('commission', array('c_user_id' => $id , 'r_user_id' => $id , 'remarks' => 'upline', 'DATE(date_create)' => date('o-m-d')));
        $generatedCommission = $query->row_array();

        return $generatedCommission['count'];
    }

    private function _commissionForDate($id, $date){
        $this->db->select('COUNT(*) AS count');
        $query = $this->db->get_where('commission', array('c_user_id' => $id , 'r_user_id' => $id , 'remarks' => 'upline', 'DATE(date_create)' => $date));
        $generatedCommission = $query->row_array();

        return $generatedCommission['count'];
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

    private function _cleanUniLevel(){
        set_time_limit(0);

        $this->db->trans_start();
        $result = $this->db->query("CALL update_UniLevel();");
        mysqli_next_result($this->db->conn_id);
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE)
        {
            $result->free_result();
        }
        else
        {
            $result->free_result();
        }
    }

    private function _generateRebates(){
        $data = array();

        set_time_limit(0);

        $this->db->trans_start();
        $query = $this->db->query("SELECT 
            u.* , COALESCE(SUM(p.amount), 0) AS amount, COALESCE((SUM(p.amount)/ 1000 - (SELECT COUNT(*) FROM commission WHERE remarks = 'rebates' AND c_user_id = u.child)), 0) AS rebate_count,
            CASE 
                WHEN u.depth IN (0, 1) THEN 30
                WHEN u.depth = 2 THEN 15
                WHEN u.depth IN (3,4,5) THEN 10
                ELSE 5 END AS rebate
            FROM _unilevel_tree u
            LEFT JOIN product_purchase p ON p.user_id = u.child
            GROUP BY child;");

        if ($query->num_rows() > 0){
            $data = $query->result_array();
        }else{
            $data = array();
        }

        $this->db->trans_complete();

        echo '<pre>';
        print_r($data);
        echo '</pre>';

        foreach ($data as $k => $v) {
            for ($i=1; $i <= $v['rebate_count']; $i++) { 
                $this->db->trans_start();
                $genCommission = $this->db->query("INSERT INTO commission (c_user_id, c_amount, r_user_id, remarks, date_create) VALUES(".$v['child'].", ".$v['rebate'].", ".$v['child'].", 'rebates', NOW())");
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
}
