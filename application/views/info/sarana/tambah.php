        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg-3">
                    <?= form_error('sarana', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <!-- <?= $this->session->flashdata('sarana'); ?> -->

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- End of Main Content -->

                            <?= form_open_multipart('Admin/tampilan/info/sarana_add'); ?>
                            <input type="hidden" name="id">
                            <input type="hidden" name="pengedit" value="<?= $user['name'] ?>">
                            <div class="form-group">
                                <label>Nama Sarana</label>
                                <input type="Name" name="nama" class="form-control">
                                <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label>Pilih Kategori</label>
                                <select name="detail" id="detail" class="form-control">
                                    <option value="">-- Pilih Nama Kategori --</option>
                                    <?php foreach ($kategori as $m) : ?>
                                        <option value="<?= $m['id']; ?>"><?= $m['nama_kategori']; ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('detail', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<?= base_url('Admin/tampilan/info/sarana') ?>" class="btn btn-secondary">back</a>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div><?= form_close() ?>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>