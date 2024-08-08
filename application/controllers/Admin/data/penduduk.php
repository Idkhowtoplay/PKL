<?php
defined('BASEPATH') or exit('No direct script access allowed');

class penduduk extends CI_Controller
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
        $data['title'] = 'Data Penduduk';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['penduduk'] = $this->m_penduduk->get_data();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/penduduk/index', $data);
        $this->load->view('template/footer');
    }

    public function tambah_data()
    {
        $data['title'] = 'Tambah Data Penduduk';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['pekerjaan'] = $this->db->get('pekerjaan')->result();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/penduduk/tambah', $data);
        $this->load->view('template/footer');
    }

    public function tambah_aksi()
    {
        $this->form_validation->set_rules('nama', "Nama", 'required|trim');
        $this->form_validation->set_rules('jenis_kelamin', "Jenis Kelamin", 'required|trim');
        $this->form_validation->set_rules('nik', "NIK", 'required|trim|numeric|exact_length[16]|is_unique[penduduk.nik]');
        $this->form_validation->set_rules('no_kk', "No KK", 'required|trim|exact_length[16]|numeric');
        $this->form_validation->set_rules('tanggal_lahir', "Tanggal Lahir", 'required|trim');
        $this->form_validation->set_rules('tempat_lahir', "Tempat Lahir", 'required|trim');
        $this->form_validation->set_rules('agama', "Agama", 'required|trim');
        $this->form_validation->set_rules('rt', "RT", 'required|trim|numeric');
        $this->form_validation->set_rules('rw', "RW", 'required|trim|numeric');
        $this->form_validation->set_rules('alamat_spesifik', "Alamat Spesifik", 'required|trim');
        $this->form_validation->set_rules('status_perkawinan', "Status Perkawinan", 'required|trim');
        $this->form_validation->set_rules('status_pendidikan', "Status Pendidikan", 'required|trim');
        $this->form_validation->set_rules('id_pekerjaan', "Pekerjaan", 'required|trim');
        $this->form_validation->set_message('required', '%s masih kosong, silahkan isi.');
        $this->form_validation->set_message('exact_length', '%s jumlah karakter kurang tepat, harus 16 karakter.');
        $this->form_validation->set_message('is_unique', '%s sudah ada, silahkan ganti.');
        $this->form_validation->set_message('numeric', '%s bukan angka, silahkan ganti.');

        if ($this->form_validation->run()  == FALSE) {
            $this->tambah_data();
        } else {
            $data = [
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'jenis_kelamin' => htmlspecialchars($this->input->post('jenis_kelamin', true)),
                'nik' => htmlspecialchars($this->input->post('nik', true)),
                'no_kk' => htmlspecialchars($this->input->post('no_kk', true)),
                'tanggal_lahir' => htmlspecialchars($this->input->post('tanggal_lahir', true)),
                'tempat_lahir' => htmlspecialchars($this->input->post('tempat_lahir', true)),
                'agama' => htmlspecialchars($this->input->post('agama', true)),
                'rt' => htmlspecialchars($this->input->post('rt', true)),
                'rw' => htmlspecialchars($this->input->post('rw', true)),
                'alamat_spesifik' => htmlspecialchars($this->input->post('alamat_spesifik', true)),
                'status_perkawinan' => htmlspecialchars($this->input->post('status_perkawinan', true)),
                'status_pendidikan' => htmlspecialchars($this->input->post('status_pendidikan', true)),
                'id_pekerjaan' => htmlspecialchars($this->input->post('id_pekerjaan', true)),
                'date_created'  => time(),
                'date_modify'   => time()
            ];

            $this->m_penduduk->insert_data($data);
            $this->session->set_flashdata('penduduk', 'berhasil ditambah');
            redirect('Admin/data/penduduk');
        }
    }

    public function edit_data($id)
    {
        $this->form_validation->set_rules('nama', "Nama", 'required|trim');
        $this->form_validation->set_rules('jenis_kelamin', "Jenis Kelamin", 'required|trim');
        $this->form_validation->set_rules('nik', "NIK", 'required|trim|numeric|exact_length[16]|callback_nik_check');
        $this->form_validation->set_rules('no_kk', "No KK", 'required|trim|exact_length[16]|numeric');
        $this->form_validation->set_rules('tanggal_lahir', "Tanggal Lahir", 'required|trim');
        $this->form_validation->set_rules('tempat_lahir', "Tempat Lahir", 'required|trim');
        $this->form_validation->set_rules('agama', "Agama", 'required|trim');
        $this->form_validation->set_rules('rt', "RT", 'required|trim|numeric');
        $this->form_validation->set_rules('rw', "RW", 'required|trim|numeric');
        $this->form_validation->set_rules('alamat_spesifik', "Alamat Spesifik", 'required|trim');
        $this->form_validation->set_rules('status_perkawinan', "Status Perkawinan", 'required|trim');
        $this->form_validation->set_rules('status_pendidikan', "Status Pendidikan", 'required|trim');
        $this->form_validation->set_rules('id_pekerjaan', "Pekerjaan", 'required|trim');
        $this->form_validation->set_message('required', '%s masih kosong, silahkan isi.');
        $this->form_validation->set_message('exact_length', '%s jumlah karakter kurang tepat, harus 16 karakter.');
        $this->form_validation->set_message('is_unique', '%s sudah ada, silahkan ganti.');
        $this->form_validation->set_message('numeric', '%s bukan angka, silahkan ganti.');

        if ($this->form_validation->run()  == FALSE) {
            $data['title'] = 'Edit Data Penduduk';
            $data['user'] = $this->db->get_where('user', ['username' =>
            $this->session->userdata('username')])->row_array();
            $data['pekerjaan'] = $this->db->get('pekerjaan')->result();
            $data['penduduk'] = $this->db->get_where('penduduk', ['id' => $id])->row();

            // var_dump($data['penduduk']); die;

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('data/penduduk/edit', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'jenis_kelamin' => htmlspecialchars($this->input->post('jenis_kelamin', true)),
                'nik' => htmlspecialchars($this->input->post('nik', true)),
                'no_kk' => htmlspecialchars($this->input->post('no_kk', true)),
                'tanggal_lahir' => htmlspecialchars($this->input->post('tanggal_lahir', true)),
                'tempat_lahir' => htmlspecialchars($this->input->post('tempat_lahir', true)),
                'agama' => htmlspecialchars($this->input->post('agama', true)),
                'rt' => htmlspecialchars($this->input->post('rt', true)),
                'rw' => htmlspecialchars($this->input->post('rw', true)),
                'alamat_spesifik' => htmlspecialchars($this->input->post('alamat_spesifik', true)),
                'status_perkawinan' => htmlspecialchars($this->input->post('status_perkawinan', true)),
                'status_pendidikan' => htmlspecialchars($this->input->post('status_pendidikan', true)),
                'id_pekerjaan' => htmlspecialchars($this->input->post('id_pekerjaan', true)),
                'date_modify'   => time()
            ];

            $this->m_penduduk->update_data($id, $data);
            $this->session->set_flashdata('penduduk', 'berhasil diubah');
            redirect('Admin/data/penduduk');
        }
    }

    public function pendudukSesuaiKK($no_kk)
    {
        $data['title'] = 'Penduduk Sesuai No KK';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        $data['penduduk'] = $this->m_penduduk->getDataByNoKK($no_kk);

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/penduduk/pendudukSesuaiKK', $data);
        $this->load->view('template/footer');
    }

    public function delete_data($id)
    {
        $this->m_penduduk->delete_data($id);
        $this->session->set_flashdata('penduduk', 'berhasil dihapus');
        redirect('Admin/data/penduduk');
    }

    public function nik_check()
    {
        $id = $this->input->post('id', TRUE);
        $nik = $this->input->post('nik', TRUE);
        $query = $this->db->query("SELECT * FROM penduduk WHERE nik = '$nik' AND id != '$id' ");
        if ($query->num_rows() > 0) {
            $this->form_validation->set_message('nik_check', '%s sudah dipakai, silahkan ganti');
            return FALSE;
        } else {
            return TRUE;
        }
    }
}
