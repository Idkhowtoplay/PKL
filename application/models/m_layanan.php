<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_layanan extends CI_Model
{
    function surat_get()
    {
        $query = "SELECT *, dokumen.nama as nadok, surat.nama as pengaju, surat.date_created as dibuat, surat.id as idus FROM `surat` join dokumen on (surat.surat=dokumen.id) ORDER BY `date_modify` DESC";
        return $this->db->query($query)->result_array();
    }
    function surat_get_id($id)
    {
        $query = "SELECT * FROM `surat` WHERE id = '$id'";
        return $this->db->query($query)->row_array();
    }
    function get_get_nik($nik)
    {
        $query = "SELECT * FROM `penduduk` join pekerjaan on (penduduk.id_pekerjaan=pekerjaan.id_pekerjaan) WHERE nik = '$nik'";
        return $this->db->query($query)->row_array();
    }
    function surat_edit($id)
    {
        $status = $this->input->post('status');
        $pesan   = htmlspecialchars($this->input->post('pesan', true));
        $pengedit = htmlspecialchars($this->input->post('pengedit', true));

        $this->db->set('date_modif', time());
        $this->db->set('pengedit', $pengedit);
        $this->db->set('pesan', $pesan);
        $this->db->set('status', $status);
        $this->db->where('id', $id);
        $this->db->update('surat');
    }
    function surat_delete($id, $gambar)
    {
        unlink(FCPATH . 'assets/img/surat/' . $gambar);

        $this->db->where('id', $id);
        $this->db->delete('surat');
    }
}
