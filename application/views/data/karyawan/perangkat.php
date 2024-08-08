        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>



            <div class="row">
                <div class="col-lg-6">
                    <?= form_error('perangkat', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('perangkat'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <button type="button" class="btn btn-primary float-right mb-0 " data-toggle="modal" data-target="#AddNew">Tambah Jabatan</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Jabatan</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($perangkat as $m) :
                                            $id = $m['id'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $m['jabatan']; ?></td>
                                                <td>
                                                    <button class="btn btn-success" data-toggle="modal" data-target="#Editperangkat<?= $id ?>">
                                                        <div class="fas fa-edit"></div>
                                                    </button>
                                                    <a href="<?= base_url('Admin/data/data/perangkat_delete/' . $id) ?>" class="btn btn-danger">
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

            <!-- Modal Tambah Data -->
            <div class="modal fade" id="AddNew" tabindex="-1" aria-labelledby="AddNewLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="AddNewLabel">Tambah Perangkat</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="<?= base_url('Admin/data/data/perangkat') ?>" method="POST">
                            <div class="modal-body">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="perangkat" placeholder="perangkat Name" name="perangkat">
                                </div>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="subbmit" class="btn btn-primary">Add</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Modal Edit -->
            <?php $i = 1; ?>
            <?php foreach ($perangkat as $m) :
                $id = $m['id'];
            ?>
                <div class="modal fade" id="Editperangkat<?= $id ?>" tabindex="-1" aria-labelledby="EditperangkatLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="EditperangkatLabel">Edit perangkat</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="<?= base_url('Admin/data/data/perangkat_edit/' . $id) ?>" method="POST">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="perangkat" placeholder="perangkat Name" name="perangkat" value="<?= $m['jabatan']; ?>">
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="subbmit" class="btn btn-primary">Edit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <?php $i++; ?>
            <?php endforeach; ?>

        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->