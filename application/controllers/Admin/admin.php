<?php

use SendGrid\username;

defined('BASEPATH') or exit('No direct script access allowed');

class admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_user');
        $this->load->helper('url');
        if ($this->session->userdata('MASUK') != TRUE) {
            redirect('auth/logout');
        }
        if ($this->session->userdata('id_type') !== '1') {
            redirect('auth/blocked');
        }
    }
    public function user()
    {
        $data['title'] = 'User Management';
        $data['users'] = $this->M_user->get();
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/user', $data);
        $this->load->view('template/footer');
    }
    public function input()
    {
        $this->M_user->input();
        redirect('Admin/admin/user');
    }
    public function edit()
    {
        $data['title'] = 'Edit';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('name', 'Full Name', 'required|trim');
        $this->form_validation->set_rules('username', 'Username', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/edit', $data);
            $this->load->view('template/footer');
        } else {
            $id         = $this->input->post('id_user');
            $name       = htmlspecialchars($this->input->post('name', true));
            $username   = htmlspecialchars($this->input->post('username', true));
            $password   = htmlspecialchars($this->input->post('password', true));
            $id_type    = htmlspecialchars($this->input->post('typeuser', true));
            $active     = $this->input->post('active');

            if ($active == 'on') {
                $n = '1';
            } else {
                $n = '0';
            }

            // cek jika ada gambar yang di upload
            $upload_image = $_FILES['image']['name'];

            if ($upload_image) {
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size']      = '10240';
                $config['upload_path']   = './assets/img/profile';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('image')) {
                    $old_image = $this->input->post('old_image');
                    if ($old_image != 'default.jpg') {
                        unlink(FCPATH . 'assets/img/profile/' . $old_image);
                    }
                    $new_image = $this->upload->data('file_name');
                    $this->db->set('image', $new_image);
                } else {
                    echo $this->upload->dispay_errors();
                }
            }
            if ($password == '') {
                $data = [
                    'name'      => $name,
                    'username'  => $username,
                    'id_type'   => $id_type,
                    'active'    => $n
                ];
            } else {
                $data = [
                    'name'      => $name,
                    'username'  => $username,
                    'password'  => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                    'id_type'   => $id_type,
                    'active'    => $n
                ];
            }
            // var_dump($new_image);
            // die;
            $this->M_user->edit($id, $data);
            $this->session->set_flashdata('edituser', '<div class="alert alert-success" role="alert"> Your profile has been update!</div>');
            redirect('Admin/admin/user');
        }
    }
    public function delete($id, $image)
    {
        if ($image != 'default.jpg') {
            unlink(FCPATH . 'assets/img/profile/' . $image);
        }

        $this->M_user->delete($id, $image);
        redirect('Admin/admin/user');
    }
    public function role()
    {
        $data['title'] = 'User Role';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $data['role'] = $this->db->get('user_role')->result_Array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/role', $data);
        $this->load->view('template/footer');
    }
    public function input_role()
    {
        $data['title'] = 'User Role';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('id_type', 'Role Name', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/role', $data);
            $this->load->view('template/footer');
        } else {
            $name_role  = $this->input->post('id_type');

            $this->db->set('id_type', $name_role);
            $this->db->insert('user_role');

            $this->session->set_flashdata('editnamerole', '<div class="alert alert-success" role="alert"> Role Name Has been changed!</div>');
            redirect('Admin/admin/role');
        }
    }
    public function editnamerole()
    {
        $data['title'] = 'User Role';
        $data['user'] = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        $this->form_validation->set_rules('id_type', 'Role Name', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/role', $data);
            $this->load->view('template/footer');
        } else {
            $id         = $this->input->post('id');
            $name_role  = $this->input->post('id_type');

            $this->db->set('id_type', $name_role);
            $this->db->where('id', $id);
            $this->db->update('user_role');

            $this->session->set_flashdata('editnamerole', '<div class="alert alert-success" role="alert"> Role Name Has been changed!</div>');
            redirect('Admin/admin/role');
        }
    }
    public function role_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('user_role');
        redirect('Admin/admin/role');
    }
}
