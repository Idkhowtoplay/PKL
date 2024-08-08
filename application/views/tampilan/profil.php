<div class="header">
    <div class="container">
        <div class="judul">
            <h1 class="sejarah text-center ">Sejarah</h1>
        </div>
        <div class=" profil row justify-content-around">
            <div class="text col-7">
                <?= $profile['sejarah'] ?>
            </div>
            <div class=" prof col-4">
                <img src="<?= base_url('assets/file/profile/' . $profile['gambar']) ?>" alt="">
            </div>
        </div>
    </div>
</div>
<hr class="batas mt-12 mb-12">

<!-- Visi & Misi -->
<div class="container">
    <div class="row">
        <div class="col-12">
            <h3 class="text-uppercase pb-5 mb-0 text-left text-sm-center custom-title ft-wt-600">Experience <span>&</span> Education</h3>
        </div>
        <div class="col-lg-6 m-15px-tb">
            <div class="resume-box">
                <ul>
                    <li>
                        <div class="icon">
                            <i class="fa fa-briefcase"></i>
                        </div>
                        <span class="time open-sans-font text-uppercase">Visi</span>
                        <h5 class="poppins-font text-uppercase">Visi Jayawaras</h5>
                        <?= $profile['visi'] ?>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-lg-6 m-15px-tb">
            <div class="resume-box">
                <ul>
                    <li>
                        <div class="icon">
                            <i class="fa fa-graduation-cap"></i>
                        </div>
                        <span class="time open-sans-font text-uppercase">Misi</span>
                        <h5 class="poppins-font text-uppercase">Misi Jayawaras</h5>
                        <?= $profile['misi'] ?>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-lg-6 m-15px-tb">
            <div class="resume-box">
                <ul>
                    <li>
                        <div class="icon">
                            <i class="fa fa-graduation-cap"></i>
                        </div>
                        <span class="time open-sans-font text-uppercase">Tujuan</span>
                        <h5 class="poppins-font text-uppercase">Tujuan Jayawaras</h5>
                        <?= $profile['tujuan'] ?>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>