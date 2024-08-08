        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <!-- Pending Requests Card Example -->
            <div class="row">
                <div class="col-lg">
                    <?= form_error('surat', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('surat'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/tampilan/info/surat_add'); ?>" class="btn btn-outline-success float-right mb-0 ml-2" data-toggle="modal"><i class="fas fa-file-excel">Download Excel</i></a>
                            <a href="<?= base_url('Admin/tampilan/info/surat_add'); ?>" class="btn btn-outline-danger float-right mb-0 " data-toggle="modal"><i class="fas fa-file-pdf">Download PDF</i></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Permintaan Pembuatan Surat</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">NIK</th>
                                            <th scope="col">RT/RW</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Tanggal Di Tambahkan</th>
                                            <th scope="col">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($surat as $b) :
                                            $id = $b['idus'];
                                            $status = $b['status'];

                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $b['nadok']; ?></td>
                                                <td><?= $b['pengaju']; ?></td>
                                                <td><?= $b['nik']; ?></td>
                                                <td><?= $b['rt']; ?> / <?= $b['rw']; ?></td>
                                                <td>
                                                    <?php if ($status == 1) { ?>
                                                        <button type="button" class="btn btn-warning">Diajukan</button>
                                                    <?php } else if ($status == 0) { ?>
                                                        <button type="button" class="btn btn-danger">Ditolak</button>
                                                    <?php } else if ($status == 2) { ?>
                                                        <button type="button" class="btn btn-secondary">Belum di Proses</button>
                                                    <?php } else if ($status == 3) { ?>
                                                        <button type="button" class="btn btn-success">Terbit</button>
                                                    <?php } ?>
                                                </td>
                                                <td><?= date('d F Y', $b['dibuat']); ?></td>
                                                <td>
                                                    <button class="btn btn-info" data-toggle="modal" data-target="#read<?= $b['idus'] ?>">
                                                        <div class="fas fa-eye"></div>
                                                    </button>
                                                    <button class="btn btn-success" data-toggle="modal" data-target="#edit<?= $b['idus'] ?>">
                                                        <i class="fas fa-paper-plane"></i>
                                                    </button>
                                                    <a href="<?= base_url('Admin/data/surat/') . $b['jenis'] . '/' . $b['idus'] ?>" class="btn btn-warning" target="_blank">
                                                        <i class="fas fa-print"></i>
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
                    <?php foreach ($surat as $b) :
                        $id = $b['idus'];
                    ?>
                        <div class="modal fade" id="read<?= $b['idus'] ?>" tabindex="-1" aria-labelledby="readLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="readLabel">Detail surat</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group row">
                                            <div class="row">
                                                <div class="col-lg mb-3">
                                                    <input type="text" name="id" value="<?= $b['idus'] ?>" hidden>
                                                    <div class="col-lg-6 mt-1">
                                                        <label>KK</label>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <a href="<?= base_url('assets/file/surat/' . $b['kk']) ?>" target="_blank" class="btn btn-info">download/view</a>
                                                    </div>
                                                </div>
                                                <div class="col-lg mb-3">
                                                    <div class="col-lg-6 mt-1">
                                                        <label>KTP</label>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <a href="<?= base_url('assets/file/surat/' . $b['ktp']) ?>" target="_blank" class="btn btn-info">download/view</a>
                                                    </div>
                                                </div>
                                                <div class="col-lg mb-3">
                                                    <div class="col-lg-6 mt-1">
                                                        <label>Surat Pengantar RT/RW</label>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <a href="<?= base_url('assets/file/surat/' . $b['surat_pengantar']) ?>" target="_blank" class="btn btn-info">download/view</a>
                                                    </div>
                                                    <div class="col-lg-12 mt-2">
                                                        <label>Diajukan oleh : </label>
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" value="<?= $b['pengedit'] ?>" disabled>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 mt-2">
                                                        <label>Keterangan</label>
                                                        <div class="form-floating">
                                                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" rows="5" readonly><?= $b['pesan'] ?></textarea>
                                                        </div>
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
                    <?php endforeach; ?>
                    <!-- edit -->
                    <?php foreach ($surat as $b) :
                        $id = $b['idus'];
                    ?>
                        <div class="modal fade" id="edit<?= $b['idus'] ?>" tabindex="-1" aria-labelledby="editLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="editLabel">Pesan Persetujuan</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <?= form_open_multipart('admin/data/approval/surat_ttd/' . $b['idus']); ?>
                                        <div class="form-group">
                                            <input type="text" name="pengedit" id="" value="<?= $user['name']; ?>" hidden>
                                            <input type="text" name="id" value="<?= $b['idus'] ?>" hidden>
                                            <label>Verifikasi Surat</label>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="form-check">
                                                        <label class="form-check-label" for="flexRadioDefault1">
                                                            <input class="form-check-input detail" type="radio" name="status" id="status" value="3" <?php if ($b['status'] == '1') {
                                                                                                                                                        echo 'checked';
                                                                                                                                                    } ?>>
                                                            Terima dan Tanda tangan
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-check">
                                                        <label class="form-check-label" for="flexRadioDefault1">
                                                            <input class="form-check-input detail" type="radio" name="status" id="status" value="0" <?php if ($b['status'] == '0') {
                                                                                                                                                        echo 'checked';
                                                                                                                                                    } ?>>
                                                            Tolak Pengajuan
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 mt-2">
                                                    <label>PIN TTD</label>
                                                    <input type="password" name="pinttd" id="pinttd" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Kirim</button>
                                    </div>
                                    <?= form_close() ?>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>

        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->