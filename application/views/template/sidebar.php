<!-- Sidebar -->
<ul class="navbar-nav sidebar sidebar-dark accordion" style="background-image: url(<?= base_url('assets/img/bg/bg.jpg') ?>);" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center mt-4 mb-3" href="">
        <div class="sidebar-brand-icon">
            <i class="fas fa-university "></i>
        </div>
        <div class="sidebar-brand-text mx-3">Jayawaras</div>
    </a>


    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Nav Item - Dashboard -->
    <li class="<?= $title == 'Dashboard' ? 'nav-item active' : 'nav-item' ?>">
        <a class="nav-link" href="<?= base_url('Admin/dashboard/index') ?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>
    <?php if ($user['id_type'] == 1) { ?>
        <li class="<?= $title == 'User Management' || $title == 'User Role' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#User" aria-expanded="true" aria-controls="User">
                <i class="fas fa-users-cog"></i>
                <span>User Management</span>
            </a>
            <div id="User" class="<?= $title == 'User Management' || $title == 'User Role' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">home:</h6>
                    <a class="<?= $title == 'User Management' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/admin/user') ?>">User Management</a>
                    <a class="<?= $title == 'User Role' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/admin/role') ?>">User Role</a>
                </div>
            </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Tampilan
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="<?= $title == 'Slide' || $title == 'Edit Slide' || $title == 'Tambah Slide' || $title == 'Sambutan' || $title == 'Edit Sambutan' || $title == 'Profile' || $title == 'Edit Profile' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#home" aria-expanded="true" aria-controls="home">
                <i class="fas fa-laptop-house"></i>
                <span>Home</span>
            </a>
            <div id="home" class="<?= $title == 'Slide' || $title == 'Edit Slide' || $title == 'Tambah Slide' || $title == 'Sambutan' || $title == 'Edit Sambutan' || $title == 'Profile' || $title == 'Edit Profile' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">home:</h6>
                    <a class="<?= $title == 'Slide' || $title == 'Edit Slide' || $title == 'Tambah Slide' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/home/slide') ?>">Slide</a>
                    <a class="<?= $title == 'Sambutan' || $title == 'Edit Sambutann' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/home/sambutan') ?>">Sambutan</a>
                    <a class="<?= $title == 'Profile' || $title == 'Edit Profile' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/home/profile') ?>">Profile</a>
                </div>
            </div>
        </li>
        <li class="<?= $title == 'Berita' || $title == 'Edit Berita' || $title == 'Tambah Berita' || $title == 'Penghargaan' || $title == 'Edit Penghargaan' || $title == 'Tambah Penghargaan' || $title == 'Usaha' || $title == 'Edit Usaha' || $title == 'Tambah Usaha' || $title == 'Wisata' || $title == 'Edit Wisata' || $title == 'Tambah Wisata' || $title == 'Sarana' || $title == 'Edit Sarana' || $title == 'Tambah Sarana' || $title == 'Kategori Sarana' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#info" aria-expanded="true" aria-controls="info">
                <i class="fas fa-info-circle"></i>
                <span>Info</span>
            </a>
            <div id="info" class="<?= $title == 'Berita' || $title == 'Edit Berita' || $title == 'Tambah Berita' || $title == 'Penghargaan' || $title == 'Edit Penghargaan' || $title == 'Tambah Penghargaan' || $title == 'Usaha' || $title == 'Edit Usaha' || $title == 'Tambah Usaha' || $title == 'Wisata' || $title == 'Edit Wisata' || $title == 'Tambah Wisata' || $title == 'Sarana' || $title == 'Edit Sarana' || $title == 'Tambah Sarana' || $title == 'Kategori Sarana' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Info:</h6>
                    <a class="<?= $title == 'Berita' || $title == 'Edit Berita' || $title == 'Tambah Berita' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/berita') ?>">Berita</a>
                    <a class="<?= $title == 'Wisata' || $title == 'Edit Wisata' || $title == 'Tambah Wisata' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/wisata') ?>">Wisata</a>
                    <a class="<?= $title == 'Penghargaan' || $title == 'Edit Penghargaan' || $title == 'Tambah Penghargaan' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/penghargaan') ?>">Penghargaan</a>
                    <a class="<?= $title == 'Usaha' || $title == 'Edit Usaha' || $title == 'Tambah Usaha' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/usaha') ?>">Usaha</a>
                    <a class="<?= $title == 'Sarana' || $title == 'Edit Sarana' || $title == 'Tambah Sarana' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/sarana') ?>">Sarana</a>
                    <h6 class="collapse-header">Kategori:</h6>
                    <a class="<?= $title == 'Kategori Sarana' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/kategori') ?>">Sarana Kategori</a>
                </div>
            </div>
        </li>


        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Data
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="<?= $title == 'Data Penduduk' || $title == 'Edit Data Penduduk' || $title == 'Tambah Data Penduduk' || $title == 'Pekerjaan Penduduk' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Penduduk" aria-expanded="true" aria-controls="Penduduk">
                <i class="fas fa-users"></i>
                <span>Penduduk</span>
            </a>
            <div id="Penduduk" class="<?= $title == 'Data Penduduk' || $title == 'Edit Data Penduduk' ||  $title == 'Tambah Data Penduduk' ||  $title == 'Pekerjaan Penduduk' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Data:</h6>
                    <a class="<?= $title == 'Data Penduduk' || $title == 'Edit Data Penduduk' || $title == 'Tambah Data Penduduk' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/penduduk') ?>">Data Penduduk</a>
                    <a class="<?= $title == 'Pekerjaan Penduduk' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/pekerjaan') ?>">Pekerjaan Penduduk</a>
                </div>
            </div>
        </li>
        <li class="<?= $title == 'Penjual' || $title == 'Edit Penjual' || $title == 'Tambah Penjual' || $title == 'Surat' || $title == 'Edit Surat' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Layanan" aria-expanded="true" aria-controls="Layanan">
                <i class="fas fa-mail-bulk"></i>
                <span>Layanan Warga</span>
            </a>
            <div id="Layanan" class="<?= $title == 'Penjual' || $title == 'Edit Penjual' || $title == 'Tambah Penjual' || $title == 'Surat' || $title == 'Edit Surat' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Layanan:</h6>
                    <!-- <a class="<?= $title == 'Penjual' || $title == 'Edit Penjual' || $title == 'Tambah Penjual' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('#') ?>">Penjual</a> -->
                    <a class="<?= $title == 'Surat' || $title == 'Edit Surat' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/layanan/surat') ?>">Surat</a>
                </div>
            </div>
        </li>

        <li class="<?= $title == 'Data Karyawan' || $title == 'Edit Data Karyawan' || $title == 'Tambah Data Karyawan' || $title == 'Struktur' || $title == 'Perangkat Desa' || $title == 'Lembaga Desa'  ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Karyawan" aria-expanded="true" aria-controls="Karyawan">
                <i class="fas fa-user-tie"></i>
                <span>Karyawan</span>
            </a>
            <div id="Karyawan" class="<?= $title == 'Data Karyawan' || $title == 'Edit Data Karyawan' || $title == 'Tambah Data Karyawan' || $title == 'Struktur' || $title == 'Perangkat Desa' || $title == 'Lembaga Desa'  ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Data:</h6>
                    <a class="<?= $title == 'Data Karyawan' || $title == 'Edit Data Karyawan' || $title == 'Tambah Data Karyawan' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/karyawan') ?>">Data Karyawan</a>
                    <a class="<?= $title == 'Struktur' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/struktur') ?>">Struktur</a>
                    <h6 class="collapse-header">Kategori:</h6>
                    <a class="<?= $title == 'Perangkat Desa' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/perangkat') ?>">Perangkat Desa</a>
                    <a class="<?= $title == 'Lembaga Desa' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/lembaga') ?>">Lembaga Desa</a>
                </div>
            </div>
        </li>

        <li class="<?= $title == 'Dokumen' || $title == 'Edit Dokumen' || $title == 'Tambah Dokumen'  || $title == 'Kategori Dokumen' || $title == 'Edit Kategori Dokumen' || $title == 'Tambah Kategori Doc' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Dokumen" aria-expanded="true" aria-controls="Dokumen">
                <i class="fas fa-folder-open"></i>
                <span>Dokumen</span>
            </a>
            <div id="Dokumen" class="<?= $title == 'Dokumen' || $title == 'Edit Dokumen' || $title == 'Tambah Dokumen'  || $title == 'Kategori Dokumen'  ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Dokumen:</h6>
                    <a class="<?= $title == 'Dokumen' || $title == 'Edit Dokumen' || $title == 'Tambah Dokumen' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/Dokumen') ?>">Dokumen</a>
                    <a class="<?= $title == 'Kategori Dokumen' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/kategori') ?>">Kategori Dokumen</a>
                </div>
            </div>
        </li>
    <?php } else  if ($user['id_type'] == 2) { ?>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Tampilan
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="<?= $title == 'Slide' || $title == 'Edit Slide' || $title == 'Tambah Slide' || $title == 'Sambutan' || $title == 'Edit Sambutan' || $title == 'Profile' || $title == 'Edit Profile' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#home" aria-expanded="true" aria-controls="home">
                <i class="fas fa-laptop-house"></i>
                <span>Home</span>
            </a>
            <div id="home" class="<?= $title == 'Slide' || $title == 'Edit Slide' || $title == 'Tambah Slide' || $title == 'Sambutan' || $title == 'Edit Sambutan' || $title == 'Profile' || $title == 'Edit Profile' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">home:</h6>
                    <a class="<?= $title == 'Slide' || $title == 'Edit Slide' || $title == 'Tambah Slide' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/home/slide') ?>">Slide</a>
                    <a class="<?= $title == 'Sambutan' || $title == 'Edit Sambutann' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/home/sambutan') ?>">Sambutan</a>
                    <a class="<?= $title == 'Profile' || $title == 'Edit Profile' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/home/profile') ?>">Profile</a>
                </div>
            </div>
        </li>
        <li class="<?= $title == 'Berita' || $title == 'Edit Berita' || $title == 'Tambah Berita' || $title == 'Penghargaan' || $title == 'Edit Penghargaan' || $title == 'Tambah Penghargaan' || $title == 'Usaha' || $title == 'Edit Usaha' || $title == 'Tambah Usaha' || $title == 'Wisata' || $title == 'Edit Wisata' || $title == 'Tambah Wisata' || $title == 'Sarana' || $title == 'Edit Sarana' || $title == 'Tambah Sarana' || $title == 'Kategori Sarana' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#info" aria-expanded="true" aria-controls="info">
                <i class="fas fa-info-circle"></i>
                <span>Info</span>
            </a>
            <div id="info" class="<?= $title == 'Berita' || $title == 'Edit Berita' || $title == 'Tambah Berita' || $title == 'Penghargaan' || $title == 'Edit Penghargaan' || $title == 'Tambah Penghargaan' || $title == 'Usaha' || $title == 'Edit Usaha' || $title == 'Tambah Usaha' || $title == 'Wisata' || $title == 'Edit Wisata' || $title == 'Tambah Wisata' || $title == 'Sarana' || $title == 'Edit Sarana' || $title == 'Tambah Sarana' || $title == 'Kategori Sarana' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Info:</h6>
                    <a class="<?= $title == 'Berita' || $title == 'Edit Berita' || $title == 'Tambah Berita' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/berita') ?>">Berita</a>
                    <a class="<?= $title == 'Wisata' || $title == 'Edit Wisata' || $title == 'Tambah Wisata' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/wisata') ?>">Wisata</a>
                    <a class="<?= $title == 'Penghargaan' || $title == 'Edit Penghargaan' || $title == 'Tambah Penghargaan' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/penghargaan') ?>">Penghargaan</a>
                    <a class="<?= $title == 'Usaha' || $title == 'Edit Usaha' || $title == 'Tambah Usaha' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/usaha') ?>">Usaha</a>
                    <a class="<?= $title == 'Sarana' || $title == 'Edit Sarana' || $title == 'Tambah Sarana' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/sarana') ?>">Sarana</a>
                    <h6 class="collapse-header">Kategori:</h6>
                    <a class="<?= $title == 'Kategori Sarana' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/tampilan/info/kategori') ?>">Sarana Kategori</a>
                </div>
            </div>
        </li>


        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Data
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="<?= $title == 'Data Penduduk' || $title == 'Edit Data Penduduk' || $title == 'Tambah Data Penduduk' || $title == 'Pekerjaan Penduduk' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Penduduk" aria-expanded="true" aria-controls="Penduduk">
                <i class="fas fa-users"></i>
                <span>Penduduk</span>
            </a>
            <div id="Penduduk" class="<?= $title == 'Data Penduduk' || $title == 'Edit Data Penduduk' ||  $title == 'Tambah Data Penduduk' ||  $title == 'Pekerjaan Penduduk' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Data:</h6>
                    <a class="<?= $title == 'Data Penduduk' || $title == 'Edit Data Penduduk' || $title == 'Tambah Data Penduduk' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/penduduk') ?>">Data Penduduk</a>
                    <a class="<?= $title == 'Pekerjaan Penduduk' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/pekerjaan') ?>">Pekerjaan Penduduk</a>
                </div>
            </div>
        </li>
        <li class="<?= $title == 'Penjual' || $title == 'Edit Penjual' || $title == 'Tambah Penjual' || $title == 'Surat' || $title == 'Edit Surat' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Layanan" aria-expanded="true" aria-controls="Layanan">
                <i class="fas fa-mail-bulk"></i>
                <span>Layanan Warga</span>
            </a>
            <div id="Layanan" class="<?= $title == 'Penjual' || $title == 'Edit Penjual' || $title == 'Tambah Penjual' || $title == 'Surat' || $title == 'Edit Surat' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Layanan:</h6>
                    <!-- <a class="<?= $title == 'Penjual' || $title == 'Edit Penjual' || $title == 'Tambah Penjual' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('#') ?>">Penjual</a> -->
                    <a class="<?= $title == 'Surat' || $title == 'Edit Surat' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/layanan/surat') ?>">Surat</a>
                </div>
            </div>
        </li>

        <li class="<?= $title == 'Data Karyawan' || $title == 'Edit Data Karyawan' || $title == 'Tambah Data Karyawan' || $title == 'Struktur' || $title == 'Perangkat Desa' || $title == 'Lembaga Desa'  ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Karyawan" aria-expanded="true" aria-controls="Karyawan">
                <i class="fas fa-user-tie"></i>
                <span>Karyawan</span>
            </a>
            <div id="Karyawan" class="<?= $title == 'Data Karyawan' || $title == 'Edit Data Karyawan' || $title == 'Tambah Data Karyawan' || $title == 'Struktur' || $title == 'Perangkat Desa' || $title == 'Lembaga Desa'  ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Data:</h6>
                    <a class="<?= $title == 'Data Karyawan' || $title == 'Edit Data Karyawan' || $title == 'Tambah Data Karyawan' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/karyawan') ?>">Data Karyawan</a>
                    <a class="<?= $title == 'Struktur' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/struktur') ?>">Struktur</a>
                    <h6 class="collapse-header">Kategori:</h6>
                    <a class="<?= $title == 'Perangkat Desa' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/perangkat') ?>">Perangkat Desa</a>
                    <a class="<?= $title == 'Lembaga Desa' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/lembaga') ?>">Lembaga Desa</a>
                </div>
            </div>
        </li>

        <li class="<?= $title == 'Dokumen' || $title == 'Edit Dokumen' || $title == 'Tambah Dokumen'  || $title == 'Kategori Dokumen' || $title == 'Edit Kategori Dokumen' || $title == 'Tambah Kategori Doc' ? 'nav-item active' : 'nav-item' ?>">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Dokumen" aria-expanded="true" aria-controls="Dokumen">
                <i class="fas fa-folder-open"></i>
                <span>Dokumen</span>
            </a>
            <div id="Dokumen" class="<?= $title == 'Dokumen' || $title == 'Edit Dokumen' || $title == 'Tambah Dokumen'  || $title == 'Kategori Dokumen'  ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Dokumen:</h6>
                    <a class="<?= $title == 'Dokumen' || $title == 'Edit Dokumen' || $title == 'Tambah Dokumen' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/Dokumen') ?>">Dokumen</a>
                    <a class="<?= $title == 'Kategori Dokumen' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/data/kategori') ?>">Kategori Dokumen</a>
                </div>
            </div>
        </li>
    <?php } else if ($user['id_type'] == 3) { ?>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Data
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Penduduk" aria-expanded="true" aria-controls="Penduduk">
                <i class="fas fa-fw fa-folder"></i>
                <span>Layanan Warga</span>
            </a>
            <div id="Penduduk" class="<?= $title == 'Surat' ? 'collapse show' : 'collapse' ?>" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Layanan Surat:</h6>
                    <a class="<?= $title == 'Surat' ? 'collapse-item active' : 'collapse-item' ?>" href="<?= base_url('Admin/data/approval/surat') ?>">Surat</a>
                    <a class="collapse-item" href="<?= base_url('Admin/data/approval/pin') ?>">PIN TTD</a>
                </div>
            </div>
        </li>
    <?php } ?>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">


    <!-- Nav Item - Charts -->
    <!-- <li class="<?= $title == 'My Profile' ? 'nav-item active' : 'nav-item' ?>">
        <a class="nav-link" href="<?= base_url('Admin/data/user'); ?>">
            <i class="fas fa-fw fa-user"></i>
            <span>Profile</span></a>
    </li> -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('auth/logout') ?>">
            <i class="fas fa-fw fa-sign-out-alt"></i>
            <span>logout</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->