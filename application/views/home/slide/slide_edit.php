        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg">
                    <?= form_error('slide', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('menu'); ?>

                    <?php foreach ($slide as $s) :
                        $id = $s['id']
                    ?>
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <!-- End of Main Content -->
                                <?= form_open_multipart('Admin/tampilan/home/slide_edit/' . $id); ?>
                                <input type="hidden" name="id" value="<?= $id ?>">
                                <input type="hidden" name="old_image" value="<?= $s['image']; ?>">
                                <div class="from-group">
                                    <label>Name</label>
                                    <input type="name" name="name" class="form-control" value="<?= $s['name']; ?>">
                                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-10">Picture</div>
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-sm-9">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="file" name="image" value="<?= $s['image'] ?>">
                                                    <label class="custom-file-label" for="image" id="pilih">Choose file</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <img src="<?= base_url('assets/img/slide/') . $s['image']; ?>" class="img-thumbnail" id="foto">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="<?= base_url('Admin/tampilan/home/slide') ?>" class="btn btn-secondary">back</a>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div><?= form_close() ?>
                        <?php endforeach ?>
                        </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>