<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_pekerjaan extends CI_Model
{

    public function insert_data($data)
    {
        $this->db->insert('pekerjaan', $data);
    }

    public function update_data($id, $data)
    {
        $this->db->where('id_pekerjaan', $id);
        $this->db->update('pekerjaan', $data);
    }

    public function delete_data($id)
    {
        $this->db->where('id_pekerjaan', $id);
        $this->db->delete('pekerjaan');
    }
    public function get_pekerjaan_list()
    {
        // Ambil daftar pekerjaan dari tabel pekerjaan
        $query = $this->db->select('id_pekerjaan as pekerjaan_id, nama_pekerjaan')
                          ->from('pekerjaan')
                          ->get();
        $result = $query->result_array();
        $pekerjaan_list = [];
        foreach ($result as $row) {
            $pekerjaan_list[$row['nama_pekerjaan']] = $row['pekerjaan_id'];
        }
        return $pekerjaan_list;
    }
}