        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <!-- Pending Requests Card Example -->
            <div class="row">
                <div class="col-lg">
                    <?= form_error('profile', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('profile'); ?>
                    <?php
                    foreach ($profile as $isi) {
                        $id = $isi['id'];
                    ?>
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <!-- modal target tambah data -->
                                <a href="<?= base_url('Admin/tampilan/home/profile_edit/') . $id ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Edit</button></a>
                            </div>
                            <div class="card-body">
                                <!-- video & foto -->
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-6 m-15px-tb">
                                            <center>
                                                <img src="<?= base_url('assets/file/profile/') . $isi['gambar']; ?>" alt="" height="240px">
                                            </center>
                                        </div>
                                        <div class="col-lg-6 m-15px-tb">
                                            <center>
                                                <video src="<?= base_url('assets/file/profile/') . $isi['video']; ?>" class="img-thumbnail" id="video" height="240px" controls>
                                                </video>
                                            </center>
                                        </div>
                                    </div>
                                </div>

                                <!-- Visi & Misi -->
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-6 m-15px-tb">
                                            <div class="resume-box">
                                                <ul>
                                                    <li>
                                                        <div class="icon">
                                                            <i class="fa fa-briefcase"></i>
                                                        </div>
                                                        <span class="time open-sans-font text-uppercase">Visi</span>
                                                        <h5 class="poppins-font text-uppercase">Visi Jayawaras</h5>
                                                        <?= $isi['visi'] ?>
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
                                                        <?= $isi['misi'] ?>
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
                                                        <?= $isi['tujuan'] ?>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 m-15px-tb">
                                            <div class="resume-box">
                                                <ul>
                                                    <li>
                                                        <div class="icon">
                                                            <i class="fa fa-briefcase"></i>
                                                        </div>
                                                        <span class="time open-sans-font text-uppercase">Sejarah</span>
                                                        <h5 class="poppins-font text-uppercase">Sejarah Jayawaras</h5>
                                                        <?= $isi['sejarah'] ?>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->