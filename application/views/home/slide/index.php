        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <!-- Pending Requests Card Example -->
            <div class="row">
                <div class="col-lg-8">
                    <?= form_error('slide', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('menu'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/tampilan/home/slide_add'); ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Tambah Slide</button></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Image</th>
                                            <th scope="col">Date Created</th>
                                            <th scope="col">Date Modify</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($slide as $s) :
                                            $id = $s['id'];
                                            $gambar = $s['image'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $s['name']; ?></td>
                                                <td>
                                                    <img src="<?= base_url('assets/img/slide/') . $s['image']; ?>" class="img-thumbnail" height="150px" width="150px" alt="<?= $s['image'] ?>">
                                                </td>
                                                <td><?= date('d F Y', $s['date_created']); ?></td>
                                                <td><?= date('d F Y', $s['date_modif']); ?></td>
                                                <td>
                                                    <a href="<?= base_url('Admin/tampilan/home/slide_edit/') . $id ?>" class="btn btn-success">
                                                        <div class="fas fa-edit"></div>
                                                    </a>
                                                    <a href="<?= base_url('Admin/tampilan/home/delete_slide/' . $id . '/' . $gambar) ?>" class="btn btn-danger">
                                                        <div class="fas fa-fw fa-trash-alt "></div>
                                                    </a>
                                                </td>
                                            </tr>
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->