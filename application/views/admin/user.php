        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>



            <div class="row">
                <div class="col-lg">
                    <?php if (validation_errors()) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?= validation_errors(); ?>
                        </div>
                    <?php endif; ?>

                    <?= $this->session->flashdata('edituser'); ?>
                    <!-- botton triger -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <button type="button" class="btn btn-primary float-right mb-0 " data-toggle="modal" data-target="#AddNewUser">Add New User</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Username</th>
                                            <th>Date Created</th>
                                            <th>Access</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        foreach ($users as $isi) {
                                            $id = $isi->id_user;
                                            $image = $isi->image;
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $no++ ?></th>
                                                <td><img src="<?= base_url('assets/img/profile/') . $isi->image ?>" class="img-thumbnail" width="60px" height="60px">
                                                </td>
                                                <td><?= $isi->name ?></td>
                                                <td><?= $isi->username ?></td>
                                                <td><?= date('d F Y', $isi->date_created); ?></td>
                                                <td><?php if ($isi->id_type == 1) {
                                                        echo 'Admin';
                                                    } else {
                                                        echo 'User';
                                                    } ?></td>
                                                <td>
                                                    <button class="btn btn-info" data-toggle="modal" data-target="#read<?= $id ?>">
                                                        <div class="fas fa-eye"></div>
                                                    </button>
                                                    <button class="btn btn-success" data-toggle="modal" data-target="#Edit<?= $id ?>">
                                                        <div class="fas fa-edit"></div>
                                                    </button>
                                                    <a href="<?= base_url('Admin/admin/delete/' . $id . '/' . $image) ?>" class="btn btn-danger">
                                                        <div class="fas fa-trash"></div>
                                                    </a>
                                                </td>
                                            </tr>
                                        <?php
                                        }
                                        ?>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal read -->
            <?php
            $no = 1;
            foreach ($users as $isi) {
                $id = $isi->id_user;
            ?>
                <div class="modal fade" id="read<?= $id ?>" tabindex="-1" aria-labelledby="readLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="readLabel">Form Edit Data</h5>
                                <button type="button" class="close" data-dismiss="modal-edit" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="id_user" value="<?= $id ?>">
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <img src="<?= base_url('assets/img/profile/') . $isi->image; ?>" class="img-thumbnail">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <table class="row">
                                        <tr>
                                            <th>Full Name</th>
                                            <td>:</td>
                                            <td><?= $isi->name ?></td>
                                        </tr>
                                        <tr>
                                            <th>Username</th>
                                            <td>:</td>
                                            <td><?= $isi->username ?></td>
                                        </tr>
                                        <tr>
                                            <th>Type User</th>
                                            <td>:</td>
                                            <td><?php if ($isi->id_type == 1) {
                                                    echo 'Admin';
                                                } else {
                                                    echo 'User';
                                                } ?></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- modal edit-->
                <div class="modal fade" id="Edit<?= $id ?>" tabindex="-1" aria-labelledby="EditLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="EditLabel">Form Edit Data</h5>
                                <button type="button" class="close" data-dismiss="modal-edit" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <?= form_open_multipart('Admin/admin/edit/'); ?>
                                <input type="hidden" name="id_user" value="<?= $id ?>">
                                <input type="hidden" name="old_image" value="<?= $isi->image ?>">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="name" name="name" class="form-control" value="<?= $isi->name ?>">
                                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="username" name="username" class="form-control" value="<?= $isi->username ?>">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" name="password" class="form-control">
                                </div>
                                <?php
                                if ($isi->id_type == '2') {
                                    $selU = 'selected';
                                    $selA = '';
                                }
                                if ($isi->id_type == '1') {
                                    $selA = 'selected';
                                    $selU = '';
                                }
                                ?>
                                <label>Typeuser</label>
                                <select class=" custom-select" name="typeuser">
                                    <option value="2" <?= $selU ?>>user</option>
                                    <option value="1" <?= $selA ?>>admin</option>
                                </select>
                                <div class="form-group">
                                    <div class="mt-3 form-check">
                                        <?php if ($isi->active == '1') { ?>
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="active" checked>
                                        <?php } else { ?>
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="active">
                                        <?php } ?>
                                        <label class="form-check-label" for="exampleCheck1">Centang Untuk Mengaktifkan Akun!</label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-10">Picture</div>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-sm-9">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="file" name="image">
                                                    <label class="custom-file-label" for="image" id="pilih">Choose
                                                        file</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <img src="<?= base_url('assets/img/profile/') . $isi->image; ?>" class="img-thumbnail" id="foto">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div><?= form_close() ?>
                        </div>
                    </div>
                </div>
                <!-- /modal edit-->
            <?php
            }
            ?>

            <!-- Modal tambah data -->
            <div class="modal fade" id="AddNewUser" tabindex="-1" aria-labelledby="AddNewUserLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="AddNewUserLabel">Form Input Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <?= form_open_multipart('Admin/admin/input'); ?>
                            <div class="form-group">
                                <label>Name</label>
                                <input type="name" name="name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input type="username" name="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control">
                            </div>
                            <label>Typeuser</label>
                            <select class="custom-select" name="typeuser">
                                <option>pilih</option>
                                <option value="2">user</option>
                                <option value="1">admin</option>
                            </select>
                            <div class="form-group">
                                <div class="mt-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="active">
                                    <label class="form-check-label" for="exampleCheck1">Centang Untuk Mengaktifkan Akun!</label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                        <?= form_close() ?>
                    </div>
                </div>
            </div>
            <!-- /modal -->




        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->