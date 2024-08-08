<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_home extends CI_Model
{
    function slide_get()
    {
        return $this->db->get('slide')->result_array();
    }
    function slide_input($data)
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];

        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '2048';
            $config['upload_path']   = './assets/img/slide';
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $new_image = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'name'    => htmlspecialchars($this->input->post('name')),
            'image'   => $new_image,
            'date_created' => time(),
            'date_modif' => time()
        ];
        $this->db->insert('slide', $data);
    }
    function slide_edit($id)
    {
        $name = htmlspecialchars($this->input->post('name'));
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '2048';
            $config['upload_path']   = './assets/img/slide';
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/img/slide/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('image', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $this->db->set('date_modif', time());
        $this->db->set('name', $name);
        $this->db->where('id', $id);
        $this->db->update('slide');
    }
    function slide_delete($id, $gambar)
    {
        unlink(FCPATH . 'assets/img/slide/' . $gambar);

        $this->db->where('id', $id);
        $this->db->delete('slide');
    }
    // sambutan
    function sambutan_get()
    {
        return $this->db->get('sambutan')->result_array();
    }
    function sambutan_edit($id)
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['photo']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '4096';
            $config['upload_path']   = './assets/img/sambutan';
            $config['remove_spaces'] = true;
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/img/sambutan/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('photo', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'nama'          => htmlspecialchars($this->input->post('name')),
            'jabatan'       => htmlspecialchars($this->input->post('jabatan')),
            'judul'         => htmlspecialchars($this->input->post('judul')),
            'sambutan'      => $this->input->post('sambutan'),
            'date_modify'   => time()
        ];
        // var_dump($data);
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('sambutan');
    }

    // visi-misi,tujuan
    function profile_get()
    {
        return $this->db->get('profile')->result_array();
    }
    function profile_edit($id)
    {
        $upload_image = $_FILES['image']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/file/profile';
            $config['remove_spaces'] = true;
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/file/profile/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('gambar', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $upload_video = $_FILES['video']['name'];
        if ($upload_video) {
            $config['allowed_types'] = 'mp4';
            $config['max_size']      = '102400';
            $config['upload_path']   = './assets/file/profile';
            // $config['overwrite']     = true;
            $config['remove_spaces'] = true;
            $config['encrypt_name']  = true;


            $this->load->library('upload', $config);

            if ($this->upload->do_upload('video')) {
                $old_video = $this->input->post('old_video');
                if ($old_video) {
                    unlink(FCPATH . 'assets/file/profile/' . $old_video);
                }
                $new_video = $this->upload->data('file_name');
                $this->db->set('video', $new_video);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'visi'          => $this->input->post('visi'),
            'misi'          => $this->input->post('misi'),
            'sejarah'       => $this->input->post('sejarah'),
            'tujuan'        => $this->input->post('tujuan'),
            'date_modify'   => time()
        ];
        // var_dump($data, $new_image);
        // die;
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('profile');
    }
}
