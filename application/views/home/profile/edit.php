        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg">
                    <?= form_error('usaha', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <!-- <?= $this->session->flashdata('usaha'); ?> -->

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- End of Main Content -->
                            <?php foreach ($profile as $b) :
                                $id = $b['id'];
                                $video = $b['video'];
                                $gambar = $b['gambar'];
                            ?>
                                <?= form_open_multipart('Admin/tampilan/home/profile_edit/' . $id); ?>
                                <input type="hidden" name="id" value="<?= $id ?>">
                                <input type="hidden" name="old_video" value="<?= $video ?>">
                                <input type="hidden" name="old_image" value="<?= $gambar ?>">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="from-group">
                                                <label>Visi</label>
                                                <textarea class="insert" name="visi" rows="10" data-id="1"><?= $b['visi']; ?></textarea>
                                                <?= form_error('visi', '<small class="text-danger pl-3">', '</small>'); ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="from-group">
                                                <label>Misi</label>
                                                <textarea class="insert" name="misi" rows="10" data-id="2"><?= $b['misi']; ?></textarea>
                                                <?= form_error('misi', '<small class="text-danger pl-3">', '</small>'); ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="from-group">
                                                <label>Tujuan</label>
                                                <textarea class="insert" name="tujuan" rows="10" data-id="3"><?= $b['tujuan']; ?></textarea>
                                                <?= form_error('tujuan', '<small class="text-danger pl-3">', '</small>'); ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="from-group">
                                                <label>Sejarah</label>
                                                <textarea class="insert" class="insert" name="sejarah" rows="10" data-id="4"><?= $b['sejarah']; ?></textarea>
                                                <?= form_error('sejarah', '<small class="text-danger pl-3">', '</small>'); ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label>Gambar</label>
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="file" name="image">
                                                <label class="custom-file-label" for="image" id="pilih">Choose
                                                    file</label>
                                            </div>
                                            <br>
                                            <center>
                                                <img src="<?= base_url('assets/file/profile/') . $b['gambar']; ?>" class="img-thumbnail" id="foto" width="320" height="240">
                                            </center>
                                        </div>
                                        <div class="col-lg-6">
                                            <label>Video</label>
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="videoUpload" name="video">
                                                <label class="custom-file-label" for="video" id="pilih">Choose
                                                    file</label>
                                            </div>
                                            <br>
                                            <center>
                                                <video src="<?= base_url('assets/file/profile/') . $b['video']; ?>" class="img-thumbnail" id="video" width="320" height="240" controls>
                                                </video>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <a href="<?= base_url('Admin/tampilan/home/profile') ?>" class="btn btn-secondary">back</a>
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div><?= form_close() ?>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>