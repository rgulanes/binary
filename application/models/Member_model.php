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

    public function update_donwline_position($data,$id){

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
        //$result = $this->db->query("CALL get_userMembers('$id')");
        //mysqli_next_result($this->db->conn_id);
        //if ($result->num_rows() > 0){
            //$cdata = $result->result_array();

            //if($cdata[0]['countMembers'] != 2){
                $query = $this->db->query("CALL get_unAssignedUsers($id)");
                mysqli_next_result($this->db->conn_id);
                return $query->result();
            //}else{
                //$data = array();
                //return $data;
            //}
        //}
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

    public function check_code($code){

        $this->db->select('*');
        $this->db->where('description', $code);
        $this->db->where('status', 0);
      
        return $this->db->get('codes')->row_object();

    }


}?>