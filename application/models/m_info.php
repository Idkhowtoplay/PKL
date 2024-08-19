<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_info extends CI_Model
{
    function berita_get()
    {
        return $this->db->get('berita')->result_array();
    }
    function berita_input()
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];

        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/berita';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $new_image = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'penulis'       => htmlspecialchars($this->input->post('penulis')),
            'edit'          => '-',
            'judul'         => htmlspecialchars($this->input->post('judul')),
            'gambar'        => $new_image,
            'konten'        => $this->input->post('konten'),
            'date_created'  => time(),
            'date_modify'   => time()
        ];
        $this->db->insert('berita', $data);
    }
    function berita_edit($id)
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/berita';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/img/berita/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('gambar', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            // 'penulis'       => htmlspecialchars($this->input->post('penulis')),
            'edit'          => htmlspecialchars($this->input->post('edit_penulis')),
            'judul'         => htmlspecialchars($this->input->post('judul')),
            'konten'        => $this->input->post('konten'),
            'date_modify'   => time()
        ];
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('berita');
    }
    function berita_delete($id, $gambar)
    {
        unlink(FCPATH . 'assets/img/berita/' . $gambar);

        $this->db->where('id', $id);
        $this->db->delete('berita');
    }
    function penghargaan_get()
    {
        return $this->db->get('penghargaan')->result_array();
    }
    function penghargaan_input()
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];

        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/penghargaan';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $new_image = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'nama'          => htmlspecialchars($this->input->post('name')),
            'info'          => $this->input->post('info'),
            'gambar'        => $new_image,
            'date_created'  => time(),
            'date_modify'   => time()
        ];
        $this->db->insert('penghargaan', $data);
    }
    function penghargaan_edit($id)
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/penghargaan';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/img/penghargaan/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('gambar', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'nama'        => htmlspecialchars($this->input->post('name')),
            'info'        => $this->input->post('info'),
            'date_modify' => time()
        ];
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('penghargaan');
    }
    function penghargaan_delete($id, $gambar)
    {
        unlink(FCPATH . 'assets/img/penghargaan/' . $gambar);

        $this->db->where('id', $id);
        $this->db->delete('penghargaan');
    }
    function usaha_get()
    {
        return $this->db->get('usaha')->result_array();
    }
    function usaha_input()
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];

        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/usaha';
            $config['encrypt_name']  = true;
            $config['permitted_uri_chars'] = 'a-z 0-9~%.:_\-';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $new_image = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        $buka = $this->input->post('hari_buka');
        $tutup = $this->input->post('hari_tutup');
        $data = [
            'nama_toko'     => htmlspecialchars($this->input->post('nama')),
            'deskripsi'     => $this->input->post('deskripsi'),
            'gambar'        => $new_image,
            'kontak'        => $this->input->post('kontak'),
            'alamat'        => htmlspecialchars($this->input->post('alamat')),
            'jenis_toko'    => $this->input->post('jenis_toko'),
            'hari'          => $buka . '-' . $tutup,
            'buka'          => $this->input->post('buka'),
            'tutup'         => $this->input->post('tutup'),
            'aktif'         => 1,
            'date_created'  => time(),
            'date_modify'   => time()
        ];
        $this->db->insert('usaha', $data);
    }
    function usaha_edit($id)
    {
        $buka = $this->input->post('hari_buka');
        $tutup = $this->input->post('hari_tutup');
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/usaha';
            $config['encrypt_name']  = true;
            $config['permitted_uri_chars'] = 'a-z 0-9~%.:_\-';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/img/usaha/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('gambar', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'nama_toko'     => htmlspecialchars($this->input->post('nama')),
            'deskripsi'     => $this->input->post('deskripsi'),
            'kontak'        => $this->input->post('kontak'),
            'alamat'        => htmlspecialchars($this->input->post('alamat')),
            'jenis_toko'    => $this->input->post('jenis_toko'),
            'hari'          => $buka . '-' . $tutup,
            'buka'          => $this->input->post('buka'),
            'tutup'         => $this->input->post('tutup'),
            'aktif'         => 1,
            'date_created'  => time(),
            'date_modify'   => time()
        ];
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('usaha');
    }
    function usaha_delete($id, $gambar)
    {
        unlink(FCPATH . 'assets/img/usaha/' . $gambar);

        $this->db->where('id', $id);
        $this->db->delete('usaha');
    }
    function wisata_get()
    {
        return $this->db->get('wisata')->result_array();
    }
    function wisata_input()
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];

        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/wisata';
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $new_image = $this->upload->data('file_name');
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'penulis'       => htmlspecialchars($this->input->post('penulis')),
            'nama'          => htmlspecialchars($this->input->post('nama')),
            'gambar'        => $new_image,
            'konten'        => $this->input->post('konten'),
            'date_created'  => time(),
            'date_modify'   => time()
        ];
        $this->db->insert('wisata', $data);
    }
    function wisata_edit($id)
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['image']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/wisata';
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/img/wisata/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('gambar', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }
        $data = [
            'penulis'       => htmlspecialchars($this->input->post('penulis')),
            'nama'         => htmlspecialchars($this->input->post('nama')),
            'konten'        => $this->input->post('konten'),
            'date_modify'   => time()
        ];
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('wisata');
    }
    function wisata_delete($id, $gambar)
    {
        unlink(FCPATH . 'assets/img/wisata/' . $gambar);

        $this->db->where('id', $id);
        $this->db->delete('wisata');
    }
    function sarana_get()
    {
        $query = "SELECT `sarana`.*, `kategori_sarana`.`kategori`,`nama_kategori`
                    FROM `sarana` JOIN `kategori_sarana`
                      ON `sarana`.`kategori_id` = `kategori_sarana`.`id`";
        return $this->db->query($query)->result_array();
    }
    function sarana_input()
    {
        $data = [
            'nama_spesifik' => htmlspecialchars($this->input->post('nama')),
            'kategori_id'   => htmlspecialchars($this->input->post('detail')),
            'modif_by'      => $this->input->post('pengedit'),
            'date_created'  => time(),
            'date_modify'   => time()
        ];
        // var_dump($data);
        // die;
        $this->db->insert('sarana', $data);
    }
    function sarana_edit($id)
    {
        $data = [
            'nama_spesifik' => htmlspecialchars($this->input->post('nama')),
            'kategori_id'   => htmlspecialchars($this->input->post('detail')),
            'modif_by'      => $this->input->post('pengedit'),
            'date_modify'   => time()
        ];
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('sarana');
    }
    function sarana_delete($id)
    {
        
        $this->db->where('id', $id);
        $this->db->delete('sarana');
    }
}
