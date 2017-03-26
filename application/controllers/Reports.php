<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('Reports_model');
        date_default_timezone_set('Asia/Manila');
    }

    function members_list(){
        $data = $this->Reports_model->get_member_list();
        $html = $this->load->view('report_template/members_list', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

    function right_members_list(){
        $data = $this->Reports_model->get_right_member_list();
        $html = $this->load->view('report_template/right_members_list', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

    function left_members_list(){
        $data = $this->Reports_model->get_left_member_list();
        $html = $this->load->view('report_template/left_members_list', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

    function direct_referrals_today(){
        $data = $this->Reports_model->get_member_referrals();
        $html = $this->load->view('report_template/direct_referrals_today', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

    function total_pairings_today(){
        $data = $this->Reports_model->get_member_upline_today();
        $html = $this->load->view('report_template/total_pairings_today', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

    function withdrawals_today(){
        $data = $this->Reports_model->withdrawals_today();
        $html = $this->load->view('report_template/withdrawals_today', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

    function commissions_report(){
        $data = $this->Reports_model->get_member_commissions_uptodate();
        $html = $this->load->view('report_template/commissions_report', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

    function withdrawals_report(){
        $data = $this->Reports_model->get_member_withdrawals_uptodate();

        foreach ($data['report'] as $key => $v) {
        	$data['tot_amount'] += $v['w_amount'];
        }

        $html = $this->load->view('report_template/withdrawals_report', $data, true);
        $file = "";

        ini_set('memory_limit','32M');
             
        $this->load->library('m_pdf');
        $pdf = $this->m_pdf->load();
        $pdf->WriteHTML($html);
        $pdf->Output($file, 'I');
    }

}
?>