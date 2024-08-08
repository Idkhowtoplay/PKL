<?php
defined('BASEPATH') or exit('No direct script access allowed');

class approval extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_layanan');
        if ($this->session->userdata('MASUK') != TRUE) {
            redirect('auth/logout');
        }
        if ($this->session->userdata('id_type') !== '3') {
            redirect('auth/blocked');
        }
    }
    public function surat()
    {
        $data['title'] = 'Surat';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['surat'] = $this->m_layanan->surat_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('layanan/surat/approv', $data);
        $this->load->view('template/footer');
    }
    public function surat_ttd()
    {

        $id = $this->input->post('id');
        $pinttd = $this->input->post('pinttd');
        $username = $this->session->userdata('username');
        $user     = $this->db->get_where('user', ['username' => $username])->row_array();
        $spesimen = $this->db->get_where('spesimenttd', ['id_user' => $user['id_user']])->row_array();
        if ($spesimen) {
            if (password_verify($pinttd, $spesimen['pinttd'])) {

                $data = [
                    'status'          => $this->input->post('status'),
                    'validity'        => md5($id),
                    'date_modify'     => time()
                ];

                $this->db->set($data);
                $this->db->where('id', $id);
                $this->db->update('surat');
            } else {
                $this->session->set_flashdata('surat', '<div class="alert alert-danger" role="alert"> Pin anda salah!</div>');
                redirect('Admin/data/approval/surat');
            }
        } else {
            $this->session->set_flashdata('surat', '<div class="alert alert-danger" role="alert"> Data anda tidak ditemukan!</div>');
            redirect('Admin/data/approval/surat');
        }

        $this->session->set_flashdata('surat', '<div class="alert alert-success" role="alert"> Surat berhasil diajukan!</div>');
        redirect('Admin/data/approval/surat');
    }
}
