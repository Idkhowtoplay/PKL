        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg-10">
                    <?= form_error('usaha', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <!-- <?= $this->session->flashdata('usaha'); ?> -->

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- End of Main Content -->
                            <?php foreach ($usaha as $b) :
                                $id = $b['id']
                            ?>
                                <?= form_open_multipart('Admin/tampilan/info/usaha_edit/' . $id); ?>
                                <input type="hidden" name="id" value="<?= $id ?>">
                                <input type="hidden" name="old_image" value="<?= $b['gambar'] ?>">
                                <div class="from-group">
                                    <label>Nama Toko</label>
                                    <input type="text" name="nama" class="form-control" value="<?= $b['nama_toko']; ?>">
                                    <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="from-group">
                                    <label>jenis toko</label>
                                    <select class="form-control" name="jenis_toko">
                                        <option selected value="<?= $b['jenis_toko']; ?>"><?= $b['jenis_toko']; ?></option>
                                        <option>Sembako</option>
                                        <option>Kuliner</option>
                                        <option>Material</option>
                                        <option>Mebel</option>
                                        <option>Fashion</option>
                                        <option>Kerajinan</option>
                                    </select>
                                    <?= form_error('jenis_toko', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="from-group ">
                                    <div class="row">
                                        <div class="col-md-3 mb-2">
                                            <label>Hari Buka</label>
                                            <select class="form-control" name="hari_buka" required>
                                                <option selected>----Pilih Hari Buka----</option>
                                                <option>Senin</option>
                                                <option>Selasa</option>
                                                <option>Rabu</option>
                                                <option>Kamis</option>
                                                <option>Jum'at</option>
                                                <option>Sabtu</option>
                                                <option>Minggu</option>
                                            </select>
                                            <!-- <?= form_error('hari_buka', '<small class="text-danger pl-3">', '</small>'); ?> -->
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label>Hari Tutup</label>
                                            <select class="form-control" name="hari_tutup" required>
                                                <option selected>----Pilih Hari Buka----</option>
                                                <option>Senin</option>
                                                <option>Selasa</option>
                                                <option>Rabu</option>
                                                <option>Kamis</option>
                                                <option>Jum'at</option>
                                                <option>Sabtu</option>
                                                <option>Minggu</option>
                                            </select>
                                            <!-- <?= form_error('hari_buka', '<small class="text-danger pl-3">', '</small>'); ?> -->
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label>Jam Buka</label>
                                            <input type="time" name="buka" class="form-control" value="<?= $b['buka']; ?>">
                                            <?= form_error('buka', '<small class="text-danger pl-3">', '</small>'); ?>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label>Jam Tutup</label>
                                            <input type="time" name="tutup" class="form-control" value="<?= $b['tutup']; ?>">
                                            <?= form_error('tutup', '<small class="text-danger pl-3">', '</small>'); ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="from-group">
                                    <label>Kontak Penjual</label>
                                    <input name="kontak" class="form-control" type="tel" value='<?= $b['kontak']; ?>'>
                                    <?= form_error('kontak', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="from-group">
                                    <label>Alamat</label>
                                    <textarea name="alamat" class="form-control" id="" cols="10" rows="5"><?= $b['alamat']; ?></textarea>
                                    <?= form_error('alamat', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="from-group">
                                    <label>Deskripsi</label>
                                    <textarea id="insert" name="deskripsi" rows="10"><?= $b['deskripsi']; ?></textarea>
                                    <?= form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-10">Picture</div>
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-sm-9">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="file" name="image" name="<?= $b['gambar']; ?>">
                                                    <label class="custom-file-label" for="image" id="pilih">Choose
                                                        file</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <img src="<?= base_url('assets/img/usaha/') . $b['gambar'] ?>" class="img-thumbnail" id="foto">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<?= base_url('Admin/tampilan/info/usaha') ?>" class="btn btn-secondary">back</a>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div><?= form_close() ?>
                    <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>