<div class="bungkus">
    <!-- latest news -->
    <div class="main-search-input-wrap">
        <div class="main-search-input fl-wrap">
            <div class="main-search-input-item">
                <input type="text" name="search" id="cari_toko" onkeyup="myFunction()" placeholder="Cari Toko"> <span id="noresult" style="display:none;">No results found</span>
            </div>
            <button class="main-search-button"><i class="fas fa-search"></i></button>
        </div>
    </div>
    <div class="card-content" style="display: none">
        <?php foreach ($usaha as $u) : ?>
            <div class="toko carde">
                <div class="text-center">
                    <div class="product-image">
                        <img src="<?= base_url('assets/img/usaha/') . $u['gambar'] ?>" alt="">
                    </div>
                    <h3><?= $u['nama_toko'] ?></h3>
                    <p class="product-price"><span><?= $u['hari'] ?> </span> <?= date('H:i', strtotime($u['buka']));  ?> - <?= date('H:i', strtotime($u['tutup']));  ?> </p>
                    <a data-bs-toggle="modal" data-bs-target="#exampleModal<?= $u['id'] ?>" class="cart-btn"><i class="fas fa-shopping-cart"></i>Details</a>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
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
<!-- end latest news -->

<!-- Modal -->
<?php foreach ($usaha as $b) : ?>

    <div class="modal fade" id="exampleModal<?= $b['id'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Toko Davi</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <!-- <div class="col-sm-10">Picture</div> -->
                        <!-- <div class="col-sm-10"> -->
                        <div class="row">
                            <div class="col-sm-5">
                                <img src="<?= base_url('assets/img/usaha/') . $b['gambar'] ?>" class="img-thumbnail" id="foto">
                            </div>
                            <div class="col-sm-7">
                                <table>
                                    <tr>
                                        <td>Nama Toko</td>
                                        <td>:</td>
                                        <td><?= $b['nama_toko']; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Toko</td>
                                        <td>:</td>
                                        <td><?= $b['jenis_toko']; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Hari Buka</td>
                                        <td>:</td>
                                        <td><?= $b['hari']; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Waktu</td>
                                        <td>:</td>
                                        <td><?= $b['buka']; ?>-<?= $b['tutup'] ?></td>
                                    </tr>
                                    <tr>
                                        <td>Kontak</td>
                                        <td>:</td>
                                        <td><?= $b['kontak']; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Alamat</td>
                                        <td>:</td>
                                        <td><?= $b['alamat']; ?></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg">
                            <div><?= $b['deskripsi'] ?></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <a href="https://api.whatsapp.com/send/?phone=<?= $b['kontak'] ?>&text=Saya%20Tertarik%20dengan%20Produk%20yg%20anda%20Tawarkan%20pada%20website%20Kelurahan" type="button" class="btn btn-primary"><i class="fas fa-shopping-cart">Hubungi</i></a>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>