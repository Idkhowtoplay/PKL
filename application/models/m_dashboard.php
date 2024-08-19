<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_dashboard extends CI_Model
{
    function user_get()
    {
        return $this->db->get_where('user', ['active' => '1'])->num_rows();
    }
    function berita_get()
    {
        return $this->db->get_where('berita')->num_rows();
    }
    function sarana_get()
    {
        return $this->db->get_where('sarana')->num_rows();
    }
    function slide_get()
    {
        return $this->db->get_where('slide')->num_rows();
    }
    function penghargaan_get()
    {
        return $this->db->get_where('penghargaan')->num_rows();
    }
    function wisata_get()
    {
        return $this->db->get_where('wisata')->num_rows();
    }
    function penduduk_get()
    {
        return $this->db->get_where('penduduk')->num_rows();
    }
    function karyawan_get()
    {
        return $this->db->get_where('karyawan')->num_rows();
    }
    function surat_get()
    {
        return $this->db->get_where('surat')->num_rows();
    }
    function karyawan_getWherePerangkat()
    {
        return $this->db->get_where('karyawan', ['kategori_jabatan' => 'Perangkat Desa'])->num_rows();
    }
    function karyawan_getWhereLembaga()
    {
        return $this->db->get_where('karyawan', ['kategori_jabatan' => 'Lembaga Desa'])->num_rows();
    }
    function dokumen_get()
    {
        return $this->db->get_where('dokumen')->num_rows();
    }
    function dokumen_getWhereSurat()
    {
        return $this->db->get_where('dokumen', ['kategori_id' => '1'])->num_rows();
    }
    function dokumen_getWherePeraturan()
    {
        return $this->db->get_where('dokumen', ['kategori_id' => '3'])->num_rows();
    }
    function dokumen_getWherePemerintah()
    {
        return $this->db->get_where('dokumen', ['kategori_id' => '4'])->num_rows();
    }

    // info grafis
    function penduduk_getWhereCowok()
    {
        $query = "SELECT * FROM `penduduk` WHERE `jenis_kelamin` = 'Laki-laki'";
        return $this->db->query($query)->num_rows();
    }
    function penduduk_getWhereCewek()
    {
        $query = "SELECT * FROM `penduduk` WHERE `jenis_kelamin` = 'Perempuan'";
        return $this->db->query($query)->num_rows();
    }
    function penduduk_getWhereAgamaIslam()
    {
        return $this->db->get_where('penduduk', ['agama' => 'Islam'])->num_rows();
    }
    function penduduk_getWhereAgamaKristen()
    {
        return $this->db->get_where('penduduk', ['agama' => 'Kristen'])->num_rows();
    }
    function penduduk_getWhereAgamaHindu()
    {
        return $this->db->get_where('penduduk', ['agama' => 'Hindu'])->num_rows();
    }
    function penduduk_getWhereAgamaBuddha()
    {
        return $this->db->get_where('penduduk', ['agama' => 'Buddha'])->num_rows();
    }
    function penduduk_getWhereAgamaKhonghucu()
    {
        return $this->db->get_where('penduduk', ['agama' => 'Khonghucu'])->num_rows();
    }
    function penduduk_getWherePendidikanBelumSekolah()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'BelumSekolah'])->num_rows();
    }
    function penduduk_getWherePendidikanTamatSD()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'TamatSD'])->num_rows();
    }
    function penduduk_getWherePendidikanSLTP()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'SLTP/Sederajat'])->num_rows();
    }
    function penduduk_getWherePendidikanSLTA()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'SLTA/Sederajat'])->num_rows();
    }
    function penduduk_getWherePendidikanDiploma()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'Diploma'])->num_rows();
    }
    function penduduk_getWherePendidikanSI()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'StrataI'])->num_rows();
    }
    function penduduk_getWherePendidikanSII()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'StrataII'])->num_rows();
    }
    function penduduk_getWherePendidikanSIII()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'StrataIII'])->num_rows();
    }
    function penduduk_getWherePekerjaanIRT()
    {
        return $this->db->get_where('penduduk', ['status_pendidikan' => 'StrataIII'])->num_rows();
    }
    function pekerjaan_getWhereBelumBekerja()
    {
        return $this->db->get_where('pekerjaan', ['nama_pekerjaan' => 'Belum/Tidak Bekerja'])->num_rows();
    }
    function pekerjaan_getWherePelajar()
    {
        return $this->db->get_where('pekerjaan', ['nama_pekerjaan' => 'Pelajar/Mahasiswa'])->num_rows();
    }
    function pekerjaan_getWhereBK()
    {
        return $this->db->get_where('kategori_sarana', ['nama_kategori' => 'Bidang Kelurahan' ])->num_rows();
    }
    function pendidikan($kat)
    {
        $this->db->select('*');
        $this->db->from('sarana');
        $this->db->join('kategori_sarana', 'sarana.kategori_id = kategori_sarana.id');
        $this->db->where('kategori_Sarana.nama_kategori', $kat);
        return $this->db->get()->num_rows();
    }
    function kesehatan($kat)
    {
        $this->db->select('*');
        $this->db->from('sarana');
        $this->db->join('kategori_sarana', 'sarana.kategori_id = kategori_sarana.id');
        $this->db->where('kategori_Sarana.nama_kategori', $kat);
        return $this->db->get()->num_rows();
    }
    function pekerjaan($perk)
    {
        $this->db->select('*');
        $this->db->from('penduduk');
        $this->db->join('pekerjaan', 'penduduk.id_pekerjaan = pekerjaan.id_pekerjaan');
        $this->db->where('pekerjaan.nama_pekerjaan', $perk);
        return $this->db->get()->num_rows();
    }
}
