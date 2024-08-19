        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>



            <div class="row">
                <div class="col-lg-12">
                    <?= form_error('kategori', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('kategori'); ?>

                    <?php $id = $struktur->id ?>
                    <div class="card shadow mb-4">
                        <!-- <input type="hidden" name="as" value="asu"> -->
                        <div class="card-header py-3">
                            <a href='<?= base_url('Admin/data/data/download_struk/' . $id); ?>' class="btn btn-danger float-right mb-0 ml-1">
                                <div class="fa fa-download"></div>
                            </a>
                            <?= form_open_multipart('Admin/data/data/struktur_edit/' . $id); ?>
                            <!-- modal target tambah data -->
                            <button type="submit" class="btn btn-primary float-right mb-0">Save</button>
                            <!-- <button type="submit" class="btn btn-primary float-right mb-0" data-toggle="modal" data-target="#Edit<?= $id ?>">Edit</button> -->
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <input type="hidden" name="old_image" value="<?= $struktur->gambar; ?>">
                                <div class="col-sm-6">
                                    <div class="align-center">
                                        <label for="">Ubah Struktur</label>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="file" name="gambar">
                                            <label class="custom-file-label" for="gambar" id="pilih">Choose
                                                file</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row justify-content-md-center">
                                <img src="<?= base_url('assets/file/struktur/') . $struktur->gambar; ?>" class="img-thumbnail" id="foto">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?= form_close() ?>
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->