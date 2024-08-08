<?php
defined('BASEPATH') or exit('No direct script access allowed');

class info extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_info');
        if ($this->session->userdata('MASUK') != TRUE) {
            redirect('auth/blocked');
        }
        if ($this->session->userdata('id_type') !== '1' && $this->session->userdata('id_type') !== '2' &&  $this->session->userdata('id_type') !== '4') {
            redirect('auth/logout');
        }
    }
    // berita
    public function berita()
    {
        $data['title'] = 'Berita';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['berita'] = $this->M_info->berita_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('info/berita/index', $data);
        $this->load->view('template/footer');
    }
    public function berita_add()
    {
        $data['title'] = 'Tambah Berita';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('judul', 'Judul', 'required|trim');
        $this->form_validation->set_rules('konten', 'Konten', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/berita/tambah', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->berita_input();
            $this->session->set_flashdata('berita', '<div class="alert alert-success" role="alert"> Slide Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/berita');
        }
    }
    public function berita_edit($id)
    {
        $data['title'] = 'Edit Berita';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['berita'] = $this->db->get_where('berita', ['id' => $id])->result_array();

        $this->form_validation->set_rules('judul', 'Judul', 'required|trim');
        $this->form_validation->set_rules('konten', 'Konten', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/berita/edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->berita_edit($id);
            $this->session->set_flashdata('berita', '<div class="alert alert-success" role="alert"> Berita Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/berita');
        }
    }
    public function delete_berita($id, $gambar)
    {
        $this->M_info->berita_delete($id, $gambar);
        $this->session->set_flashdata('berita', '<div class="alert alert-success" role="alert"> Berita Berhasil di Hapus!</div>');
        redirect('Admin/tampilan/info/berita');
    }
    // penghargaan
    public function penghargaan()
    {
        $data['title'] = 'Penghargaan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['penghargaan'] = $this->M_info->penghargaan_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('info/penghargaan/index', $data);
        $this->load->view('template/footer');
    }
    public function penghargaan_add()
    {
        $data['title'] = 'Tambah Penghargaan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('info', 'Info', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/penghargaan/tambah', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->penghargaan_input();
            // var_dump($data);

            $this->session->set_flashdata('penghargaan', '<div class="alert alert-success" role="alert"> Penghargaan Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/penghargaan');
        }
    }
    public function penghargaan_edit($id)
    {
        $data['title'] = 'Edit penghargaan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['penghargaan'] = $this->db->get_where('penghargaan', ['id' => $id])->result_array();

        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('info', 'Info', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/penghargaan/edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->penghargaan_edit($id);
            $this->session->set_flashdata('penghargaan', '<div class="alert alert-success" role="alert"> penghargaan Berhasil di Ubah!</div>');
            redirect('Admin/tampilan/info/penghargaan');
        }
    }
    public function delete_penghargaan($id, $gambar)
    {
        $this->M_info->penghargaan_delete($id, $gambar);
        $this->session->set_flashdata('penghargaan', '<div class="alert alert-success" role="alert"> penghargaan Berhasil di Hapus!</div>');
        redirect('Admin/tampilan/info/penghargaan');
    }
    //usaha
    public function usaha()
    {
        $data['title'] = 'Usaha';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['usaha'] = $this->M_info->usaha_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('info/usaha/index', $data);
        $this->load->view('template/footer');
    }
    public function usaha_add()
    {
        $data['title'] = 'Tambah usaha';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim|is_unique[usaha.nama_toko]');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/usaha/tambah', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->usaha_input();
            // var_dump($data);
            // die;
            $this->session->set_flashdata('usaha', '<div class="alert alert-success" role="alert"> usaha Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/usaha');
        }
    }
    public function usaha_edit($id)
    {
        $data['title'] = 'Edit usaha';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['usaha'] = $this->db->get_where('usaha', ['id' => $id])->result_array();

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('deskripsi', 'deskripsi', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/usaha/edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->usaha_edit($id);
            $this->session->set_flashdata('usaha', '<div class="alert alert-success" role="alert"> usaha Berhasil di Ubah!</div>');
            redirect('Admin/tampilan/info/usaha');
        }
    }
    public function delete_usaha($id, $gambar)
    {
        $this->M_info->usaha_delete($id, $gambar);
        $this->session->set_flashdata('usaha', '<div class="alert alert-success" role="alert"> usaha Berhasil di Hapus!</div>');
        redirect('Admin/tampilan/info/usaha');
    }
    // wisata
    public function wisata()
    {
        $data['title'] = 'Wisata';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['wisata'] = $this->M_info->wisata_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('info/wisata/index', $data);
        $this->load->view('template/footer');
    }
    public function wisata_add()
    {
        $data['title'] = 'Tambah Wisata';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('nama', 'nama', 'required|trim');
        $this->form_validation->set_rules('konten', 'Konten', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/wisata/tambah', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->wisata_input();
            $this->session->set_flashdata('wisata', '<div class="alert alert-success" role="alert"> Wisata Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/wisata');
        }
    }
    public function wisata_edit($id)
    {
        $data['title'] = 'Edit Wisata';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['wisata'] = $this->db->get_where('wisata', ['id' => $id])->result_array();

        $this->form_validation->set_rules('nama', 'nama', 'required|trim');
        $this->form_validation->set_rules('konten', 'Konten', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/wisata/edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->wisata_edit($id);
            $this->session->set_flashdata('wisata', '<div class="alert alert-success" role="alert"> Wisata Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/wisata');
        }
    }
    public function delete_wisata($id, $gambar)
    {
        $this->M_info->wisata_delete($id, $gambar);
        $this->session->set_flashdata('wisata', '<div class="alert alert-success" role="alert"> Wisata Berhasil di Hapus!</div>');
        redirect('Admin/tampilan/info/wisata');
    }
    // sarana
    public function sarana()
    {
        $data['title'] = 'Sarana';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['sarana'] = $this->M_info->sarana_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('info/sarana/index', $data);
        $this->load->view('template/footer');
    }
    public function sarana_add()
    {
        $data['title'] = 'Tambah Sarana';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        // $data['sarana'] = $this->M_info->sarana_get();
        $data['kategori'] = $this->db->get('kategori_sarana')->result_array();

        $this->form_validation->set_rules('nama', 'nama', 'required|trim|is_unique[sarana.nama_spesifik]');
        $this->form_validation->set_rules('detail', 'detail', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/sarana/tambah', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->sarana_input();
            $this->session->set_flashdata('sarana', '<div class="alert alert-success" role="alert"> sarana Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/sarana');
        }
    }
    public function sarana_edit($id)
    {
        $data['title'] = 'Edit Sarana';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['sarana'] = $this->db->get_where('sarana', ['id' => $id])->result_array();

        $this->form_validation->set_rules('nama', 'nama', 'required|trim|is_unique[sarana.nama_spesifik]');
        $this->form_validation->set_rules('detail', 'detail', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/sarana/edit', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_info->sarana_edit($id);
            $this->session->set_flashdata('sarana', '<div class="alert alert-success" role="alert"> sarana Berhasil di Tambahkan!</div>');
            redirect('Admin/tampilan/info/sarana');
        }
    }
    public function delete_sarana($id, $gambar)
    {
        $this->M_info->sarana_delete($id, $gambar);
        $this->session->set_flashdata('sarana', '<div class="alert alert-success" role="alert"> sarana Berhasil di Hapus!</div>');
        redirect('Admin/tampilan/info/sarana');
    }
    // sarana kategori
    public function kategori()
    {
        $data['title'] = 'Kategori Sarana';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['kategori'] = $this->db->get('kategori_sarana')->result_array();

        $this->form_validation->set_rules('nama', 'nama', 'required|trim|is_unique[kategori_sarana.nama_kategori]');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required|trim');
        $this->form_validation->set_rules('inisial', 'Inisial', 'required|trim|is_unique[kategori_sarana.inisial]');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/sarana/kategori', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'nama_kategori' => htmlspecialchars($this->input->post('nama')),
                'inisial'   => htmlspecialchars($this->input->post('inisial')),
                'kategori'  => htmlspecialchars($this->input->post('kategori'))
            ];

            $this->db->insert('kategori_sarana', $data);
            $this->session->set_flashdata('kategori sarana', '<div class="alert alert-success" 
            role="alert">New Menu Added!</div>');
            redirect('Admin/tampilan/info/kategori');
        }
    }
    public function kategori_edit($id)
    {
        $data['title'] = 'Kategori Sarana';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['kategori'] = $this->db->get('kategori_sarana')->result_array();

        $this->form_validation->set_rules('nama', 'nama', 'required|trim');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required|trim');
        $this->form_validation->set_rules('inisial', 'Inisial', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('info/sarana/kategori', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'nama_kategori' => htmlspecialchars($this->input->post('nama')),
                'inisial' => htmlspecialchars($this->input->post('inisial')),
                'kategori'  => htmlspecialchars($this->input->post('kategori'))
            ];
            // var_dump($data);
            // die;
            $this->db->where('id', $id);
            $this->db->set($data);
            $this->db->update('kategori_sarana');

            $this->session->set_flashdata('kategori sarana', '<div class="alert alert-success" 
            role="alert">Changed Success!</div>');
            redirect('Admin/tampilan/info/kategori');
        }
    }
    public function kategori_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('kategori_sarana');
        $this->session->set_flashdata('kategori sarana', '<div class="alert alert-success" 
            role="alert">Delete Success!</div>');
        redirect('Admin/tampilan/info/kategori');
    }
}
