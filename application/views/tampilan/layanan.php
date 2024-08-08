<section class="bg-dark-primary">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="ot-heading">
                    <span class="text-primary-light">LAYANAN WARGA</span>
                    <h2 class="main-heading text-white">Design the Concept <br> of Your Business Idea Now</h2>
                </div>
                <div class="space-20"></div>
            </div>
        </div>
        <div class="row">
            <?php

            $i = 0;
            foreach ($document as $b) :
                $i++;
                if ($i < 10) {
                    $a = '0' . $i;
                } else {
                    $a = $i;
                }
                // $id = $b['id'];
                $surat = $b['nama'];
            ?>
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 mb-5">
                    <div class="serv-box-2 s2">
                        <span class="big-number"><?= $a; ?></span>
                        <div class="icon-main"><span class="flaticon-tablet"></span></div>
                        <div class="content-box">
                            <h5><?= $b['nama']; ?></h5>
                            <div>Jika anda ingin membuat <?= $surat ?> klik tombol di bawah!</div>
                            <a href="<?= base_url('tampilan/surat/') . $b['id']; ?>" class=" btn-details">BUAT SURAT</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>