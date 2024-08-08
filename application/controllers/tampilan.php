<?php

defined('BASEPATH') or exit('No direct script access allowed');

class tampilan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_frontend');
    }
    public function index()
    {
        $data['title'] = 'Beranda';
        $this->load->model('M_dashboard');
        $data['slide'] = $this->M_frontend->slide();
        $data['sambutan'] = $this->M_frontend->sambutan();
        $data['berita'] = $this->M_frontend->berita();
        $data['penghargaan'] = $this->M_frontend->penghargaan();
        $data['video'] = $this->db->get('profile')->row_array();
        $data['cowok'] = $this->m_dashboard->penduduk_getWhereCowok();
        $data['cewek'] = $this->m_dashboard->penduduk_getWhereCewek();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/beranda', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/index', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function profil()
    {
        $data['title'] = 'Profil';
        $data['header'] = 'profil.png';
        $data['profile'] = $this->M_frontend->profil_get();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/profil', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function wisata()
    {
        $data['title'] = 'wisata';
        $data['header'] = 'wisata.png';
        $data['wisata'] = $this->db->get('wisata')->result_array();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/wisata', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function detail_wisata($id)
    {
        $data['title'] = 'wisata';
        $data['header'] = 'wisata.png';
        $data['wisata'] = $this->db->get_where('wisata', ['id' => $id])->result_array();
        $data['wisataall'] = $this->m_frontend->wisata();
        // $data['wisata'] = $this->m_frontend->wisata_getWhere()->row_array();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/wisata_detail', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function usaha()
    {
        $data['title'] = 'Belanja';
        $data['header'] = 'usaha.png';
        $data['usaha'] = $this->m_frontend->usaha();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/belanja', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function penghargaan()
    {
        $data['title'] = 'Penghargaan';
        $data['header'] = 'penghargaan.png';
        $data['penghargaan'] = $this->db->get('penghargaan')->result_array();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/penghargaan', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function detail_penghargaan($id)
    {
        $data['title'] = 'penghargaan';
        $data['header'] = 'penghargaan.png';
        $data['penghargaan'] = $this->db->get_where('penghargaan', ['id' => $id])->result_array();
        $data['penghargaanall'] = $this->m_frontend->penghargaan();
        // $data['wisata'] = $this->m_frontend->wisata_getWhere()->row_array();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/detail_penghargaan', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function berita()
    {
        $data['title'] = 'Berita';
        $data['header'] = 'berita.png';
        $data['berita'] = $this->db->get('berita')->result_array();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/berita', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function detail_berita($id)
    {
        $data['title'] = 'Berita';
        $data['header'] = 'berita.png';
        $data['berita'] = $this->db->get_where('berita', ['id' => $id])->result_array();
        $data['beritaall'] = $this->m_frontend->berita();
        // $data['berita'] = $this->m_frontend->berita_getWhere()->row_array();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/detail_berita', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function panduan()
    {
        $data['title'] = 'Panduan';
        $data['header'] = 'panduan.png';

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/panduan', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function struktur()
    {
        $data['title'] = 'Struktur';
        $data['header'] = 'struktur.png';
        $data['struktur'] = $this->M_frontend->struktur_get();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/struktur', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function karyawan()
    {
        $data['title'] = 'karyawan';
        $data['header'] = 'karyawan.png';
        $data['karyawan'] = $this->M_frontend->karyawan_getWherePerangkat();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/pegawai', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function geografis()
    {
        $data['title'] = 'Geografis';
        $data['header'] = 'geografis.png';
        $data['document'] = $this->M_frontend->dokumen_get();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/geografis', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function infografis()
    {
        $data['title'] = 'Infografis';
        $data['header'] = 'infografis.png';
        $this->load->model('M_dashboard');
        $pekerjaan = $this->db->get_where('pekerjaan')->result_array();
        $pendidikan = $this->db->get_where('kategori_sarana', ['kategori' => 'pendidikan'])->result_array();
        $kesehatan = $this->db->get_where('kategori_sarana', ['kategori' => 'Kesehatan'])->result_array();

        foreach ($kesehatan as $ket) {
            $kat = $ket['nama_kategori'];
            $ini = $ket['inisial'];
            $data[$ini] = $this->m_dashboard->kesehatan($kat);
        }

        foreach ($pendidikan as $ket) {
            $kat = $ket['nama_kategori'];
            $ini = $ket['inisial'];
            $data[$ini] = $this->m_dashboard->pendidikan($kat);
        }

        foreach ($pekerjaan as $ket) {
            $perk = $ket['nama_pekerjaan'];
            $data[$perk] = $this->m_dashboard->pekerjaan($perk);
        }
        
        $data['cowok'] = $this->m_dashboard->penduduk_getWhereCowok();
        $data['cewek'] = $this->m_dashboard->penduduk_getWhereCewek();
        $data['islam'] = $this->m_dashboard->penduduk_getWhereAgamaIslam();
        $data['Kristen'] = $this->m_dashboard->penduduk_getWhereAgamaKristen();
        $data['Hindu'] = $this->m_dashboard->penduduk_getWhereAgamaHindu();
        $data['Buddha'] = $this->m_dashboard->penduduk_getWhereAgamaBuddha();
        $data['Khonghucu'] = $this->m_dashboard->penduduk_getWhereAgamaKhonghucu();
        $data['BelumSekolah'] = $this->m_dashboard->penduduk_getWherePendidikanBelumSekolah();
        $data['TamatSD'] = $this->m_dashboard->penduduk_getWherePendidikanTamatSD();
        $data['SLTP'] = $this->m_dashboard->penduduk_getWherePendidikanSLTP();
        $data['SLTA'] = $this->m_dashboard->penduduk_getWherePendidikanSLTA();
        $data['Diploma'] = $this->m_dashboard->penduduk_getWherePendidikanDiploma();
        $data['StrataI'] = $this->m_dashboard->penduduk_getWherePendidikanSI();
        $data['StrataII'] = $this->m_dashboard->penduduk_getWherePendidikanSII();
        $data['StrataIII'] = $this->m_dashboard->penduduk_getWherePendidikanSIII();
        $data['StrataIII'] = $this->m_dashboard->penduduk_getWherePendidikanSIII();
        $data['IRT'] = $this->m_dashboard->penduduk_getWherePekerjaanIRT();
        $data['BelumBekerja'] = $this->m_dashboard->pekerjaan_getWhereBelumBekerja();
        $data['Pelajar'] = $this->m_dashboard->pekerjaan_getWherePelajar();
        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/infografis', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function layanan()
    {
        $data['title'] = 'Layanan';
        $data['header'] = 'layanan.png';
        $data['document'] = $this->M_frontend->dokumen_get();

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/template/topbar', $data);
        $this->load->view('tampilan/layanan', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function surat($id)
    {
        $data['title'] = 'Pengajuan Surat';
        $data['document'] = $this->db->get_where('dokumen', ['id' => $id])->row_array();

        $this->form_validation->set_rules('nik', 'NIK', 'required|trim|numeric|exact_length[16]');
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tampilan/template/header', $data);
            $this->load->view('tampilan/template/navbar', $data);
            $this->load->view('tampilan/form_layanan', $data);
            $this->load->view('tampilan/template/footer');
            // redirect('tampilan/surat');
        } else {
            $nik       = htmlspecialchars($this->input->post('nik', true));
            $nami      = htmlspecialchars($this->input->post('nama', true));
            $tgl_lahir = htmlspecialchars($this->input->post('tanggal_lahir', true));

            $nk = $this->M_frontend->dokumen_get_NoKK($nik)->row_array();

            $kk = $nk['no_kk'];
            $nama = $nk['nama'];

            $dP  = $this->M_frontend->dokumen_get_dataPenduduk($nik, $nami, $tgl_lahir)->num_rows();
            // var_dump($dP);
            // die;

            if ($dP > 0) {
                $this->M_frontend->surat_input($kk, $nama);
                // die;
                $this->session->set_flashdata('pengajuan', 'tambah-berhasil');
                redirect('tampilan/surat/' . $id);
            } else {
                $this->session->set_flashdata('pengajuan', 'gagal');
                redirect('tampilan/surat/' . $id);
            }
        }
    }
    public function cek_pengajuan()
    {
        $data['title'] = 'Cek Pengajuan Surat';

        $this->load->view('tampilan/template/header', $data);
        $this->load->view('tampilan/template/navbar', $data);
        $this->load->view('tampilan/cek_pengajuan', $data);
        $this->load->view('tampilan/template/footer');
    }
    public function pengajuan()
    {
        $nik       = htmlspecialchars($this->input->post('nik', true));
        $nami      = htmlspecialchars($this->input->post('nama', true));
        $tgl_lahir = htmlspecialchars($this->input->post('tanggal_lahir', true));

        $dP  = $this->M_frontend->dokumen_get_dataPenduduk($nik, $nami, $tgl_lahir)->num_rows();

        if ($dP > 0) {

            $data['title'] = 'Pengajuan Surat';
            $data['profile'] = $this->M_frontend->get_WherePenduduk($nik, $nami, $tgl_lahir);
            $data['surat'] = $this->M_frontend->get_WhereSurat($nik, $nami, $tgl_lahir);
            $data['pending'] = $this->M_frontend->get_WhereSuratPending($nik);
            $data['tolak'] = $this->M_frontend->get_WhereSuratTolak($nik);
            $data['setuju'] = $this->M_frontend->get_WhereSuratSetuju($nik);


            $this->load->view('tampilan/template/header', $data);
            $this->load->view('tampilan/template/navbar', $data);
            $this->load->view('tampilan/pengajuan', $data);
            $this->load->view('tampilan/template/footer');
            // $this->session->set_flashdata('pengajuan', 'tambah-berhasil');
            // redirect('tampilan/cek_pengajuan');
        } else {

            $this->session->set_flashdata('cek_pengajuan', 'gagal');
            redirect('tampilan/cek_pengajuan');
        }
    }
    public function validsurat($id)
    {

        $surat     = $this->M_frontend->getSuratValid($id)->row_array();

        if ($surat > 0) {

            $data['title'] = 'Validitas Surat';
            $data['surat'] = $surat;

            $this->load->view('tampilan/template/header', $data);
            $this->load->view('tampilan/template/navbar', $data);
            $this->load->view('tampilan/validsurat', $data);
            $this->load->view('tampilan/template/footer');
            // $this->session->set_flashdata('pengajuan', 'tambah-berhasil');
            // redirect('tampilan/cek_pengajuan');
        } else {

            $this->session->set_flashdata('cek_pengajuan', 'gagal');
            redirect('tampilan/cek_pengajuan');
        }
    }
}
