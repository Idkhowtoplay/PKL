<?php

defined('BASEPATH') or exit('No direct script access allowed');

class frontend extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_frontend');
    }
    public function index()
    {
        $data['title'] = 'Beranda';
        $data['slide'] = $this->M_frontend->slide();
        $data['sambutan'] = $this->M_frontend->sambutan();
        $data['berita'] = $this->M_frontend->berita();
        $data['penghargaan'] = $this->M_frontend->penghargaan();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/beranda/index', $data);
        $this->load->view('tampilan/template/footer');
    }
}
