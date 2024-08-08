        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <!-- Pending Requests Card Example -->
            <div class="row">
                <div class="col-lg-8">
                    <?= form_error('usaha', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('usaha'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/tampilan/info/usaha_add'); ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Tambah Data</button></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Nama Toko</th>
                                            <th scope="col">Jenis Toko</th>
                                            <th scope="col">Gambar</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($usaha as $b) :
                                            $id = $b['id'];
                                            $gambar = $b['gambar'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $b['nama_toko']; ?></td>
                                                <td><?= $b['jenis_toko']; ?></td>
                                                <td>
                                                    <img src="<?= base_url('assets/img/usaha/') . $b['gambar']; ?>" class="img-thumbnail" height="80px" width="80px" alt="<?= $b['gambar'] ?>">
                                                </td>
                                                <td>
                                                    <button class="btn btn-info" data-toggle="modal" data-target="#read<?= $id ?>">
                                                        <div class="fas fa-eye"></div>
                                                    </button>
                                                    <a href="<?= base_url('Admin/tampilan/info/usaha_edit/') . $id ?>" class="btn btn-success">
                                                        <div class="fas fa-edit"></div>
                                                    </a>
                                                    <a href="<?= base_url('Admin/tampilan/info/delete_usaha/' . $id . '/' . $gambar) ?>" class="btn btn-danger">
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

            <?php foreach ($usaha as $b) :
                $id = $b['id'];
            ?>
                <div class="modal fade" id="read<?= $id ?>" tabindex="-1" aria-labelledby="readLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="readLabel">Detail usaha</h5>
                                <button type="button" class="close" data-dismiss="modal-read" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group row">
                                    <!-- <div class="col-sm-10">Picture</div> -->
                                    <!-- <div class="col-sm-10"> -->
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <img src="<?= base_url('assets/img/usaha/') . $b['gambar'] ?>" class="img-thumbnail" id="foto">
                                        </div>
                                        <div class="col-sm-7">
                                            <table>
                                                <tr>
                                                    <td>Nama Toko</td>
                                                    <td>:</td>
                                                    <td><?= $b['nama_toko']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Jenis Toko</td>
                                                    <td>:</td>
                                                    <td><?= $b['jenis_toko']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Hari Buka</td>
                                                    <td>:</td>
                                                    <td><?= $b['hari']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Waktu</td>
                                                    <td>:</td>
                                                    <td><?= $b['buka']; ?>-<?= $b['tutup'] ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Kontak</td>
                                                    <td>:</td>
                                                    <td><?= $b['kontak']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Alamat</td>
                                                    <td>:</td>
                                                    <td><?= $b['alamat']; ?></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg">
                                        <!-- <div class="judul">
                                                <h3 class="text-center"><?= $b['nama'] ?></h3>
                                            </div> -->
                                        <div><?= $b['deskripsi'] ?></div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->