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

                            <?= form_open_multipart('Admin/tampilan/info/berita_add'); ?>
                            <input type="hidden" name="id">
                            <input type="hidden" name="penulis" value="<?= $user['name'] ?>">
                            <!-- <div class="from-group">
                                    <label>Name</label>
                                    <input type="name" name="name" class="form-control">
                                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div> -->
                            <div class="from-group">
                                <label>Judul</label>
                                <input type="name" name="judul" class="form-control">
                                <?= form_error('judul', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="from-group">
                                <label>Konten</label>
                                <textarea id="insert" name="konten" rows="10"></textarea>
                                <?= form_error('konten', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10">Picture</div>
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="file" name="image">
                                                <label class="custom-file-label" for="image" id="pilih">Choose
                                                    file</label>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <img src="" class="img-thumbnail" id="foto">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<?= base_url('Admin/tampilan/info/berita') ?>" class="btn btn-secondary">back</a>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div><?= form_close() ?>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>