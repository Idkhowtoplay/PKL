        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg-6">
                    <?= form_error('karyawan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <!-- <?= $this->session->flashdata('karyawan'); ?> -->

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- End of Main Content -->

                            <?= form_open_multipart('Admin/data/data/karyawan_add'); ?>
                            <input type="hidden" name="id">
                            <input type="hidden" name="modif" value="<?= $user['name'] ?>">
                            <div class="from-group">
                                <label>Nama</label>
                                <input type="name" name="nama" class="form-control" value="">
                                <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="from-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" value="">
                                <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="from-group">
                                <label>No Telepon</label>
                                <input type="number" name="kontak" class="form-control" value="">
                                <?= form_error('kontak', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <label>Jenis Kelamin:</label>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" id="gender" value="Laki-laki">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Laki-laki
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" id="gender" value="Perempuan">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Perempuan
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <label>Jabatan:</label>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-check">
                                        <input class="form-check-input detail" type="radio" name="jabatan_cek" id="jabatan_cek" value="Perangkat Desa">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Perangkat Desa
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-check">
                                        <input class="form-check-input detail" type="radio" name="jabatan_cek" id="jabatan_cek" value="Lembaga Desa">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Lembaga Desa
                                        </label>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-sm-10">Picture</div>
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="file" name="photo">
                                                <label class="custom-file-label" for="image" id="pilih">Choose
                                                    file</label>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <img src="" class="img-thumbnail" id="foto">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<?= base_url('Admin/data/data/karyawan') ?>" class="btn btn-secondary">back</a>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div id="form-input">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <!-- End of Main Content -->

                                <div class="from-group">
                                    <label>NIP</label>
                                    <input type="number" name="nip" class="form-control" value="">
                                    <?= form_error('nip', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <label>Pilih Jabatan</label>
                                    <select name="jabatan_perangkat" id="jabatan" class="form-control">
                                        <option value="">Pilih Jabatan</option>
                                        <?php foreach ($perangkat as $m) : ?>
                                            <option value="<?= $m['jabatan']; ?>"><?= $m['jabatan']; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                    <?= form_error('jabatan', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div id="form-input1">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <!-- End of Main Content -->

                                <div class="form-group">
                                    <label>Pilih Jabatan</label>
                                    <select name="jabatan_lembaga" id="jabatan" class="form-control">
                                        <option value="">Pilih Jabatan</option>
                                        <?php foreach ($lembaga as $m) : ?>
                                            <option value="<?= $m['jabatan']; ?>"><?= $m['jabatan']; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                    <?= form_error('jabatan', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <?= form_close() ?>
            </div>
        </div>
        <!--container-fluid -->

        </div>