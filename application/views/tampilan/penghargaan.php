<!-- latest news -->
<div class="bungkus">
    <div class="card-content" style="display: none">
        <?php foreach ($penghargaan as $p) : ?>
            <div class="carde">
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
        <?php endforeach; ?>
    </div>
    <!-- <img src="<?= base_url('assets/img/penghargaan/' . $p['gambar']) ?>" alt=""> -->
    <object data="" type=""></object>
    <div class="pagination">
        <li class="page-item previous-page disable"><a class="page-link" href="#">Prev</a></li>
        <li class="page-item current-page active"><a class="page-link" href="#">1</a></li>
        <li class="page-item dots"><a class="page-link" href="#">...</a></li>
        <li class="page-item current-page"><a class="page-link" href="#">5</a></li>
        <li class="page-item current-page"><a class="page-link" href="#">6</a></li>
        <li class="page-item dots"><a class="page-link" href="#">...</a></li>
        <li class="page-item current-page"><a class="page-link" href="#">10</a></li>
        <li class="page-item next-page"><a class="page-link" href="#">Next</a></li>
    </div>
</div>