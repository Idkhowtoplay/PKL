<section class="bg-dark-primary">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="ot-heading">
                    <span class="text-primary-light" style="color: green"><?= $surat['jenis_dok'] ?></span>
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
                                <a href="#" style="width: 100px;">
                                    <img src="<?= base_url('assets/') ?>img/bg/valid.png" class=""><BR>
                                </a>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <br>
                    <div class="text-center">
                        <h3>
                            Status Dokumen<span class="font-weight-light"></span>
                        </h3>
                        <h5 class="ket-inf" style="color:green ;">AKTIF</h5>
                        <div class="h5 font-weight-300">
                            <i class="ni location_pin mr-2"></i>
                        </div>
                        <div class="h5 mt-4">
                            <i class="ni business_briefcase-24 mr-2"></i>No.NIK<br>
                            <div class="text-center">
                                <h5 class="ket-inf">
                                    <?= $sub_kalimat = substr($surat['nik'], 0, 10) . '******' ?>
                                </h5>
                            </div>
                        </div>
                        <div class="h5 mt-4">
                            <i class="ni business_briefcase-24 mr-2"></i>Nama Lengkap<br>
                            <div class="text-center">
                                <h5 class="ket-inf">
                                    <?= $surat['pengaju']; ?>
                                </h5>
                                <h5 style="color:blueviolet">Info Penandatanganan</h5>
                                <hr>
                            </div>
                        </div>

                        <div class="h5 mt-4">
                            <i class="ni business_briefcase-24 mr-2"></i>Daerah<br>
                            <div class="text-center">
                                <h5 class="ket-inf">
                                    Personal
                                </h5>
                            </div>
                        </div>
                        <div class="h5 mt-4">
                            <i class="ni business_briefcase-24 mr-2"></i>Lembaga<br>
                            <div class="text-center">
                                <h5 class="ket-inf">
                                    KELURAHAN JAYAWARAS
                                </h5>
                            </div>
                        </div>
                        <div class="h5 mt-4">
                            <i class="ni business_briefcase-24 mr-2"></i>Penandatangan<br>
                            <div class="text-center">
                                <h5 class="ket-inf">
                                    Agus Kusnadi, SE
                                </h5>
                            </div>
                        </div>
                        <div class="h5 mt-4">
                            <h5 style="color:blueviolet">Informasi
                            </h5>
                            <hr>
                            <i class="ni business_briefcase-24 mr-2"></i>Tanggal Surat<br>
                            <i class="fa fa-clock"> <?= date('d F Y', strtotime($surat['tgl_pengambilan'])) ?></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>