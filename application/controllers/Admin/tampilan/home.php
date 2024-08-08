<?php
defined('BASEPATH') or exit('No direct script access allowed');

class home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_home');
        if ($this->session->userdata('MASUK') != TRUE) {
            redirect('auth/logout');
        }
        if ($this->session->userdata('id_type') !== '1' && $this->session->userdata('id_type') !== '2' && $this->session->userdata('id_type') !== '3') {
            redirect('auth/blocked');
        }
    }
    public function slide()
    {
        $data['title'] = 'Slide';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['slide'] = $this->M_home->slide_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('home/slide/index', $data);
        $this->load->view('template/footer');
    }
    public function slide_add()
    {
        $data['title'] = 'Tambah Slide';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('name', 'Name', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('home/slide/slide_input', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_home->slide_input($data);
            $this->session->set_flashdata('slide', '<div class="alert alert-success" role="alert"> Slide Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/home/slide');
        }
    }
    public function slide_edit($id)
    {
        $data['title'] = 'Edit Slide';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['slide'] = $this->db->get_where('slide', ['id' => $id])->result_array();

        $this->form_validation->set_rules('name', 'Name', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('home/slide/slide_edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_home->slide_edit($id);
            $this->session->set_flashdata('slide_edit', '<div class="alert alert-success" role="alert"> Slide Berhasil di Ubah!</div>');
            redirect('Admin/tampilan/home/slide');
        }
    }
    public function delete_slide($id, $gambar)
    {
        $this->M_home->slide_delete($id, $gambar);
        $this->session->set_flashdata('slide', '<div class="alert alert-success" role="alert"> Slide Berhasil di Hapus!</div>');
        redirect('Admin/tampilan/home/slide');
    }
    public function sambutan()
    {
        $data['title'] = 'Sambutan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['sambutan'] = $this->M_home->sambutan_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('home/sambutan/index', $data);
        $this->load->view('template/footer');
    }
    public function sambutan_add()
    {
        $data['title'] = 'Tambah Sambutan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('jabatan', 'Jabatan', 'required|trim');
        $this->form_validation->set_rules('judul', 'Judul', 'required|trim');
        $this->form_validation->set_rules('sambutan', 'Sambutan', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('home/sambutan/sambutan_input', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_home->sambutan_input($data);
            $this->session->set_flashdata('slide', '<div class="alert alert-success" role="alert"> Sambutan Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/home/sambutan');
        }
    }
    public function sambutan_edit($id)
    {
        $data['title'] = 'Edit Sambutan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['sambutan'] = $this->db->get_where('sambutan', ['id' => $id])->result_array();

        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('jabatan', 'Jabatan', 'required|trim');
        $this->form_validation->set_rules('judul', 'Judul', 'required|trim');
        $this->form_validation->set_rules('sambutan', 'Sambutan', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('home/sambutan/sambutan_edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_home->sambutan_edit($id);
            // var_dump($data);
            // die;
            $this->session->set_flashdata('sambutan', '<div class="alert alert-success" role="alert"> Sambutan Berhasil di Ubah!</div>');
            redirect('Admin/tampilan/home/sambutan');
        }
    }
    public function delete_sambutan($id)
    {
        $this->M_home->sambutan_delete($id);
        $this->session->set_flashdata('sambutan', '<div class="alert alert-success" role="alert"> Sambutan Berhasil di Hapus!</div>');
        redirect('Admin/tampilan/home/sambutan');
    }
    public function profile()
    {
        $data['title'] = 'Profile';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['profile'] = $this->M_home->profile_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('home/profile/index', $data);
        $this->load->view('template/footer');
    }
    public function profile_edit($id)
    {
        $data['title'] = 'Edit Profile';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['profile'] = $this->db->get_where('profile', ['id' => $id])->result_array();

        $this->form_validation->set_rules('visi', 'Visi', 'required|trim');
        $this->form_validation->set_rules('misi', 'Misi', 'required|trim');
        $this->form_validation->set_rules('tujuan', 'Tujuan', 'required|trim');
        $this->form_validation->set_rules('sejarah', 'Sejarah', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('home/profile/edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_home->profile_edit($id);
            // var_dump($data);
            // die;
            $this->session->set_flashdata('profile', '<div class="alert alert-success" role="alert"> profile Berhasil di Ubah!</div>');
            redirect('Admin/tampilan/home/profile');
        }
    }
}
