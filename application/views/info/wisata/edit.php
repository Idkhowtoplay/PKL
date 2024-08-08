        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg-8">
                    <?= form_error('wisata', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <!-- <?= $this->session->flashdata('wisata'); ?> -->

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- End of Main Content -->
                            <?php foreach ($wisata as $b) :
                                $id = $b['id']
                            ?>
                                <?= form_open_multipart('Admin/tampilan/info/wisata_edit/' . $id); ?>
                                <input type="hidden" name="id" value="<?= $id ?>">
                                <input type="hidden" name="penulis" value="<?= $user['name'] ?>">
                                <input type="hidden" name="old_image" value="<?= $b['gambar'] ?>">
                                <!-- <input type="hidden" name="edit_penulis" value="<?= $user['name'] ?>"> -->
                                <div class="from-group">
                                    <label>nama</label>
                                    <input type="name" name="nama" class="form-control" value="<?= $b['nama'] ?>">
                                    <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="from-group">
                                    <label>Konten</label>
                                    <textarea id="insert" name="konten" rows="10"><?= $b['konten'] ?></textarea>
                                    <?= form_error('konten', '<small class="text-danger pl-3">', '</small>'); ?>
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
                                                <img src="<?= base_url('assets/img/wisata/') . $b['gambar'] ?>" class="img-thumbnail" id="foto">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<?= base_url('Admin/tampilan/info/wisata') ?>" class="btn btn-secondary">back</a>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div><?= form_close() ?>
                    <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>