        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="row">
                    <div class="col-lg">
                        <?= form_error('sambutan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                        <?= $this->session->flashdata('sambutan'); ?>
                        <?php foreach ($sambutan as $sam) : ?>
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <!-- modal target tambah data -->
                                    <a href="<?= base_url('Admin/tampilan/home/sambutan_edit/') . $sam['id']; ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Edit</button></a>
                                </div>
                                <div class="card-body">
                                    <!-- Sambutan -->
                                    <div class="Sambutan">
                                        <div class=" sambutan">
                                            <div class="image">
                                                <img src="<?= base_url('assets/img/sambutan/') . $sam['photo']; ?>" alt="">
                                            </div>
                                            <div class="kata">
                                                <h2 class="nama-Kepala-Desa" id="namaKepalaDesa"><?= $sam['nama']; ?></h2>
                                                <p class="jabatan" id="jabatan"><?= $sam['jabatan']; ?></p>
                                                <div class="show-more" style="text-align: justify;">
                                                    <?= $sam['sambutan']; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->