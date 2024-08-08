<!-- single article section -->
<div class="mt-150 mb-150">
    <div class="container">
        <div class="row">
            <?php foreach ($berita as $b) : ?>
                <div class="col-lg-8">
                    <div class="single-article-section">
                        <div class="single-article-text">
                            <div class="single-artcile-bg"><img src="<?= base_url('assets/img/berita/' . $b['gambar']) ?>" alt=""></div>
                            <p class="blog-meta">
                                <span class="author"><i class="fas fa-user"></i> <?= $b['penulis'] ?></span>
                                <span class="date"><i class="fas fa-calendar"></i> <?= date('d F Y', $b['date_created']); ?></span>
                            </p>
                            <h2><?= $b['judul'] ?></h2>
                            <?= $b['konten'] ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <a href="<?= base_url('tampilan/berita')?>" class="btn btn-primary text-center mt-100">Kembali</a>
    </div>
    <!-- end latest news -->
</div>
