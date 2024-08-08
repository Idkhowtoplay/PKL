        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <!-- Pending Requests Card Example -->
            <div class="row">
                <div class="col-lg-8">
                    <?= form_error('penghargaan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('penghargaan'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/tampilan/info/penghargaan_add'); ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Tambah Data</button></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Gambar</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($penghargaan as $b) :
                                            $id = $b['id'];
                                            $gambar = $b['gambar'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $b['nama']; ?></td>
                                                <td>
                                                    <img src="<?= base_url('assets/img/penghargaan/') . $b['gambar']; ?>" class="img-thumbnail" height="100px" width="100px" alt="<?= $b['gambar'] ?>">
                                                </td>
                                                <td>
                                                    <button class="btn btn-info" data-toggle="modal" data-target="#read<?= $id ?>">
                                                        <div class="fas fa-eye"></div>
                                                    </button>
                                                    <a href="<?= base_url('Admin/tampilan/info/penghargaan_edit/') . $id ?>" class="btn btn-success">
                                                        <div class="fas fa-edit"></div>
                                                    </a>
                                                    <a href="<?= base_url('Admin/tampilan/info/delete_penghargaan/' . $id . '/' . $gambar) ?>" class="btn btn-danger">
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

            <?php foreach ($penghargaan as $b) :
                $id = $b['id'];
            ?>
                <div class="modal fade" id="read<?= $id ?>" tabindex="-1" aria-labelledby="readLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="readLabel">Detail Penghargaan</h5>
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
                                            <img src="<?= base_url('assets/img/penghargaan/') . $b['gambar'] ?>" class="img-thumbnail" id="foto">
                                        </div>
                                        <div class="col-sm-7">
                                            <table>
                                                <tr>
                                                    <td>Date Created</td>
                                                    <td>:</td>
                                                    <td><?= date('d F Y', $b['date_created']) ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Date Modify</td>
                                                    <td>:</td>
                                                    <td><?= date('d F Y', $b['date_modify']) ?></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg">
                                        <div class="judul">
                                            <h3 class="text-center"><?= $b['nama'] ?></h3>
                                        </div>
                                        <div><?= $b['info'] ?></div>
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