<?php

class Reports_model extends CI_Model{

    function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Manila');
    }


    function get_member_list(){
    	$result = $this->db->query("SELECT COALESCE(c.description, 'SystemGenerated') AS g_code, CONCAT(u.last_name, ', ', u.first_name) AS full_name, u.contact, u.gender,
            u.user_name, u.entered_on, CONCAT(sp.last_name, ', ', sp.first_name) AS sponsor_name, t.position, CONCAT(tp.last_name, ', ', tp.first_name) AS parent_name
            FROM users u
                LEFT JOIN codes c ON c.used_by = u.user_id
                LEFT JOIN users sp ON sp.user_id = u.sponsor_by
                LEFT JOIN luyabaya_tree t ON t.child = u.user_id
                LEFT JOIN users tp ON tp.user_id = t.parent
            WHERE u.user_name NOT IN ('admin')
            ORDER BY u.last_name ASC, u.entered_on ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function get_right_member_list(){
    	$result = $this->db->query("SELECT COALESCE(c.description, 'SystemGenerated') AS g_code, CONCAT(u.last_name, ', ', u.first_name) AS full_name, u.contact, u.gender, u.user_name, u.entered_on, CONCAT(sp.last_name, ', ', sp.first_name) AS sponsor_name FROM users u
				LEFT JOIN codes c ON c.used_by = u.user_id
			    LEFT JOIN users sp ON sp.user_id = u.sponsor_by
                LEFT JOIN luyabaya_tree t ON t.child = u.user_id
			WHERE u.user_name NOT IN ('admin') AND t.m_position = 'right'
			ORDER BY u.last_name ASC, u.entered_on ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function get_left_member_list(){
    	$result = $this->db->query("SELECT COALESCE(c.description, 'SystemGenerated') AS g_code, CONCAT(u.last_name, ', ', u.first_name) AS full_name, u.contact, u.gender, u.user_name, u.entered_on, CONCAT(sp.last_name, ', ', sp.first_name) AS sponsor_name FROM users u
				LEFT JOIN codes c ON c.used_by = u.user_id
			    LEFT JOIN users sp ON sp.user_id = u.sponsor_by
                LEFT JOIN luyabaya_tree t ON t.child = u.user_id
			WHERE u.user_name NOT IN ('admin') AND t.m_position = 'left'
			ORDER BY u.last_name ASC, u.entered_on ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function get_member_referrals(){
    	$result = $this->db->query("SELECT CONCAT(u.last_name, ', ', u.first_name) AS full_name, c.date_create, CONCAT(pf.last_name, ', ', pf.first_name) AS referred_person FROM users u
			    LEFT JOIN commission c ON c.c_user_id = u.user_id
                LEFT JOIN users pf ON pf.user_id = c.r_user_id
			WHERE u.user_name NOT IN ('admin') AND c.remarks = 'referral'
			ORDER BY c.date_create DESC, u.last_name ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function get_member_upline_today(){
    	$result = $this->db->query("SELECT CONCAT(u.last_name, ', ', u.first_name) AS full_name, SUM(c.c_amount) AS c_amount, c.date_create FROM commission c
                LEFT JOIN users u ON c.c_user_id = u.user_id
            WHERE u.user_name NOT IN ('admin') AND c.remarks = 'upline' AND DATE(c.date_create) = DATE(NOW())
            GROUP BY c.date_create, u.user_id
            ORDER BY c.date_create DESC, u.last_name ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function withdrawals_today(){
    	$result = $this->db->query("SELECT CONCAT(u.last_name, ', ', u.first_name) AS full_name, w.date_create, w.w_amount FROM withdrawal w
                LEFT JOIN users u ON w.w_user_id = u.user_id
            WHERE u.user_name NOT IN ('admin') AND w.remarks = 'Approved' AND DATE(w.date_create) = DATE(NOW())
            ORDER BY w.date_create DESC, u.last_name ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function get_member_commissions_uptodate(){
    	$result = $this->db->query("SELECT CONCAT(u.last_name, ', ', u.first_name) AS full_name, SUM(c.c_amount) AS c_amount , c.date_create FROM commission c
                LEFT JOIN users u ON c.c_user_id = u.user_id
            WHERE u.user_name NOT IN ('admin') AND c.remarks = 'upline'
            GROUP BY c.date_create, u.user_id
            ORDER BY c.date_create DESC, u.last_name ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function get_member_withdrawals_uptodate(){
    	$result = $this->db->query("SELECT CONCAT(u.last_name, ', ', u.first_name) AS full_name, w.w_amount, w.date_create FROM withdrawal w
			    LEFT JOIN users u ON w.w_user_id = u.user_id
			WHERE u.user_name NOT IN ('admin') AND w.remarks = 'Approved'
			ORDER BY w.date_create DESC, u.last_name ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        $data = array('report' => $output);

        return $data;
    }

    function get_user_cash_on_hand($userId){
        $result = $this->db->query("SELECT CONCAT(u.last_name, ', ', u.first_name) AS full_name, SUM(c.c_amount) AS c_amount , c.date_create, (CASE 
                WHEN remarks = 'referral' THEN 'Direct Referral'
                WHEN remarks = 'upline' THEN 'Pairing'
                ELSE ''
            END) AS remarks, DATE_FORMAT(u.entered_on,'%M %e, %Y') AS sign_up_date  
            FROM commission c
                LEFT JOIN users u ON c.c_user_id = u.user_id
            WHERE u.user_name NOT IN ('admin') AND c.c_user_id = '$userId'
            GROUP BY c.date_create, u.user_id
            ORDER BY c.date_create DESC, u.last_name ASC;");
        $output = array();
        if ($result->num_rows() > 0){
            $output = $result->result_array();
        }else{
            $output = array();
        }

        return $output;
    }

}
?>