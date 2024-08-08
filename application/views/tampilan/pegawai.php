<!-- latest news -->
<div class="latest-news pt-150 pb-150">
    <div class="container">

        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-title">
                    <h3><span class="orange-text">Pegawai</span> Jayawaras</h3>
                    <p>Pegawai - Pegawai yang bekerja di kelurahan Jayawaras</p>
                </div>
            </div>
        </div>

        <div class="row">
            <?php foreach ($karyawan as $b) : ?>
                <div class="col-lg-3 col-md-6 mt-4">
                    <div class="team-box1">
                        <div class="item-shape"></div>
                        <div class="item-img">
                            <a><img src="<?= base_url('assets/img/karyawan/' . $b['photo']) ?>" alt="team"></a>
                            <!-- <ul class="team-social">
                                <li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                            </ul> -->
                        </div>
                        <div class="item-content">
                            <h3 class="item-title"><a><?= $b['nama'] ?></a></h3>
                            <h4 class="item-subtitle"><?= $b['jabatan'] ?></h4>
                            <h4 class="item-subtitle"><?= $b['nip'] ?></h4>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>


<!-- end latest news -->