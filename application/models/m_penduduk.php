<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_penduduk extends CI_Model
{
    public function get_data()
    {
        $this->db->select('*');
        $this->db->from('penduduk');
        $this->db->join('pekerjaan', 'penduduk.id_pekerjaan = pekerjaan.id_pekerjaan', 'left');
        return $this->db->get()->result();
    }

    public function getDataById($id)
    {
        $this->db->select('*');
        $this->db->from('penduduk');
        $this->db->join('pekerjaan', 'penduduk.id_pekerjaan = pekerjaan.id_pekerjaan', 'left');
        $this->db->where('penduduk.id', $id);
        return $this->db->get()->row();
    }

    public function getDataByNoKK($no_kk)
    {
        $this->db->select('*');
        $this->db->from('penduduk');
        $this->db->join('pekerjaan', 'penduduk.id_pekerjaan = pekerjaan.id_pekerjaan', 'left');
        $this->db->where('penduduk.no_kk', $no_kk);
        return $this->db->get()->result();
    }

    public function getDataByIdPekerjaan($id_pekerjaan)
    {
        $this->db->select('*');
        $this->db->from('penduduk');
        $this->db->join('pekerjaan', 'penduduk.id_pekerjaan = pekerjaan.id_pekerjaan', 'left');
        $this->db->where('penduduk.id_pekerjaan', $id_pekerjaan);
        return $this->db->get()->result();
    }

    public function insert_data($data)
    {
        $this->db->insert('penduduk', $data);
    }

    public function update_data($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('penduduk', $data);
    }

    public function UpdatePekerjaanPenduduk($id_pekerjaan)
    {
        $this->db->where('id_pekerjaan', $id_pekerjaan);
        $data = [
            'id_pekerjaan' => null,
            'date_modify'  => time()
        ];
        $this->db->update('penduduk', $data);
    }

    public function delete_data($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('penduduk');
    }
}
