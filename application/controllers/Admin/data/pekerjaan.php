<?php
defined('BASEPATH') or exit('No direct script access allowed');

class pekerjaan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_data');
        if ($this->session->userdata('MASUK') != TRUE) {
            redirect('auth/logout');
        }
        if ($this->session->userdata('id_type') !== '1' && $this->session->userdata('id_type') !== '2' &&  $this->session->userdata('id_type') !== '4') {
            redirect('auth/blocked');
        }
    }

    public function index()
    {
        $data['title'] = 'Pekerjaan Penduduk';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['pekerjaan'] = $this->db->get('pekerjaan')->result();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/pekerjaan/index', $data);
        $this->load->view('template/footer');
    }

    public function tambah_aksi()
    {
        $nama_pekerjaan = $this->input->post('nama_pekerjaan', true);
        $data = [
            'nama_pekerjaan' => $nama_pekerjaan,
            'date_created'  => time(),
            'date_modify'   => time()
        ];
        $this->m_pekerjaan->insert_data($data);
        $this->session->set_flashdata('pekerjaan', 'berhasil ditambah');
        redirect('Admin/data/pekerjaan');
    }

    public function edit_aksi()
    {
        $id_pekerjaan = $this->input->post('id_pekerjaan', true);
        $nama_pekerjaan = $this->input->post('nama_pekerjaan', true);
        $data = [
            'nama_pekerjaan' => $nama_pekerjaan,
            'date_modify'   => time()
        ];
        $this->m_pekerjaan->update_data($id_pekerjaan, $data);
        $this->session->set_flashdata('pekerjaan', 'berhasil ditambah');
        redirect('Admin/data/pekerjaan');
    }

    public function delete_data($id_pekerjaan)
    {
        $this->m_penduduk->UpdatePekerjaanPenduduk($id_pekerjaan);
        $this->m_pekerjaan->delete_data($id_pekerjaan);
        $this->session->set_flashdata('pekerjaan', 'berhasil ditambah');
        redirect('Admin/data/pekerjaan');
    }
}
