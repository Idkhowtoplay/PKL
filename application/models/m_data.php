<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_data extends CI_Model
{
    function struktur($id)
    {
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['gambar']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/file/struktur';
            $config['remove_spaces'] = true;
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('gambar')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/file/struktur/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');

                $this->db->set('gambar', $new_image);
            } else {
                echo $this->upload->dispay_errors();
            }
        }
        // var_dump($new_image);
        // die;
        $this->db->where('id', $id);
        $this->db->update('struktur');
    }
    function karyawan_get()
    {
        return $this->db->get('karyawan')->result_array();
    }
    function karyawan_input()
    {
        $jabatan_cek = $this->input->post('jabatan_cek');
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['photo']['name'];

        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/karyawan';
            $config['remove_spaces'] = true;
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {
                $new_image = $this->upload->data('file_name');
            } else {
                echo $this->upload->dispay_errors();
            }
        }

        if ($jabatan_cek == 'Perangkat Desa') {
            $jabatan = $this->input->post('jabatan_perangkat');
            $nip     = $this->input->post('nip');
        } else if ($jabatan_cek == 'Lembaga Desa') {
            $jabatan = $this->input->post('jabatan_lembaga');
            $nip     = '';
        } else {
            $jabatan = '';
            $nip     = '';
        }

        $data = [
            'nama'              => htmlspecialchars($this->input->post('nama')),
            'nip'               => $nip,
            'kategori_jabatan'  => $jabatan_cek,
            'jabatan'           => $jabatan,
            'email'             => htmlspecialchars($this->input->post('email')),
            'no_telepon'        => htmlspecialchars($this->input->post('kontak')),
            'gender'            => htmlspecialchars($this->input->post('gender')),
            'modif_by'          => htmlspecialchars($this->input->post('modif')),
            'photo'             => $new_image,
            'date_created'      => time(),
            'date_modify'       => time()
        ];
        $this->db->insert('karyawan', $data);
    }
    function karyawan_edit($id)
    {
        $jabatan_cek = $this->input->post('jabatan_cek');
        // cek jika ada gambar yang di upload
        $upload_image = $_FILES['photo']['name'];
        if ($upload_image) {
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/img/karyawan';
            $config['remove_spaces'] = true;
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {
                $old_image = $this->input->post('old_image');
                if ($old_image) {
                    unlink(FCPATH . 'assets/img/karyawan/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('photo', $new_image);
            } else {
                echo $this->upload->dispay_errors();
            }
        }
        if ($jabatan_cek == 'Perangkat Desa') {
            $jabatan = $this->input->post('jabatan_perangkat');
            $nip     = $this->input->post('nip');
        } else if ($jabatan_cek == 'Lembaga Desa') {
            $jabatan = $this->input->post('jabatan_lembaga');
            $nip     = '';
        } else {
            $jabatan = '';
            $nip     = '';
        }

        $data = [
            'nama'              => htmlspecialchars($this->input->post('nama')),
            'nip'               => $nip,
            'kategori_jabatan'  => $jabatan_cek,
            'jabatan'           => $jabatan,
            'email'             => htmlspecialchars($this->input->post('email')),
            'no_telepon'        => htmlspecialchars($this->input->post('kontak')),
            'gender'            => htmlspecialchars($this->input->post('gender')),
            'modif_by'          => htmlspecialchars($this->input->post('modif')),
            'date_modify'       => time()
        ];
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update('karyawan');
    }
    function karyawan_delete($id, $gambar)
    {
        unlink(FCPATH . 'assets/img/karyawan/' . $gambar);

        $this->db->where('id', $id);
        $this->db->delete('karyawan');
    }
    function dokumen_get()
    {
        $query = "SELECT `dokumen`.*, `kategori_doc`.`kategori`
                    FROM `dokumen` JOIN `kategori_doc`
                      ON `dokumen`.`kategori_id` = `kategori_doc`.`id`";
        return $this->db->query($query)->result_array();
    }
    function dokumen_input()
    {
        $upload_dokumen = $_FILES['dokumen']['name'];

        if ($upload_dokumen) {
            $config['allowed_types'] = 'pdf||docx||doc';
            $config['max_size']      = '10240';
            $config['upload_path']   = './assets/file/doc';
            $config['remove_spaces'] = true;
            $config['encrypt_name']  = true;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('dokumen')) {
                $new_dokumen = $this->upload->data('file_name');
            } else {
                echo $this->upload->dispay_errors();
            }
        }
        $data = [
            'nama'          => htmlspecialchars($this->input->post('nama')),
            'dokumen'       => $new_dokumen,
            'kategori_id'   => $this->input->post('kategori'),
            'pengedit'      => htmlspecialchars($this->input->post('pengedit')),
            'date_created'  => time()
        ];
        $this->db->insert('dokumen', $data);
    }
    function dokumen_delete($id, $dokumen)
    {
        unlink(FCPATH . 'assets/file/doc/' . $dokumen);

        $this->db->where('id', $id);
        $this->db->delete('dokumen');
    }
}
