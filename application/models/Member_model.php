<?php

class Member_model extends CI_Model{

    public function update_tax($data,$id){

        if(!empty($data))
        {
            $this->db->trans_start();
            $this->db->where('tax_rate_id', $id);
            $this->db->update('tax_rate', $data);
            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE)
            {
                $response = 0;
            }
            else
            {
                $response = 1;
            }
        }

        return $response;
    }

    public function update_code($data,$code){

        if(!empty($data))
        {
            $this->db->trans_start();
            $this->db->where('description', $code);
            $this->db->update('codes', $data);
            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE)
            {
                $response = 0;
            }
            else
            {
                $response = 1;
            }
        }

        return $response;

    }    

      public function update_member($id,$data){

        if(!empty($data))
        {
            $this->db->trans_start();
            $this->db->where('user_id', $id);
            $this->db->update('users', $data);
            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE)
            {
                $response = 0;
            }
            else
            {
                $response = 1;
            }
        }

        return $response;

    }

    public function update_request_status($id,$data){
        if(!empty($data))
        {
            $this->db->trans_start();
            $this->db->where('request_withdrawal_id', $id);
            $this->db->update('request_withdrawal', $data);
            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE)
            {
                $response = 0;
            }
            else
            {
                $response = 1;

                $this->db->select('amount');
                $query = $this->db->get_where('request_withdrawal', array('request_withdrawal_id' => $id));
                $amount = $query->row_array();

                $this->db->select('user_id');
                $query = $this->db->get_where('request_withdrawal', array('request_withdrawal_id' => $id));
                $user = $query->row_array();

                $_data = array(
                    'w_user_id' => $user['user_id'],
                    'w_amount' => $amount['amount'],
                    'remarks' => 'Approved',
                    'date_create' => date('o-m-d H:i:s')
                );

                $this->db->trans_start();
                $this->db->insert('withdrawal', $_data);
                $this->db->trans_complete();
            }
        }

        return $response;
    }    

    public function send_cash_request($data){

        if(!empty($data))
        {
            $response = $this->db->insert('request_withdrawal', $data);
            $latest_id = $this->db->insert_id();
        }
        return $latest_id;

    }

    public function save_member($data){

        if(!empty($data))
        {
            $response = $this->db->insert('users', $data);
            $latest_id = $this->db->insert_id();
        }
        return $latest_id;

    }

    public function save_generated_code($data){

        if(!empty($data))
        {
            $response = $this->db->insert('codes', $data);
            $this->db->insert_id();
        }
    }

    public function save_position($data){

        if(!empty($data))
        {
            $response = $this->db->insert('position', $data);
            $latest_id = $this->db->insert_id();

        }
        return $latest_id;

    }

    public function save_product_purchase($data){

        if(!empty($data))
        {
            $response = $this->db->insert('product_purchase', $data);
            $latest_id = $this->db->insert_id();

        }
        return $latest_id;

    }

    public function update_donwline_position($data,$id, $pos){

        if(!empty($data))
        {
            $response = 0;
            $result = $this->db->query("CALL get_userMembers('$id')");
            mysqli_next_result($this->db->conn_id);
            if ($result->num_rows() > 0){
                $cdata = $result->result_array();

                if($cdata[0]['countMembers'] <= 2){
                    $this->db->trans_start();
                    $this->db->where('user_id', $id);
                    $this->db->update('position',$data);
                    $this->db->trans_complete();

                    if ($this->db->trans_status() === FALSE)
                    {
                        $response = 0;
                    }
                    else
                    {
                        $response = 1;

                        $child = 0;
                        $position = '';
                        if(array_key_exists('position_right', $data)){
                            $child = $data['position_right'];
                            $position = 'right';
                        }else{
                            $child = $data['position_left'];
                            $position = 'left';
                        }

                        $this->add_userDownline($id, $child, $position, $pos, $this->session->userdata('user_id'));

                    }
                }else{
                    $response = 0;
                }
            }else{
                $response = 0;
            }
        }

        return $response;

    }

    public function delete_tax_rate($id){
       $response = false;

      if(!empty($id))
      {
          $this->db->where('tax_rate_id', $id);
          $response = $this->db->delete('tax_rate');
      }
      return $response;
    }

    public function get_user_credentials($username,$password){

        $this->db->select('*');
        $this->db->where('user_name', $username);
        $this->db->where('password', $password);

        return $this->db->get('users')->row_object();
    }

    public function get_user_info($id){
        $this->db->select('*');
        $this->db->where('user_id', $id);

        return $this->db->get('users')->row_object();
    }


    public function get_all_members(){

        $query = $this->db->query("SELECT * FROM users WHERE position = 0");
        return $query->result();
        
    }

    public function get_generated_code($id){
        
        $query = $this->db->query("SELECT * FROM codes WHERE generated_by = ".$id);
        return $query->result();
    
    }

    public function get_all_sponsored_member($id){

        $query = $this->db->query("SELECT * FROM users WHERE sponsor_by =".$id);
        return $query->result();
    
    }

    public function check_available_position($id){
        $query = $this->db->query("SELECT * FROM position WHERE user_id =".$id);
        return $query->result();
    }

    public function get_member_not_assigned($id){
        $query = $this->db->query("CALL get_unAssignedUsers($id)");
        mysqli_next_result($this->db->conn_id);
        return $query->result();
    }

    public function get_last_available_downline($id,$position){
    
        if($position == 'left'){
            $query = $this->db->query("CALL get_AvailableDownline('$id', 'L')");
            mysqli_next_result($this->db->conn_id);
        }else{
            $query = $this->db->query("CALL get_AvailableDownline('$id', 'R')");
            mysqli_next_result($this->db->conn_id);
        }

       
        return $query->result();
    }

    public function get_all_right($id){
        $query = $this->db->query("SELECT COALESCE((CASE WHEN position_right = '' THEN 0 ELSE COUNT(position_right) END), 0) AS countRight FROM position WHERE upline = '$id'");
        return $query->result();
    }

    public function getAllRightMembers($id){
        $result = $this->db->query("CALL get_MembersAssigned('$id', 'R');");
        mysqli_next_result($this->db->conn_id);
        $data = array();
        $counter = 0;

        if ($result->num_rows() > 0){
            $data = $result->result_array();
            $counter = sizeof($data);
        }else{
            $data = array();
            $counter = 0;
        }

        $output = array(
            "iTotalRecords" => $counter,
            "aaData" => array()
        );

        foreach ($data as $key => $value) {
            $userId = $value['user_id'];
            $data[$key]['members'] = $this->getMembers($userId);
        }

        if($counter != 0){
            $output['aaData'] = $data;
        }else{
            $output['aaData'] = [];
        }

        return $output;
    }

    public function getAllLeftMembers($id){
        $result = $this->db->query("CALL get_MembersAssigned('$id', 'L');");
        mysqli_next_result($this->db->conn_id);
        $data = array();
        $counter = 0;

        if ($result->num_rows() > 0){
            $data = $result->result_array();
            $counter = sizeof($data);
        }else{
            $data = array();
            $counter = 0;
        }

        $output = array(
            "iTotalRecords" => $counter,
            "aaData" => array()
        );

        foreach ($data as $key => $value) {
            $userId = $value['user_id'];
            $data[$key]['members'] = $this->getMembers($userId);
        }

        if($counter != 0){
            $output['aaData'] = $data;
        }else{
            $output['aaData'] = [];
        }

        return $output;
    }
    private function getMembers($id){
        $data = array();

        $result = $this->db->query("CALL get_downLines('$id');");
        mysqli_next_result($this->db->conn_id);
        if ($result->num_rows() > 0){
            $data = $result->result_array();
        }else{
            $data = array();
        }

        return $data;
    }

    public function get_all_left($id){
         $query = $this->db->query("SELECT COALESCE((CASE WHEN position_left = '' THEN 0 ELSE COUNT(position_left) END), 0) AS countLeft FROM position WHERE upline = '$id'");
        return $query->result();
    }

    public function get_members_data($id){
        $query = $this->db->query("SELECT * FROM users WHERE user_id = ".$id);
        return $query->result();
    }



    public function check_code($code){

        $this->db->select('*');
        $this->db->where('description', $code);
        $this->db->where('status', 0);
      
        return $this->db->get('codes')->row_object();

    }

    public function add_commission($userId, $amount, $desc, $rUserid){
            $response = 0;
            $this->db->trans_start();
            $this->db->query("CALL add_userCommission('$userId', '$amount', '$desc', '$rUserid', null)");
            mysqli_next_result($this->db->conn_id);
            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE)
            {
                $response = 0;
            }
            else
            {
                $response = 1;
            }
    }

    public function get_totalCashOnHand($userId){
        $data = array();
        $query = $this->db->query("CALL get_userCashOnHand('$userId')");
        mysqli_next_result($this->db->conn_id);
        if ($query->num_rows() > 0){
            $data = $query->result();
        }else{
            $data = array();
        }

        return $data;
    }

    public function getUserWithdrawals($id){
        $result = $this->db->query("CALL get_userWithdrawals('$id');");
        mysqli_next_result($this->db->conn_id);
        $data = array();
        $counter = 0;

        if ($result->num_rows() > 0){
            $data = $result->result_array();
            $counter = sizeof($data);
        }else{
            $data = array();
            $counter = 0;
        }

        $output = array(
            "iTotalRecords" => $counter,
            "aaData" => array()
        );

        if($counter != 0){
            $output['aaData'] = $data;
        }else{
            $output['aaData'] = [];
        }

        return $output;
    }

    public function getUserCommissions($id){
        $result = $this->db->query("CALL get_userCommissions('$id');");
        mysqli_next_result($this->db->conn_id);
        $data = array();
        $counter = 0;

        if ($result->num_rows() > 0){
            $data = $result->result_array();
            $counter = sizeof($data);
        }else{
            $data = array();
            $counter = 0;
        }

        $output = array(
            "iTotalRecords" => $counter,
            "aaData" => array()
        );

        if($counter != 0){
            $output['aaData'] = $data;
        }else{
            $output['aaData'] = [];
        }

        return $output;
    }

    public function add_userDownline($pId, $cId, $position, $pos, $createdBy){
        $this->db->trans_start();
        $this->db->query("CALL add_userDownlines('$pId', '$cId', '$position', '$pos', '$createdBy')");
        $this->db->trans_complete();

        $response= 0;
        if ($this->db->trans_status() === FALSE)
        {
            $response = 0;
        }
        else
        {
            $response = 1;
        }

        return $response;
    }

    public function get_Hierarchy($userId){
        $this->db->trans_start();
        $query = $this->db->query("CALL get_Hierarchy('$userId')");
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

        return $response;
    }

    public function generate_Commission($id){
        $result = $this->db->query("CALL generate_userCommission('$id');");
        mysqli_next_result($this->db->conn_id);
        
        $response = 0;
        if ($this->db->trans_status() === FALSE)
        {
            $response = 0;
        }
        else
        {
            $response = 1;
        }

        return $response;
    }

    public function get_TreeDepth(){
        $query = $this->db->query("SELECT MAX(depth) AS tree_size FROM _selectedHierarchy;");
        if ($query->num_rows() > 0){
            $data = $query->result();
        }else{
            $data = array();
        }

        return $data;
    }

    public function get_childHierarchy($val, $str){
        $data = array();
        $query = $this->db->query("CALL get_selectedHierarchy('$val', '$str')");
        mysqli_next_result($this->db->conn_id);
        if ($query->num_rows() > 0){
            $data = $query->result();
        }else{
            $data = array();
        }

        return $data;
    }

    public function generate_userTree($userId){
        $data = array();
        $query = $this->db->query("CALL generate_userTree('$userId')");
        mysqli_next_result($this->db->conn_id);
        
        if ($query->num_rows() > 0){
            $data = $query->result();
        }else{
            $data = array();
        }

        return $data;
    }

    public function get_childsDepth(){
        $result = $this->db->query("CALL get_childsDepth();");
        
        $response = 0;
        if ($this->db->trans_status() === FALSE)
        {
            $response = 0;
        }
        else
        {
            $response = 1;
        }

        return $response;
    }

    public function get_cashRequest(){

        $result = $this->db->query(" SELECT 
                                        u.user_id,
                                        u.first_name,
                                        u.last_name,
                                        rw.request_withdrawal_id,
                                        rw.amount,
                                        rw.date_requested,
                                        rw.user_id,
                                        rw.status
                                     FROM request_withdrawal as rw
                                     JOIN  users as u on u.user_id = rw.user_id
                                     WHERE  rw.status = 0");

        return $result->result(); 
    }

    public function get_member_product_purchase($from,$to){

        $result = $this->db->query(" SELECT 
                                        u.user_id,
                                        CONCAT(u.first_name ,' ', u.last_name) as full_name,
                                        pp.product_purchase_id,
                                        pp.amount,
                                        pp.amount,
                                        pp.user_id
                                     FROM product_purchase as pp
                                     JOIN users as u ON u.user_id = pp.user_id
                                     WHERE pp.  date_purchase  BETWEEN '$from' AND '$to'");
        return $result->result();
    }

 

}?>