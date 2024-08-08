<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_user extends CI_Model
{
    function get()
    {
        // $this->db->select('*');
        // $this->db->from('user');
        // $this->db->join('user_role', 'user.id_type = user_role.id');
        return $this->db->get('user')->result();
    }
    function input()
    {
        $active = $this->input->post('active');
        if ($active == 'on') {
            $n = '1';
        } else {
            $n = '0';
        }

        $data = [
            'name'      => htmlspecialchars($this->input->post('name', true)),
            'username'  => htmlspecialchars($this->input->post('username', true)),
            'image'     => 'default.jpg',
            'password'  => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
            'id_type'   => htmlspecialchars($this->input->post('typeuser', true)),
            'active'    => $n,
            'date_created' => time()
        ];
        $this->db->insert('user', $data);
    }
    function edit($id, $data)
    {
        $this->db->where('id_user', $id);
        $this->db->update('user', $data);
    }
    function delete($id, $image)
    {
        if ($image != 'default.jpg') {
            unlink(FCPATH . 'assets/img/profile/' . $image);
        }

        $this->db->where('id_user', $id);
        $this->db->delete('user');
    }
}
