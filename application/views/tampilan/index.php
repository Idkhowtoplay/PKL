<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <?php
        $i = 0;
        foreach ($slide as $s) : ?>
            <?php if ($i == 0) : ?>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<?= $i; ?>" class="active" aria-current="true" aria-label="<?= $i; ?>"></button>
                <li data-target="#carouselExampleIndicators" data-slide-to="<?= $i; ?>" class="active"></li>
            <?php else : ?>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<?= $i; ?>" aria-current="true" aria-label="<?= $i; ?>"></button>
            <?php endif; ?>
            <?php $i++; ?>
        <?php endforeach; ?>
    </div>
    <div class="carousel-inner">
        <?php
        $i = 0;
        foreach ($slide as $gambarSlider) : ?>
            <?php if ($i == 0) : ?>
                <div class="carousel-item active">
                    <img src="<?= base_url(); ?>assets/img/slide/<?= $gambarSlider['image']; ?>" class="d-block w-100">
                </div>
            <?php else : ?>
                <div class="carousel-item">
                    <img src="<?= base_url(); ?>assets/img/slide/<?= $gambarSlider['image']; ?>" class="d-block w-100">
                </div>
            <?php endif; ?>
        <?php $i++;
        endforeach; ?>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<!-- Sambutan -->
<div class="Sambutan">
    <div class="judul-sambutan">
        <h1>Sambutan Kepala Lurah</h1>
    </div>
    <div class="row justify-content-md-center">
        <div class="col-lg-3 text-center mt-5">
            <img src="<?= base_url('assets/'); ?>img/sambutan/<?= $sambutan['photo']; ?>" class="rounded mx-auto d-block" width="350px" alt="">
        </div>
        <div class="col-lg-7">
            <div class="sambutan-semua col-10">
                <div class="text-sambutan">
                    <h3><?= $sambutan['nama'] ?></h3>
                    <h5><?= $sambutan['jabatan'] ?></h5>
                    <?= $sambutan['sambutan'] ?>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Info -->
<article id="wrapInfoArea">
    <section>
        <div class="info-angka">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xl-3 mt-3 text-center">
                        <img src="<?= base_url('assets/') ?>img/icon/map.svg" width="50" style="margin-top: -10px;" />
                        <h2 style="font-weight: 700; font-size: 1.5rem; color: white; margin-left: 10px;">
                            Area
                        </h2>
                    </div>
                    <div class="col-6 col-md-4 col-xl-3 text-center">
                        <p class="jumlahKeterangan">2.500m<sup>2</sup></p>
                        <p class="textKeterangan">Luas Tanah Kas Desa</p>
                    </div>
                    <div class="col-6 col-md-4 col-xl-3 text-center">
                        <p class="jumlahKeterangan">0m<sup>2</sup></p>
                        <p class="textKeterangan">Luas Tanah di Desa</p>
                    </div>
                    <div class="col-12 col-md-4 col-xl-3 text-center">
                        <p class="jumlahKeterangan">4.563.979m<sup>2</sup></p>
                        <p class="textKeterangan">Luas DHKP</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="info-angka populasi" style="margin-top: 0;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xl-3 mt-3 text-center">
                        <img src="<?= base_url('assets/') ?>img/icon/team.svg" width="50" style="margin-top: -10px;" />
                        <h2 style="font-weight: 700; font-size: 1.5rem;color: white;margin-left: 10px;">
                            Populasi
                        </h2>
                    </div>
                    <div class="col-4 col-md-4 col-xl-3 text-center">
                        <p class="jumlahKeterangan"><?= $cowok + $cewek ?></p>
                        <p class="textKeterangan">Penduduk</p>
                    </div>
                    <div class="col-4 col-md-4 col-xl-3 text-center">
                        <p class="jumlahKeterangan"><?= $cowok ?></p>
                        <p class="textKeterangan">Laki-Laki</p>
                    </div>
                    <div class="col-4 col-md-4 col-xl-3 text-center">
                        <p class="jumlahKeterangan"><?= $cewek ?></p>
                        <p class="textKeterangan">Perempuan</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="info-angka populasi" style="margin-top: 0; padding: 20px;">
            <div class="container">
                <div class="butt-info">
                    <a href="<?= base_url('tampilan/infografis') ?>" class="btn btn-outline-warning" type="submit">Tampilkan Info Grafis</a>
                </div>
            </div>
        </div>
    </section>
