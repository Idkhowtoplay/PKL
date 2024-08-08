<!-- single article section -->
<div class="mt-150 mb-150">
    <div class="container">
        <div class="row">
            <?php foreach ($penghargaan as $p) : ?>
                <div class="col-lg-8">
                    <div class="single-article-section">
                        <div class="single-article-text">
                            <div class="single-artcile-pg"><img src="<?= base_url('assets/img/penghargaan/' . $p['gambar']) ?>" alt=""></div>
                            <p class="blog-meta">
                                <span class="date"><i class="fas fa-calendar"></i> <?= date('d F Y', $p['date_created']); ?></span>
                            </p>
                            <h2><?= $p['nama'] ?></h2>
                            <?= $p['info'] ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <a href="<?= base_url('tampilan/penghargaan')?>" class="btn btn-primary text-center mt-100">Kembali</a>
    </div>
    <!-- end latest news -->
</div>