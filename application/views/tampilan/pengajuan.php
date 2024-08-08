<section class="bg-dark-primary">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="ot-heading">
                    <span class="text-primary-light">LAYANAN WARGA</span>
                </div>
                <div class="space-20"></div>
            </div>
        </div>

        <div class="container">
            <!-- Table -->
            <div class="row">
                <div class="card">
                    <div class="row justify-content-center">
                        <div class="col-lg-3 order-lg-2">
                            <div class="image-center">
                                <a href="#">
                                    <img src="<?= base_url('assets/') ?>img/bg/pengajuan.png" class="image-circle"><BR>
                                </a>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="text-center">
                        <h3>
                            <?= $profile['nama']; ?><span class="font-weight-light"></span>
                        </h3>
                        <div class="h5 font-weight-300">
                            <i class="ni location_pin mr-2"></i><?= $profile['tanggal_lahir'] ?>
                        </div>
                        <div class="h5 mt-4">
                            <i class="ni business_briefcase-24 mr-2"></i>Nomor Induk Kependudukan<br><?= $profile['nik'] ?>
                        </div>
                        <div class="h5 mt-4">
                            <i class="ni business_briefcase-24 mr-2"></i>Kartu Keluarga<br><?= $profile['no_kk'] ?>
                        </div>
                        <div class="card-body pt-0 pt-md-4">
                            <div class="row">
                                <div class="col">
                                    <div class="d-flex justify-content-center space">
                                        <div class="card-count text-center">
                                            <h2 class="jum-penduduk" id="#" name="#"><?= $setuju ?></h2>
                                            <h5 class="ket-inf">Diterima</h5>
                                        </div>
                                        <div class="card-count text-center">
                                            <h2 class="jum-penduduk" id="#" name="#"><?= $pending ?></h2>
                                            <h5 class="ket-inf">Menunggu Persetujuan</h5>
                                        </div>
                                        <div class="card-count text-center">
                                            <h2 class="jum-penduduk" id="#" name="#"><?= $tolak ?></h2>
                                            <h5 class="ket-inf">Ditolak</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="my-4">
                            
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                <table class="table table-bordered table-hover" id="example" width="100%" cellspacing="0">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">No</th>
                                                                <th scope="col">Surat Yang di Ajukan</th>
                                                                <th scope="col">Tanggal Pengambilan</th>
                                                                <th scope="col">Persetujuan</th>
                                                                <th scope="col">Aksi</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php $i = 1; ?>
                                                            <?php foreach ($surat as $s) :
                                                                $id = $s['id'];
                                                                $status = $s['status'];
                                                            ?>
                                                                <tr>
                                                                    <th scope="row"><?= $i; ?></th>
                                                                    <td><?= $s['surat'] ?></td>
                                                                    <td><?= $s['tgl_pengambilan'] ?></td>
                                                                    <td><?php if ($status == 1) { ?>
                                                                            <button type="button" class="btn btn-success">Di Setujui</button>
                                                                        <?php } else if ($status == 0) { ?>
                                                                            <button type="button" class="btn btn-danger">Di tolak</button>
                                                                        <?php } else { ?>
                                                                            <button type="button" class="btn btn-secondary">Menunggu Persetujuan</button>
                                                                        <?php } ?>
                                                                    </td>
                                                                    <td><button class="btn btn-outline-primary" data-toggle="modal" data-target="#read<?= $id ?>"><i class="fas fa-clipboard-list"></i></button></td>
                                                                </tr>
                                                                <?php $i++; ?>
                                                            <?php endforeach; ?>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                    <!-- <table id="example" class="display" style="width:100%"> -->
                                                    
                                                    <!-- </table> -->
                                            </div>
                                <?php foreach ($surat as $b) :
                                    $id = $b['id'];
                                ?>
                                    <div class="modal fade" id="read<?= $id ?>" tabindex="-1" aria-labelledby="readLabel" aria-hidden="true">
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
                                                            <div class="col-lg-12 mt-2">
                                                                <label>Pesan:</label>
                                                                <div class="form-floating ml-3">
                                                                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" readonly><?= $b['pesan']; ?></textarea>
                                                                    <label for="floatingTextarea">Comments</label>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</section>