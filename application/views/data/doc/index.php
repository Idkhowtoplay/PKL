        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <!-- Pending Requests Card Example -->
            <div class="row">
                <div class="col-lg">
                    <?= form_error('dokumen', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('dokumen'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/data/data/dokumen_add'); ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Tambah dokumen</button></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Nama Dokumen</th>
                                            <th scope="col">Jenis Dokumen</th>
                                            <th scope="col">Di Tambahkan oleh</th>
                                            <th scope="col">Waktu Ditambahkan</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($dokumen as $b) :
                                            $id = $b['id'];
                                            $dokumen = $b['dokumen'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $b['nama']; ?></td>
                                                <td><?= $b['kategori']; ?></td>
                                                <td><?= $b['pengedit']; ?></td>
                                                <td><?= date('d F Y', $b['date_created']); ?></td>
                                                <td>
                                                    <a href='<?= base_url('Admin/data/data/download_doc/' . $id); ?>' class="btn btn-info">
                                                        <div class="fa fa-download"></div>
                                                    </a>
                                                    <a href="<?= base_url('Admin/data/data/delete_dokumen/' . $id . '/' . $dokumen) ?>" class="btn btn-danger">
                                                        <div class="fas fa-fw fa-trash-alt "></div>
                                                    </a>
                                                </td>
                                            </tr>
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->