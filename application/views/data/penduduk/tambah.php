        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg-16">
                    <?= form_error('berita', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <!-- <?= $this->session->flashdata('berita'); ?> -->

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- End of Main Content -->
                            <?= form_open_multipart('Admin/data/penduduk/tambah_aksi'); ?>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="nama">Nama</label>
                                        <input type="text" name="nama" id="nama" class="form-control" autocomplete="off" value="<?= set_value('nama'); ?>">
                                        <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="jenis_kelamin">Jenis Kelamin</label>
                                        <select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
                                            <option value="">-- Pilih Jenis Kelamin --</option>
                                            <option <?= set_value('jenis_kelamin') == 'Laki-laki' ? 'selected' : '' ?> value="Laki-laki">Laki-laki</option>
                                            <option <?= set_value('jenis_kelamin') == 'Perempuan' ? 'selected' : '' ?> value="Perempuan">Perempuan</option>
                                        </select>
                                        <?= form_error('jenis_kelamin', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="nik">NIK</label>
                                        <input type="number" name="nik" id="nik" class="form-control" autocomplete="off" value="<?= set_value('nik'); ?>" onKeyDown="if(this.value.length==16) return false;">
                                        <?= form_error('nik', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="no_kk">NO KK</label>
                                        <input type="number" name="no_kk" id="no_kk" class="form-control" autocomplete="off" value="<?= set_value('no_kk'); ?>" onKeyDown="if(this.value.length==16) return false;">
                                        <?= form_error('no_kk', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="tanggal_lahir">Tanggal Lahir</label>
                                        <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="form-control" autocomplete="off" value="<?= set_value('tanggal_lahir'); ?>">
                                        <?= form_error('tanggal_lahir', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="tempat_lahir">Tempat Lahir</label>
                                        <input type="text" name="tempat_lahir" id="tempat_lahir" class="form-control" autocomplete="off" value="<?= set_value('tempat_lahir'); ?>">
                                        <?= form_error('tempat_lahir', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="agama">Agama</label>
                                        <select name="agama" id="agama" class="form-control">
                                            <option value="">-- Pilih Agama --</option>
                                            <option <?= set_value('agama') == 'Islam' ? 'selected' : '' ?> value="Islam">Islam</option>
                                            <option <?= set_value('agama') == 'Kristen' ? 'selected' : '' ?> value="Kristen">Kristen</option>
                                            <option <?= set_value('agama') == 'Hindu' ? 'selected' : '' ?> value="Hindu">Hindu</option>
                                            <option <?= set_value('agama') == 'Buddha' ? 'selected' : '' ?> value="Buddha">Buddha</option>
                                            <option <?= set_value('agama') == 'Konghucu' ? 'selected' : '' ?> value="Konghucu">Konghucu</option>
                                            <option <?= set_value('agama') == 'Lainnya' ? 'selected' : '' ?> value="Lainnya">Lainnya</option>
                                        </select>
                                        <?= form_error('agama', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="rt">RT</label>
                                        <input type="text" name="rt" id="rt" class="form-control" autocomplete="off" value="<?= set_value('rt'); ?>">
                                        <?= form_error('rt', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="rw">RW</label>
                                        <input type="text" name="rw" id="rw" class="form-control" autocomplete="off" value="<?= set_value('rw'); ?>">
                                        <?= form_error('rw', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="alamat_spesifik">Alamat Spesifik</label>
                                        <textarea name="alamat_spesifik" id="alamat_spesifik" class="form-control"><?= set_value('alamat_spesifik'); ?></textarea>
                                        <?= form_error('alamat_spesifik', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="status_perkawinan">Status Perkawinan</label>
                                        <select name="status_perkawinan" id="status_perkawinan" class="form-control">
                                            <option value="">-- Pilih Status Perkawinan --</option>
                                            <option <?= set_value('status_perkawinan') == 'Belum kawin' ? 'selected' : '' ?> value="Belum kawin">Belum kawin</option>
                                            <option <?= set_value('status_perkawinan') == 'Kawin' ? 'selected' : '' ?> value="Kawin">Kawin</option>
                                            <option <?= set_value('status_perkawinan') == 'Cerai Hidup' ? 'selected' : '' ?> value="Cerai Hidup">Cerai Hidup</option>
                                            <option <?= set_value('status_perkawinan') == 'Cerai Mati' ? 'selected' : '' ?> value="Cerai Mati">Cerai Mati</option>
                                        </select>
                                        <?= form_error('status_perkawinan', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="status_pendidikan">Status Pendidikan</label>
                                        <select name="status_pendidikan" id="status_pendidikan" class="form-control">
                                            <option value="">-- Pilih Status Pendidikan --</option>
                                            <option <?= set_value('status_pendidikan') == 'BelumSekolah' ? 'selected' : '' ?> value="BelumSekolah">Tidak/Belum Sekolah</option>
                                            <option <?= set_value('status_pendidikan') == 'Tamat SD/Sederajat' ? 'selected' : '' ?> value="TamatSD">Tamat SD/Sederajat</option>
                                            <option <?= set_value('status_pendidikan') == 'SLTP/Sederajat' ? 'selected' : '' ?> value="SLTP/Sederajat">SLTP/Sederajat</option>
                                            <option <?= set_value('status_pendidikan') == 'SLTA/Sederajat' ? 'selected' : '' ?> value="SLTA/Sederajat">SLTA/Sederajat</option>
                                            <option <?= set_value('status_pendidikan') == 'Diploma' ? 'selected' : '' ?> value="Diploma">Diploma</option>
                                            <option <?= set_value('status_pendidikan') == 'StrataI' ? 'selected' : '' ?> value="StrataI">Strata I</option>
                                            <option <?= set_value('status_pendidikan') == 'StrataII' ? 'selected' : '' ?> value="StrataII">Strata II</option>
                                            <option <?= set_value('status_pendidikan') == 'StrataIII' ? 'selected' : '' ?> value="StrataIII">Strata III</option>
                                        </select>
                                        <?= form_error('status_pendidikan', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="id_pekerjaan">Pekerjaan</label>
                                        <select name="id_pekerjaan" id="id_pekerjaan" class="form-control">
                                            <option value="">-- Pilih Pekerjaan --</option>
                                            <?php foreach ($pekerjaan as $p) : ?>
                                                <option <?= set_value('id_pekerjaan') == $p->id_pekerjaan ? 'selected' : '' ?> value="<?= $p->id_pekerjaan ?>"><?= $p->nama_pekerjaan ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                        <?= form_error('id_pekerjaan', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="<?= base_url('Admin/data/penduduk') ?>" class="btn btn-secondary">back</a>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div><?= form_close() ?>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>