<?php
defined('BASEPATH') or exit('No direct script access allowed');

class layanan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_layanan');
        if ($this->session->userdata('MASUK') != TRUE) {
            redirect('auth/logout');
        }
        if ($this->session->userdata('id_type') !== '1' && $this->session->userdata('id_type') !== '2' &&  $this->session->userdata('id_type') !== '4') {
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
        $this->load->view('layanan/surat/index', $data);
        $this->load->view('template/footer');
    }
    public function surat_edit()
    {
        // $data['title'] = 'Surat';
        // $data['user'] = $this->db->get_where('user', ['username' =>
        // $this->session->userdata('username')])->row_array();
        // $data['surat'] = $this->m_layanan->surat_get();

        $id = $this->input->post('id');

        $data = [
            'status'          => $this->input->post('status'),
            'nosurat'         => htmlspecialchars($this->input->post('nosurat', true)),
            'pesan'           => htmlspecialchars($this->input->post('pesan', true)),
            'tgl_pengambilan' => htmlspecialchars($this->input->post('tanggal', true)),
            'pengedit'        => htmlspecialchars($this->input->post('pengedit', true)),
            'date_modify'     => time()
        ];

        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('surat');

        $this->session->set_flashdata('surat', '<div class="alert alert-success" role="alert"> Surat berhasil diajukan!</div>');
        redirect('Admin/data/layanan/surat');
    }
}
