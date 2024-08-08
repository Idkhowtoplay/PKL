        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="row">
                    <div class="col-lg">

                        <?= $this->session->flashdata('pekerjaan'); ?>

                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <!-- modal target tambah data -->
                                <button type="button" class="btn btn-primary float-right mb-0 btn-sm" data-toggle="modal" data-target="#tambahData">
                                    <i class="fas fa-plus"></i>
                                    <span>Tambah Data</span>
                                </button>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th scope="col">No</th>
                                                <th scope="col">Nama Pekerjaan</th>
                                                <th scope="col">Date Created</th>
                                                <th scope="col">Date Modify</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $i = 1; ?>
                                            <?php foreach ($pekerjaan as $p) :
                                            ?>
                                                <tr>
                                                    <th scope="row"><?= $i; ?></th>
                                                    <td><?= $p->nama_pekerjaan ?></td>
                                                    <td><?= date('d F Y',$p->date_created); ?></td>
                                                    <td><?= date('d F Y',$p->date_modify); ?></td>
                                                    <td>
                                                        <button type="button" class="btn btn-sm btn-success mr-2" data-toggle="modal" data-target="#ubahData<?= $p->id_pekerjaan ?>">
                                                            <i class="fas fa-edit"></i>
                                                        </button>
                                                        <a href="<?= base_url('Admin/data/pekerjaan/delete_data/' . $p->id_pekerjaan) ?>" class="btn btn-danger btn-sm">
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
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->


        <!-- Modal Tambah -->
<div class="modal fade" id="tambahData" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Pekerjaan Penduduk</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= base_url('Admin/data/pekerjaan/tambah_aksi') ?>">
                    <div class="form-group">
                        <label for="mata_pelajaran">Pekerjaan Penduduk</label>
                        <input type="text" name="nama_pekerjaan" id="nama_pekerjaan" autocomplete="off" autofocus required class="form-control">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary float-right">
                    <i class="fas fa-paper-plane"></i> Simpan</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Edit -->
<?php foreach ($pekerjaan as $p) : ?>
    <div class="modal fade" id="ubahData<?= $p->id_pekerjaan ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ubah Pekerjaan Penduduk</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="<?= base_url('Admin/data/pekerjaan/edit_aksi') ?>">
                        <input type="hidden" name="id_pekerjaan" value="<?= $p->id_pekerjaan; ?>">
                        <div class="form-group">
                            <label for="mata_pelajaran">Pekerjaan Penduduk</label>
                            <input type="text" name="nama_pekerjaan" id="nama_pekerjaan" autocomplete="off" autofocus required class="form-control" value="<?= $p->nama_pekerjaan ?>">
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary float-right">
                        <i class="fas fa-paper-plane"></i> Simpan</button>
                </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach; ?>