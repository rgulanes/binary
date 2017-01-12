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
          $query = $this->db->query(
                                    "SELECT 
                                    u.user_id as u_user_id,
                                    u.first_name as u_first_name,
                                    u.last_name as u_last_name,
                                    u.contact as u_contact,
                                    u.address as u_address,
                                    u.email as u_email,
                                    u.gender as u_gender,
                                    u.sponsor_by as u_sponsor,
                                 
                                    p.position_id as p_position_id,
                                    P.user_id as p_user_id,
                                    p.sponsor_by as p_sponsor_by,
                                    p.position_left as p_left,
                                    p.position_right as p_right

                                    FROM users as u 
                                    JOIN position  as p ON u.user_id = p.user_id 
                                    WHERE  p.sponsor_by = ". $id ." 
                                    AND p.position_left = ''
                                    AND p.position_right = ''
                                    AND p.user_id != '".$id."' ");
     
        return $query->result();

    }

    public function get_last_available_downline($id,$position){
    
        if($position == 'left'){

             $query = $this->db->query(
                                    "SELECT 
                                    u.user_id as u_user_id,
                                    u.first_name as u_first_name,
                                    u.last_name as u_last_name,
                                    u.contact as u_contact,
                                    u.address as u_address,
                                    u.email as u_email,
                                    u.gender as u_gender,
                                    u.sponsor_by as u_sponsor,
                                 
                                    p.position_id as p_position_id,
                                    P.user_id as p_user_id,
                                    p.sponsor_by as p_sponsor_by,
                                    p.position_left as p_left,
                                    p.position_right as p_right

                                    FROM users as u 
                                    JOIN position as p ON u.user_id = p.user_id 
                                    WHERE p.sponsor_by = '".$id."' 
                                    AND p.position_left > '0'");
        }else{

             $query = $this->db->query(
                                    "SELECT 
                                    u.user_id as u_user_id,
                                    u.first_name as u_first_name,
                                    u.last_name as u_last_name,
                                    u.contact as u_contact,
                                    u.address as u_address,
                                    u.email as u_email,
                                    u.gender as u_gender,
                                    u.sponsor_by as u_sponsor,
                                 
                                    p.position_id as p_position_id,
                                    P.user_id as p_user_id,
                                    p.sponsor_by as p_sponsor_by,
                                    p.position_left as p_left,
                                    p.position_right as p_right

                                    FROM users as u 
                                    JOIN position as p ON u.user_id = p.user_id 
                                    WHERE p.sponsor_by = '".$id."' 
                                    AND p.position_right > '0'");

        }

       
        return $query->result();
    }

    public function get_all_right($id){
        $query = $this->db->query(
                                    "SELECT 
                                    u.user_id as u_user_id,
                                    u.first_name as u_first_name,
                                    u.last_name as u_last_name,
                                    u.contact as u_contact,
                                    u.address as u_address,
                                    u.email as u_email,
                                    u.gender as u_gender,
                                    u.sponsor_by as u_sponsor,
                                    u.entered_on as u_entered_on,
                                 
                                    p.position_id as p_position_id,
                                    P.user_id as p_user_id,
                                    p.sponsor_by as p_sponsor_by,
                                    p.position_left as p_left,
                                    p.position_right as p_right

                                    FROM users as u 
                                    JOIN position as p ON u.user_id = p.user_id 
                                    WHERE p.upline = '".$id."' 
                                    AND p.position_left = '0' 
                                    AND p.position_right = '1'");
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
         $query = $this->db->query(
                                    "SELECT 
                                    u.user_id as u_user_id,
                                    u.first_name as u_first_name,
                                    u.last_name as u_last_name,
                                    u.contact as u_contact,
                                    u.address as u_address,
                                    u.email as u_email,
                                    u.gender as u_gender,
                                    u.sponsor_by as u_sponsor,
                                    u.entered_on as u_entered_on,
                                 
                                    p.position_id as p_position_id,
                                    P.user_id as p_user_id,
                                    p.sponsor_by as p_sponsor_by,
                                    p.position_left as p_left,
                                    p.position_right as p_right

                                    FROM users as u 
                                    JOIN position as p ON u.user_id = p.user_id 
                                    WHERE p.upline = '".$id."' 
                                    AND p.position_left = '1' 
                                    AND p.position_right = '0'");
        return $query->result();


    }

    public function check_code($code){

        $this->db->select('*');
        $this->db->where('description', $code);
      
        return $this->db->get('codes')->row_object();

    }


}?>