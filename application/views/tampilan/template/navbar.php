<header id="site-header" class="site-header sticky-header header-static">
    <div class="octf-main-header">
        <div class="octf-area-wrap">
            <div class="container octf-mainbar-container">
                <div class="octf-mainbar">
                    <div class="octf-mainbar-row octf-row">
                        <div class="octf-col menu-col">
                            <nav id="site-navigation" class="main-navigation">
                                <ul class="menu">
                                    <li class="<?= $title == 'Beranda' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>">
                                        <a href="<?= base_url('tampilan/') ?>">Beranda</a>
                                    </li>
                                    <li class="<?= $title == 'Infografis' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/infografis') ?>">Infografis</a>
                                    </li>
                                    <li class="<?= $title == 'Profil' || $title == 'Struktur' || $title == 'Penghargaan' || $title == 'Berita' || $title == 'Geografis' || $title == 'Pegawai' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a>Tentang Desa</a>
                                        <ul class="sub-menu">
                                            <li><a href="<?= base_url('tampilan/profil') ?>">Profil</a></li>
                                            <li><a href="<?= base_url('tampilan/struktur') ?>">Struktur</a></li>
                                            <li><a href="<?= base_url('tampilan/penghargaan') ?>">penghargaan</a></li>
                                            <li><a href="<?= base_url('tampilan/berita') ?>">Berita</a></li>
                                            <li><a href="<?= base_url('tampilan/geografis') ?>">Geografis</a></li>
                                            <li><a href="<?= base_url('tampilan/karyawan') ?>">Pegawai</a></li>
                                        </ul>
                                    </li>
                                    <li class="<?= $title == 'Belanja' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/usaha') ?>">Belanja</a>
                                    </li>
                                    <li class="<?= $title == 'Wisata' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/wisata') ?>">Wisata</a>
                                    </li>
                                    <li class="<?= $title == 'Layanan' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/layanan') ?>">Layanan</a></li>
                                    <li class="<?= $title == 'Panduan' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/panduan') ?>">Panduan</a></li>
                                    <li class="<?= $title == 'Cek Pengajuan Surat' || $title == 'Pengajuan' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/cek_pengajuan') ?>">Pengecekan Pengajuan Surat</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header_mobile">
        <div class="container">
            <div class="mlogo_wrapper clearfix">
                <div class="mobile_logo">
                    <a href="index.html">
                        <img src="assets/favicon/favicon-32x32.png" alt="">
                    </a>
                </div>
                <div id="mmenu_toggle">
                    <button></button>
                </div>
            </div>
            <div class="mmenu_wrapper">
                <div class="mobile_nav collapse">
                    <ul id="menu-main-menu" class="mobile_mainmenu">
                        <li class="<?= $title == 'Beranda' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>">
                            <a href="<?= base_url('tampilan/') ?>">Beranda</a>
                        </li>
                        <li class="<?= $title == 'Infografis' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/infografis') ?>">Infografis</a>
                        </li>
                        <li class="<?= $title == 'Profil' || $title == 'Struktur' || $title == 'Penghargaan' || $title == 'Berita' || $title == 'Geografis' || $title == 'Pegawai' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>">
                            <div class=" dropdown">
                                <a>
                                    <span>Tentang Desa</span>
                                    <div class="dropdown-content">
                                        <a href="<?= base_url('tampilan/profil') ?>">Profil</a>
                                        <a href="<?= base_url('tampilan/struktur') ?>">Struktur</a>
                                        <a href="<?= base_url('tampilan/penghargaan') ?>">penghargaan</a>
                                        <a href="<?= base_url('tampilan/berita') ?>">Berita</a>
                                        <a href="<?= base_url('tampilan/geografis') ?>">Geografis</a>
                                        <a href="<?= base_url('tampilan/karyawan') ?>">Pegawai</a>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="<?= $title == 'Belanja' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/usaha') ?>">Belanja</a>
                        </li>
                        <li class="<?= $title == 'Wisata' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/wisata') ?>">Wisata</a>
                        </li>
                        <li class="<?= $title == 'Layanan' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/layanan') ?>">Layanan</a></li>
                        <li class="<?= $title == 'Panduan' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/panduan') ?>">Panduan</a></li>
                        <li class="<?= $title == 'Cek Pengajuan Surat' || $title == 'Pengajuan' ? 'menu-item-has-children current-menu-item current-menu-ancestor' : 'menu-item-has-children' ?>"><a href="<?= base_url('tampilan/cek_pengajuan') ?>">Pengecekan Pengajuan Surat</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</header>