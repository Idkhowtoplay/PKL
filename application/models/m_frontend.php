<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_frontend extends CI_Model
{
    function slide()
    {
        return $this->db->get('slide')->result_array();
    }
    function sambutan()
    {
        return $this->db->get_where('sambutan', ['id' => 1])->row_array();
    }
    function berita()
    {
        $query = "SELECT * FROM `berita` ORDER BY `date_modify`DESC LIMIT 3";
        return $this->db->query($query)->result_array();
    }
    function penghargaan()
    {
        $query = "SELECT * FROM `penghargaan` ORDER BY `date_modify`DESC LIMIT 3";

        return $this->db->query($query)->result_array();
    }
    function wisata()
    {
        $query = "SELECT * FROM `wisata` ORDER BY `date_modify`DESC LIMIT 3";

        return $this->db->query($query)->result_array();
    }
    function usaha()
    {
        $query = "SELECT * FROM `usaha` ORDER BY `date_modify`DESC";

        return $this->db->query($query)->result_array();
    }
    // layanan
    function dokumen_get()
    {
        $query = "SELECT * FROM `dokumen` WHERE `kategori_id` = 1 ORDER BY nama ASC";
        return $this->db->query($query)->result_array();
    }
    function dokumen_get_NoKK($nik)
    {
        $query = "SELECT * FROM `penduduk`
                   WHERE `nik`= '$nik'";
        return $this->db->query($query);
    }
    function get_WherePenduduk($nik, $nami, $tgl_lahir)
    {
        $query = "SELECT * FROM `penduduk`
                  WHERE `nik`= '$nik' AND `nama` = '$nami' AND `tanggal_lahir` = '$tgl_lahir'";
        return $this->db->query($query)->row_array();
    }
    function get_WhereSurat($nik, $nami, $tgl_lahir)
    {
        $query = "SELECT * FROM `surat`
                  WHERE `nik`= '$nik' AND `nama` = '$nami' AND `tgl_lahir` = '$tgl_lahir'";
        return $this->db->query($query)->result_array();
    }
    function get_WhereSuratSetuju($nik)
    {
        $query = "SELECT * FROM `surat`
                  WHERE `nik`= '$nik' AND `status` = '1'";
        return $this->db->query($query)->num_rows();
    }
    function get_WhereSuratPending($nik)
    {
        $query = "SELECT * FROM `surat`
                  WHERE `nik`= '$nik' AND `status` = '2'";
        return $this->db->query($query)->num_rows();
    }
    function get_WhereSuratTolak($nik)
    {
        $query = "SELECT * FROM `surat`
                  WHERE `nik`= '$nik' AND `status` = '0'";
        return $this->db->query($query)->num_rows();
    }
    function dokumen_get_dataPenduduk($nik, $nami, $tgl_lahir)
    {
        $query = "SELECT `nik`,`nama`,`tanggal_lahir` FROM `penduduk`
                   WHERE `nik`= '$nik' AND `nama` = '$nami' AND `tanggal_lahir` = '$tgl_lahir'";
        return $this->db->query($query);
    }
    function karyawan_getWherePerangkat()
    {
        return $this->db->get_where('karyawan', ['kategori_jabatan' => 'Perangkat Desa'])->result_array();
    }
    function profil_get()
    {
        return $this->db->get('profile')->row_array();
    }
    function struktur_get()
    {
        return $this->db->get('struktur')->row_array();
    }
    function berita_getWhere()
    {
        $query = "SELECT * FROM `berita` 
        WHERE `id` = 3 ";
        return $this->db->query($query);
    }
    function getSuratValid($validity)
    {
        $query = "SELECT *, dokumen.nama as jenis_dok, surat.nama as pengaju FROM `surat` join dokumen on (dokumen.id=surat.surat)
        WHERE `validity` = '$validity' ";
        return $this->db->query($query);
    }
    function surat_input($kk, $nama)
    {
        // upload KK
        $upload_kk = $_FILES['kk']['name'];

        if ($upload_kk) {
            $config['allowed_types'] = 'pdf';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/file/surat';
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('kk')) {
                $new_kk = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        // upload kk
        $upload_ktp = $_FILES['ktp']['name'];

        if ($upload_ktp) {
            $ktp['allowed_types'] = 'pdf';
            $ktp['max_size']      = '10240';
            $ktp['upload_path']   = './assets/file/surat';
            $ktp['encrypt_name']  = true;

            $this->load->library('upload', $ktp);

            if ($this->upload->do_upload('ktp')) {
                $new_ktp = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        // upload pengantar
        $upload_pengantar = $_FILES['pengantar']['name'];

        if ($upload_pengantar) {
            $pengantar['allowed_types'] = 'pdf';
            $pengantar['max_size']      = '10240';
            $pengantar['upload_path']   = './assets/file/surat';
            $pengantar['encrypt_name']  = true;

            $this->load->library('upload', $pengantar);

            if ($this->upload->do_upload('pengantar')) {
                $new_pengantar = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'no_kk'             => htmlspecialchars($kk),
            'nik'               => htmlspecialchars($this->input->post('nik', true)),
            'surat'             => htmlspecialchars($this->input->post('surat', true)),
            'nama'              => htmlspecialchars($nama),
            'tgl_lahir'         => htmlspecialchars($this->input->post('tanggal_lahir', true)),
            'rt'                => htmlspecialchars($this->input->post('rt', true)),
            'rw'                => htmlspecialchars($this->input->post('rw', true)),
            'catatan'           => htmlspecialchars($this->input->post('catatan', true)),
            'ktp'               => $new_ktp,
            'kk'                => $new_kk,
            'surat_pengantar'   => $new_pengantar,
            'status'            => 2,
            'date_created'      => time(),
            'date_modify'       => time()
        ];
        // var_dump($data);
        // die;
        $this->db->insert('surat', $data);
    }
}
