<!-- single article section -->
<div class="mt-150 mb-150">
    <div class="container">
        <div class="row">
            <?php foreach ($wisata as $w) : ?>
                <div class="col-lg-8">
                    <div class="single-article-section">
                        <div class="single-article-text">
                            <div class="single-artcile-pg"><img src="<?= base_url('assets/img/wisata/' . $w['gambar']) ?>" alt=""></div>
                            <p class="blog-meta">
                            <span class="author"><i class="fas fa-user"></i> <?= $w['penulis'] ?></span>
                                <span class="date"><i class="fas fa-calendar"></i> <?= date('d F Y', $w['date_created']); ?></span>
                            </p>
                            <h2><?= $w['nama'] ?></h2>
                            <?= $w['konten'] ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <a href="<?= base_url('tampilan/wisata')?>" class="btn btn-primary text-center mt-100">Kembali</a>
    </div>
    <!-- end latest news -->
</div>