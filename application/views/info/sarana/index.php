        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg">
                    <?= form_error('sarana', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('sarana'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/tampilan/info/sarana_add'); ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Tambah Sarana</button></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Nama Kategori</th>
                                            <th scope="col">kategori</th>
                                            <th scope="col">Pengedit</th>
                                            <th scope="col">Tanggal Di Tambahkan</th>
                                            <th scope="col">Tanggal Di Perbatui</th>
                                            <th scope="col">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($sarana as $b) :
                                            $id = $b['id'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $b['nama_spesifik']; ?></td>
                                                <td><?= $b['nama_kategori']; ?></td>
                                                <td><?= $b['kategori']; ?></td>
                                                <td><?= $b['modif_by']; ?></td>
                                                <td><?= date('d F Y', $b['date_created']); ?></td>
                                                <td><?= date('d F Y', $b['date_modify']); ?></td>
                                                <td>
                                                    <a href="<?= base_url('Admin/tampilan/info/sarana_edit/') . $id ?>" class="btn btn-success">
                                                        <div class="fas fa-edit"></div>
                                                    </a>
                                                    <a href="<?= base_url('Admin/tampilan/info/delete_sarana/' . $id) ?>" class="btn btn-danger">
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