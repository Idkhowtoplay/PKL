        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <!-- Pending Requests Card Example -->
                <div class="col-lg">
                    <?= form_error('penduduk', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('penduduk'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/data/penduduk/tambah_data'); ?>" class="btn btn-primary float-right mb-0 ml-2 "><i class="fas fa-plus">Tambah Penduduk</i></a>
                            <a href="<?= base_url('Admin/tampilan/info/surat_add'); ?>" class="btn btn-outline-success float-right mb-0 ml-2" data-toggle="modal"><i class="fas fa-file-excel">Import Excel</i></a>
                            <a href="<?= base_url('Admin/tampilan/info/surat_add'); ?>" class="btn btn-outline-danger float-right mb-0 " data-toggle="modal"><i class="fas fa-file-pdf">Export PDF</i></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">NIK</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">NO. KK</th>
                                            <th scope="col">Jenis Kelamin</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($penduduk as $p) :
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $p->nik ?></td>
                                                <td><?= $p->nama ?></td>
                                                <td><?= $p->no_kk ?></td>
                                                <td><?= $p->jenis_kelamin; ?></td>
                                                <td>
                                                    <a href="<?= base_url('Admin/data/penduduk/pendudukSesuaiKK/') . $p->no_kk ?>" class="btn btn-success">
                                                        <div class="fas fa-search"></div>
                                                    </a>
                                                    <button class="btn btn-info" data-toggle="modal" data-target="#read<?= $p->id ?>">
                                                        <div class="fas fa-eye"></div>
                                                    </button>
                                                    <a href="<?= base_url('Admin/data/penduduk/edit_data/') . $p->id ?>" class="btn btn-success">
                                                        <div class="fas fa-edit"></div>
                                                    </a>
                                                    <a href="<?= base_url('Admin/data/penduduk/delete_data/' . $p->id) ?>" class="btn btn-danger">
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

                <?php foreach ($penduduk as $p) :
                ?>
                    <div class="modal fade" id="read<?= $p->id ?>" tabindex="-1" aria-labelledby="readLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="readLabel">Detail Penduduk</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="table-responsive">
                                                    <table class="table table-borderless border-right">
                                                        <tr>
                                                            <th>Nama</th>
                                                            <td>:</td>
                                                            <td><?= $p->nama; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Jenis Kelamin</th>
                                                            <td>:</td>
                                                            <td><?= $p->jenis_kelamin; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>NIK</th>
                                                            <td>:</td>
                                                            <td><?= $p->nik; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>No KK</th>
                                                            <td>:</td>
                                                            <td><?= $p->no_kk; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Tanggal Lahir</th>
                                                            <td>:</td>
                                                            <td><?= date('d F Y', strtotime($p->tanggal_lahir)); ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Tempat Lahir</th>
                                                            <td>:</td>
                                                            <td><?= $p->tempat_lahir; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>RT</th>
                                                            <td>:</td>
                                                            <td><?= $p->rt; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>RW</th>
                                                            <td>:</td>
                                                            <td><?= $p->rw; ?></td>
                                                        </tr>

                                                    </table>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="table-responsive">
                                                    <table class="table table-borderless">
                                                        <tr>
                                                            <th>Alamat Spesifik</th>
                                                            <td>:</td>
                                                            <td><?= $p->alamat_spesifik; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Agama</th>
                                                            <td>:</td>
                                                            <td><?= $p->agama; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Status Perkawinan</th>
                                                            <td>:</td>
                                                            <td><?= $p->status_perkawinan; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Status Pendidikan</th>
                                                            <td>:</td>
                                                            <td><?= $p->status_pendidikan; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Pekerjaan</th>
                                                            <td>:</td>
                                                            <td><?= $p->nama_pekerjaan ? $p->nama_pekerjaan : '-'; ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date Created</th>
                                                            <td>:</td>
                                                            <td><?= date('d F Y', $p->date_created); ?></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date Modify</th>
                                                            <td>:</td>
                                                            <td><?= date('d F Y', $p->date_modify); ?></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
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
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->