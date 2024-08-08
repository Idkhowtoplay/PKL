<?php
defined('BASEPATH') or exit('No direct script access allowed');

class auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
    public function index()
    {
        if ($this->session->userdata('username')) {
            redirect('Admin/dashboard');
        }
        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login';
            $this->load->view('template/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('template/auth_footer');
        } else {
            $this->_login();
        }
    }
    private function _login()
    {
        if ($this->session->userdata('username')) {
            redirect('Admin/dashboard');
        }

        $username   = $this->input->post('username');
        $password   = $this->input->post('password');
        $user       = $this->db->get_where('user', ['username' => $username])->row_array();

        if ($user) {
            //login berhasil
            if ($user['active'] == 1) {
                //cek password
                if (password_verify($password, $user['password'])) {
                    $data = [
                        'MASUK'     => true,
                        'username'  => $user['username'],
                        'id_type'   => $user['id_type']
                    ];
                    $this->session->set_userdata($data);
                    switch ($user['id_type']) {
                        case '1':
                            $this->session->set_userdata($data);
                            // var_dump($user);
                            // die;
                            redirect('Admin/dashboard');
                            break;
                        case '2':
                            $this->session->set_userdata($data);
                            redirect('Admin/data/user');
                            break;
                        case '3':
                            $this->session->set_userdata($data);
                            redirect('Admin/dashboard');
                            break;
                        case '4':
                            $this->session->set_userdata($data);
                            redirect('Admin/data/user');
                            break;
                        default:
                            $this->session->set_flashdata('pesan', '<div class="alert alert-danger role="alert">Username & Password Tidak Cocok!</div>');
                            redirect(base_url('auth'));
                            break;
                    }
                } else {
                    $this->session->set_flashdata(
                        'message',
                        '<div class="alert alert-danger" role="alert">
                    Username & Password Tidak Cocok!</div>'
                    );
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata(
                    'message',
                    '<div class="alert alert-danger" role="alert">
                Username Ini sudah tidak aktif!</div>'
                );
                redirect('auth');
            }
        } else {
            //login gagal
            $this->session->set_flashdata(
                'message',
                '<div class="alert alert-danger" role="alert">
            Username Tidak Terdaftar</div>'
            );
            redirect('auth');
        }
    }


    public function logout()
    {
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('id_type');

        $this->session->set_flashdata(
            'message',
            '<div class="alert alert-success" role="alert">
        You have been logged out!</div>'
        );
        redirect('auth');
    }

    public function blocked()
    {
        $data['title'] = 'ERROR 404';
        $this->load->view('auth/blocked', $data);
    }
}
