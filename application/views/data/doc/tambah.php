        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg-16">
                    <?= form_error('dokumen', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <!-- <?= $this->session->flashdata('dokumen'); ?> -->

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- End of Main Content -->

                            <?= form_open_multipart('Admin/data/data/dokumen_add'); ?>
                            <input type="hidden" name="id">
                            <input type="hidden" name="pengedit" value="<?= $user['name'] ?>">
                            <div class="from-group">
                                <label>Nama Dokumen</label>
                                <input type="name" name="nama" class="form-control">
                                <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label>Jenis Dokumen</label>
                                <select name="kategori" id="kategori" class="form-control">
                                    <option value="">Select Kategori</option>
                                    <?php foreach ($kategori as $m) : ?>
                                        <option value="<?= $m['id']; ?>"><?= $m['kategori']; ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('kategori', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10">Document</div>
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="file" name="dokumen">
                                                <label class="custom-file-label" for="dokumen" id="pilih">Choose
                                                    file</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<?= base_url('Admin/data/data/dokumen') ?>" class="btn btn-secondary">back</a>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div><?= form_close() ?>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>