<?php
defined('BASEPATH') or exit('No direct script access allowed');

class data extends CI_Controller
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
    // Struktur
    public function struktur()
    {
        $data['title'] = 'Struktur';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['struktur'] = $this->db->get('struktur')->row();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/karyawan/struktur', $data);
        $this->load->view('template/footer');
    }
    public function struktur_edit($id)
    {
        $data['title'] = 'Struktur';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['struktur'] = $this->db->get('struktur')->row();

        $this->M_data->struktur($id);
        $this->session->set_flashdata('struktur', '<div class="alert alert-success" role="alert"> Karyawan Berhasil di ubah!</div>');
        redirect('Admin/data/data/struktur');
    }
    public function download_struk($id)
    {
        $data = $this->db->get_where('struktur', ['id' => $id])->row();
        force_download('assets/file/struktur/' . $data->gambar, NULL);
        redirect('Admin/data/data/struktur');
    }
    // karyawan
    public function karyawan()
    {
        $data['title'] = 'Data Karyawan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['karyawan'] = $this->M_data->karyawan_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/karyawan/index', $data);
        $this->load->view('template/footer');
    }
    public function karyawan_add()
    {
        $data['title'] = 'Tambah Data Karyawan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['perangkat'] = $this->db->get('perangkat_desa')->result_array();
        $data['lembaga'] = $this->db->get('lembaga_desa')->result_array();

        if ($this->input->post('jabatan_cek') == 'Perangkat Desa') {
            $this->form_validation->set_rules('nip', 'NIP', 'required|trim|numeric|is_unique[karyawan.nip]|max_length[18]|min_length[18]');
            $this->form_validation->set_rules('nama', 'Nama', 'required|trim|is_unique[karyawan.nama]');
            $this->form_validation->set_rules('email', 'Email', 'required|trim|is_unique[karyawan.email]');
            $this->form_validation->set_rules('kontak', 'Kontak', 'required|trim|is_unique[karyawan.no_telepon]');
            $this->form_validation->set_rules('gender', 'gender', 'required|trim');
        } else {
            $this->form_validation->set_rules('nama', 'Nama', 'required|trim|is_unique[karyawan.nama]');
            $this->form_validation->set_rules('email', 'Email', 'required|trim|is_unique[karyawan.email]');
            $this->form_validation->set_rules('kontak', 'Kontak', 'required|trim|is_unique[karyawan.no_telepon]');
            $this->form_validation->set_rules('gender', 'Gender', 'required|trim');
        }

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/karyawan/tambah', $data);
            $this->load->view('template/footer');
        } else {
            // var_dump($this->input->post('jabatan_cek'));
            // die;
            $this->M_data->karyawan_input();
            $this->session->set_flashdata('karyawan', '<div class="alert alert-success" role="alert"> Karyawan Berhasil di Tambahkan!</div>');
            redirect('Admin/data/data/karyawan');
        }
    }
    public function karyawan_edit($id)
    {
        $data['title'] = 'Edit Data Karyawan';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['karyawan'] = $this->db->get_where('karyawan', ['id' => $id])->result_array();
        $data['perangkat'] = $this->db->get('perangkat_desa')->result_array();
        $data['lembaga'] = $this->db->get('lembaga_desa')->result_array();

        if ($this->input->post('jabatan_cek') == 'Perangkat Desa') {
            $this->form_validation->set_rules('nip', 'NIP', 'required|trim|numeric|max_length[18]|min_length[18]');
            $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
            $this->form_validation->set_rules('email', 'email', 'required|trim');
            $this->form_validation->set_rules('kontak', 'kontak', 'required|trim');
            $this->form_validation->set_rules('gender', 'gender', 'required|trim');
        } else if ($this->input->post('jabatan_cek') == 'Lembaga Desa') {
            $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
            $this->form_validation->set_rules('email', 'email', 'required|trim');
            $this->form_validation->set_rules('kontak', 'kontak', 'required|trim');
            $this->form_validation->set_rules('gender', 'gender', 'required|trim');
        }
        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/karyawan/edit', $data);
            $this->load->view('template/footer');
        } else {
            // var_dump($this->input->post('jabatan_cek'));
            // die;
            $this->M_data->karyawan_edit($id);
            $this->session->set_flashdata('karyawan', '<div class="alert alert-success" role="alert"> Karyawan Berhasil di Ubah!</div>');
            redirect('Admin/data/data/karyawan');
        }
    }
    public function delete_karyawan($id, $gambar)
    {
        $this->M_data->karyawan_delete($id, $gambar);
        $this->session->set_flashdata('karyawan', '<div class="alert alert-success" role="alert"> Karyawan Berhasil di Hapus!</div>');
        redirect('Admin/data/data/karyawan');
    }
    // lembaga doc
    public function lembaga()
    {
        $data['title'] = 'Lembaga Desa';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['lembaga'] = $this->db->get('lembaga_desa')->result_array();

        $this->form_validation->set_rules('lembaga', 'lembaga', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/karyawan/lembaga', $data);
            $this->load->view('template/footer');
        } else {
            $this->db->insert('lembaga_desa', ['jabatan' => htmlspecialchars($this->input->post('lembaga'))]);
            $this->session->set_flashdata('lembaga', '<div class="alert alert-success" 
            role="alert">Kategori ditambahkan!</div>');
            redirect('Admin/data/data/lembaga');
        }
    }
    public function lembaga_edit($id)
    {
        $data['title'] = 'Lembaga Desa';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['lembaga'] = $this->db->get('lembaga_desa')->result_array();

        $this->form_validation->set_rules('lembaga', 'lembaga', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/karyawan/lembaga', $data);
            $this->load->view('template/footer');
        } else {
            $lembaga = htmlspecialchars($this->input->post('lembaga'));

            $this->db->where('id', $id);
            $this->db->set('jabatan', $lembaga);
            $this->db->update('lembaga_desa');

            $this->session->set_flashdata('lembaga', '<div class="alert alert-success" 
            role="alert">Kategori telah diubah!</div>');
            redirect('Admin/data/data/lembaga');
        }
    }
    public function lembaga_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('lembaga_desa');
        $this->session->set_flashdata('lembaga', '<div class="alert alert-success" 
            role="alert">Hapus Data Berhasil!</div>');
        redirect('Admin/data/data/lembaga');
    }
    public function perangkat()
    {
        $data['title'] = 'Perangkat Desa';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['perangkat'] = $this->db->get('perangkat_desa')->result_array();

        $this->form_validation->set_rules('perangkat', 'Perangkat', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/karyawan/perangkat', $data);
            $this->load->view('template/footer');
        } else {
            $this->db->insert('perangkat_desa', ['jabatan' => htmlspecialchars($this->input->post('perangkat'))]);
            $this->session->set_flashdata('perangkat', '<div class="alert alert-success" 
            role="alert">New Menu Added!</div>');
            redirect('Admin/data/data/perangkat');
        }
    }
    public function perangkat_edit($id)
    {
        $data['title'] = 'Perangkat Desa';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['perangkat'] = $this->db->get('perangkat_desa')->result_array();

        $this->form_validation->set_rules('perangkat', 'perangkat', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/karyawan/perangkat', $data);
            $this->load->view('template/footer');
        } else {
            $perangkat = htmlspecialchars($this->input->post('perangkat'));

            $this->db->where('id', $id);
            $this->db->set('jabatan', $perangkat);
            $this->db->update('perangkat_desa');

            $this->session->set_flashdata('perangkat', '<div class="alert alert-success" 
            role="alert">Changed Success!</div>');
            redirect('Admin/data/data/perangkat');
        }
    }
    public function perangkat_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('perangkat_desa');
        $this->session->set_flashdata('perangkat', '<div class="alert alert-success" 
            role="alert">Delete Success!</div>');
        redirect('Admin/data/data/perangkat');
    }
    // document
    public function dokumen()
    {
        $data['title'] = 'Dokumen';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['dokumen']    = $this->M_data->dokumen_get();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/doc/index', $data);
        $this->load->view('template/footer');
    }
    public function dokumen_add()
    {
        $data['title'] = 'Tambah Dokumen';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['kategori']   = $this->db->get('kategori_doc')->result_array();

        $this->form_validation->set_rules('nama', 'nama', 'required|trim');
        $this->form_validation->set_rules('kategori', 'kategori', 'required|trim');
        // $this->form_validation->set_rules('dokumen', 'dokumen', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/doc/tambah', $data);
            $this->load->view('template/footer');
        } else {
            $this->M_data->dokumen_input();
            $this->session->set_flashdata('dokumen', '<div class="alert alert-success" role="alert"> dokumen Berhasil di Tambahkan!</div>');
            redirect('Admin/data/data/dokumen');
        }
    }
    public function delete_dokumen($id, $dokumen)
    {
        $this->M_data->dokumen_delete($id, $dokumen);
        $this->session->set_flashdata('dokumen', '<div class="alert alert-success" role="alert"> dokumen Berhasil di Hapus!</div>');
        redirect('Admin/data/data/dokumen');
    }
    public function download_doc($id)
    {
        $data = $this->db->get_where('dokumen', ['id' => $id])->row();
        force_download('assets/file/doc/' . $data->dokumen, NULL);
        redirect('Admin/data/data/dokumen');
    }
    // kategori doc
    public function kategori()
    {
        $data['title'] = 'Kategori Dokumen';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['kategori'] = $this->db->get('kategori_doc')->result_array();

        $this->form_validation->set_rules('kategori', 'Kategori', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/doc/jenis', $data);
            $this->load->view('template/footer');
        } else {
            $this->db->insert('kategori_doc', ['kategori' => htmlspecialchars($this->input->post('kategori'))]);
            $this->session->set_flashdata('kategori', '<div class="alert alert-success" 
            role="alert">New Menu Added!</div>');
            redirect('Admin/data/data/kategori');
        }
    }
    public function kategori_edit($id)
    {
        $data['title'] = 'Kategori Dokumen';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['kategori'] = $this->db->get('kategori_doc')->result_array();

        $this->form_validation->set_rules('kategori', 'Kategori', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/doc/jenis', $data);
            $this->load->view('template/footer');
        } else {
            $kategori = htmlspecialchars($this->input->post('kategori'));

            $this->db->where('id', $id);
            $this->db->set('kategori', $kategori);
            $this->db->update('kategori_doc');

            $this->session->set_flashdata('kategori', '<div class="alert alert-success" 
            role="alert">Changed Success!</div>');
            redirect('Admin/data/data/kategori');
        }
    }
    public function kategori_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('kategori_doc');
        $this->session->set_flashdata('kategori', '<div class="alert alert-success" 
            role="alert">Delete Success!</div>');
        redirect('Admin/data/data/kategori');
    }
}
