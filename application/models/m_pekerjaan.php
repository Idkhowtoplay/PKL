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
    
}