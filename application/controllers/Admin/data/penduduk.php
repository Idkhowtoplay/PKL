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

    public function tambah()
    {
        $data['title'] = 'Import Data';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();
        // Load tampilan template
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('data/penduduk/import', $data);
        $this->load->view('template/footer');
    }
    
    public function import_data()
    {

    $this->load->library('upload');
    $this->load->library('PHPExcel');

    $config['upload_path'] = './uploads/';
    $config['allowed_types'] = 'xlsx|xls';
    $config['max_size'] = '10000'; 

    $this->upload->initialize($config);

    if (!$this->upload->do_upload('file_excel')) {
        $error = $this->upload->display_errors();
        $this->session->set_flashdata('import_error', $error);
        redirect('Admin/data/penduduk');
        return; 
    }

    $file_data = $this->upload->data();
    $file_path = $file_data['full_path'];

    $allowed_mime_types = [
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 
        'application/vnd.ms-excel', 
    ];

    $file_mime = mime_content_type($file_path);

    if (!in_array($file_mime, $allowed_mime_types)) {
        $this->session->set_flashdata('import_error', 'File yang diunggah bukan file Excel.');
        unlink($file_path); 
        redirect('Admin/data/penduduk');
        return;
    }

    try {

        $object = PHPExcel_IOFactory::load($file_path);
    } catch (Exception $e) {
        $this->session->set_flashdata('import_error', 'Error loading file "' . $file_path . '": ' . $e->getMessage());
        redirect('Admin/data/penduduk');
        return;
    }
    
        $data = [];
    
        $this->load->model('m_pekerjaan');
        $pekerjaan_list = $this->m_pekerjaan->get_pekerjaan_list();

        $normalized_pekerjaan_list = array_change_key_case(array_column($pekerjaan_list, 'id', 'nama'), CASE_LOWER);
    
        foreach ($object->getWorksheetIterator() as $worksheet) {
            $highestRow = $worksheet->getHighestRow();
            $highestColumn = $worksheet->getHighestColumn();
    
            for ($row = 2; $row <= $highestRow; $row++) { 
                $nama_pekerjaan = strtolower(trim(htmlspecialchars($worksheet->getCellByColumnAndRow(13, $row)->getValue())));
                $pekerjaan_id = $normalized_pekerjaan_list[$nama_pekerjaan] ?? null;
    
                $rowData = [
                    'nama' => htmlspecialchars($worksheet->getCellByColumnAndRow(1, $row)->getValue()),
                    'jenis_kelamin' => htmlspecialchars($worksheet->getCellByColumnAndRow(2, $row)->getValue()),
                    'nik' => htmlspecialchars($worksheet->getCellByColumnAndRow(3, $row)->getValue()),
                    'no_kk' => htmlspecialchars($worksheet->getCellByColumnAndRow(4, $row)->getValue()),
                    'tanggal_lahir' => PHPExcel_Style_NumberFormat::toFormattedString($worksheet->getCellByColumnAndRow(5, $row)->getValue(), 'YYYY-MM-DD'),
                    'tempat_lahir' => htmlspecialchars($worksheet->getCellByColumnAndRow(6, $row)->getValue()),
                    'agama' => htmlspecialchars($worksheet->getCellByColumnAndRow(7, $row)->getValue()),
                    'rt' => htmlspecialchars($worksheet->getCellByColumnAndRow(8, $row)->getValue()),
                    'rw' => htmlspecialchars($worksheet->getCellByColumnAndRow(9, $row)->getValue()),
                    'alamat_spesifik' => htmlspecialchars($worksheet->getCellByColumnAndRow(10, $row)->getValue()),
                    'status_perkawinan' => htmlspecialchars($worksheet->getCellByColumnAndRow(11, $row)->getValue()),
                    'status_pendidikan' => htmlspecialchars($worksheet->getCellByColumnAndRow(12, $row)->getValue()),
                    'id_pekerjaan' => $pekerjaan_id, 
                ];
    
                if (!empty(array_filter($rowData))) {
                    $data[] = $rowData;
                }
            }
        }
    
        if (empty($data)) {
            $this->session->set_flashdata('import_error', 'Tidak ada data untuk di Import.');
            redirect('Admin/data/penduduk/tambah');
            return;
        }
    
        // Save data to the database
        $this->load->model('m_penduduk');
        if ($this->m_penduduk->insert_batch($data)) {
            $this->session->set_flashdata('import_success', 'Data berhasil diimpor');
            redirect('Admin/data/penduduk');
        } else {
            $this->session->set_flashdata('import_error', 'import berhasil cuma ada data yang kosong mohon cek ulang data yang sudah masuk.');
            redirect('Admin/data/penduduk');
        }
    }
    
}