</article>
<br><br><br><br>

<section class="mb-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-title">
                    <h3><span class="orange-text">Video</span> Profil Jayawaras</h3>
                    <p>video yang menggambarkan jalan Menuju Kelurahan Jayawaras<br>
                        Jl.Gordah No.40, Kel.Jayawaras, Kec.Tarogong kidul</p>

                </div>
            </div>
        </div>

        <div class="row justify-content-md-center ">
            <div class="col-lg-12">
                <center>
                    <video src="<?= base_url('assets/file/profile/') . $video['video']; ?>" class="img-thumbnail" id="video" height="240px" controls>
                    </video>
                </center>
            </div>
        </div>
    </div>
</section>

<<!-- latest news -->
    <div class="latest-news pt-100 pb-150">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <div class="section-title">
                        <h3><span class="orange-text">Berita</span> Kependudukan</h3>
                        <p>Berita yang disediakan seputar kegiatan dan juga agenda kelurahan Jayawaras</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <?php foreach ($berita as $b) : ?>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-latest-news">
                            <a href="<?= base_url('tampilan/detail_berita/' . $b['id']) ?>">
                                <div class="blog-img">
                                    <img src="<?= base_url('assets/img/berita/' . $b['gambar']) ?>" alt="Blog">
                                </div>
                            </a>
                            <div class="news-text-box">
                                <h3><a href="<?= base_url('tampilan/detail_berita/' . $b['id']) ?>"><?= $b['judul'] ?></a></h3>
                                <p class="blog-meta">
                                    <span class="author"><i class="fas fa-user"></i> <?= $b['penulis'] ?></span>
                                    <span class="date"><i class="fas fa-calendar"></i> <?= date('d F Y', $b['date_created']); ?></span>
                                </p>
                                <p class="excerpt"><?= ellipsize($b['konten'], 10, 100)  ?> </p>
                                <a href="<?= base_url('tampilan/detail_berita/' . $b['id']) ?>" class="read-more-btn">Baca Selengkapnya <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a href="<?= base_url('tampilan/berita') ?>" class="boxed-btn">Lihat Lebih Banyak</a>
                </div>
            </div>
        </div>
    </div>
    <!-- end latest news -->

    <!-- Penghargaan -->
    <div class="latest-news pt-100 pb-150">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <div class="section-title">
                        <h3><span class="orange-text">Berita</span> Penghargaan</h3>
                        <p>Penghargaan Yang DiDapatkan juga di peroleh oleh jayawas</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <?php foreach ($penghargaan as $p) : ?>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-latest-news">
                            <a href="<?= base_url('tampilan/detail_penghargaan/' . $p['id']) ?>">
                                <div class="blog-img">
                                    <img src="<?= base_url('assets/img/penghargaan/' . $p['gambar']) ?>" alt="Blog">
                                </div>
                            </a>
                            <div class="news-text-box">
                                <h3><a href="<?= base_url('tampilan/detail_penghargaan/' . $p['id']) ?>"><?= $p['nama'] ?></a></h3>
                                <p class="blog-meta">
                                    <span class="date"><i class="fas fa-calendar"></i> <?= date('d F Y', $p['date_created']); ?></span>
                                </p>
                                <p class="excerpt"><?= ellipsize($p['info'], 10, 100)  ?> </p>
                                <a href="<?= base_url('tampilan/detail_penghargaan/' . $p['id']) ?>" class="read-more-btn">Baca Selengkapnya <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="<?= base_url('tampilan/penghargaan') ?>" class="boxed-btn">Lihat Lebih Banyak</a>
                    </div>
                </div>
            </div>
        </div>
    </div>