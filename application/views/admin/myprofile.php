        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <div class="row">
                <div class="col-md-4">
                    <div class="card card-profile card-secondary">
                        <div class="card-header" style="background-image: url('<?= base_url('assets/img/bg/bg.jpg') ?>')">
                            <div class="profile-picture">
                                <img src="<?= base_url('assets/img/profile/' . $user['image']) ?>" alt="..." class="img-profile rounded-circle" width="150px" height="100px">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="user-profile text-center">
                                <div class="name"><?= $user['name'] ?></div>
                                <div class="job">Kepala Desa</div>
                                <div class="desc">aksdja@gmail.com</div>
                                <!-- <div class="social-media">
                                    <a class="btn btn-info btn-twitter btn-sm btn-link" href="#">
                                        <span class="btn-label just-icon"><i class="flaticon-twitter"></i> </span>
                                    </a>
                                    <a class="btn btn-danger btn-sm btn-link" rel="publisher" href="#">
                                        <span class="btn-label just-icon"><i class="flaticon-google-plus"></i> </span>
                                    </a>
                                    <a class="btn btn-primary btn-sm btn-link" rel="publisher" href="#">
                                        <span class="btn-label just-icon"><i class="flaticon-facebook"></i> </span>
                                    </a>
                                    <a class="btn btn-danger btn-sm btn-link" rel="publisher" href="#">
                                        <span class="btn-label just-icon"><i class="flaticon-dribbble"></i> </span>
                                    </a>
                                </div> -->
                            </div>
                            <div class="card-footer">
                                <div class="row user-stats text-center">
                                    <div class="col">
                                        <div class="number">01/05/2003</div>
                                        <div class="title">Lahir</div>
                                    </div>
                                    <div class="col">
                                        <div class="number">Laki-laki</div>
                                        <div class="title">Kelamin</div>
                                    </div>
                                    <div class="col">
                                        <div class="number">089662362513</div>
                                        <div class="title">Telphone</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php $id = $user['id_user'] ?>
                <div class="col-md-8">
                    <?= form_open_multipart('Admin/dashboard/profile_edit/' . $id) ?>
                    <div class="card card-with-nav">
                        <div class="card-header">
                            <div class="row row-nav-line">
                                <ul class="nav nav-tabs nav-line nav-color-secondary" role="tablist">
                                    <li class="nav-item"> <a class="nav-link active show" data-toggle="tab" href="#home" role="tab" aria-selected="true">Edit Profile</a> </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <div class="form-group form-group-default">
                                        <label>Nama</label>
                                        <input type="text" class="form-control" name="name" placeholder="Name" value="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-group-default">
                                        <label>Email</label>
                                        <input type="email" class="form-control" name="email" placeholder="Name" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-4">
                                    <div class="form-group form-group-default">
                                        <label>Tanggal Lahir</label>
                                        <input type="date" class="form-control" id="datepicker" name="datepicker" value="03/21/1998" placeholder="Birth Date">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group form-group-default">
                                        <label>Kelamin</label>
                                        <select class="form-control" id="gender">
                                            <option>Laki-laki</option>
                                            <option>Perempuan</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group form-group-default">
                                        <label>Telphone</label>
                                        <input type="text" class="form-control" value="" name="phone" placeholder="Phone">
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <div class="form-group form-group-default">
                                        <label for="Old Password">Password Lama</label>
                                        <input type="password" class="form-control" name="old-password" id="old-password" value="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-group-default">
                                        <label for="New Password">Password Baru</label>
                                        <input type="password" class="form-control" name="new-password" id="new-password" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-sm-10">Picture</div>
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="file" name="photo" name="<?= $user['image']; ?>">
                                                <label class="custom-file-label" for="image" id="pilih">Choose
                                                    file</label>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <img src="<?= base_url('assets/img/profile/') . $user['image'] ?>" class="img-thumbnail" id="foto">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-right mt-3 mb-3">
                                <button class="btn btn-success">Save</button>
                                <button class="btn btn-danger">Reset</button>
                            </div>
                        </div>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->