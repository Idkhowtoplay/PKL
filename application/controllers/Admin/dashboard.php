<?php

use SendGrid\username;

defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_dashboard');
        $this->load->helper('url');
        if ($this->session->userdata('MASUK') != TRUE) {
            redirect('auth/logout');
        }
        // if ($this->session->userdata('id_type') !== '1') {
        //     redirect('auth/blocked');
        // }
    }
    public function index()
    {
        $data['title'] = 'Dashboard';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['users'] = $this->M_dashboard->user_get();
        $data['berita'] = $this->M_dashboard->berita_get();
        $data['slide'] = $this->M_dashboard->slide_get();
        $data['sarana'] = $this->M_dashboard->sarana_get();
        $data['penduduk'] = $this->M_dashboard->penduduk_get();
        $data['penghargaan'] = $this->M_dashboard->penghargaan_get();
        $data['wisata'] = $this->M_dashboard->wisata_get();
        $data['surat'] = $this->M_dashboard->surat_get();
        $data['karyawan'] = $this->M_dashboard->karyawan_get();
        $data['lembaga'] = $this->M_dashboard->karyawan_getWhereLembaga();
        $data['perangkat'] = $this->M_dashboard->karyawan_getWherePerangkat();
        $data['dokumen'] = $this->M_dashboard->dokumen_get();
        $data['docsurat'] = $this->M_dashboard->dokumen_getWhereSurat();
        $data['peraturan'] = $this->M_dashboard->dokumen_getWherePeraturan();
        $data['pemerintah'] = $this->M_dashboard->dokumen_getWherePemerintah();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('template/footer');
    }

    public function myprofile()
    {
        $data['title'] = 'My Profile';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/myprofile', $data);
        $this->load->view('template/footer');
    }
}
