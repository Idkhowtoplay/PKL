        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


            <div class="row">
                <div class="col-lg-8">
                    <?= form_error('role', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('role'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <button type="button" class="btn btn-primary float-right mb-0 " data-toggle="modal" data-target="#AddNewRole">Tambah Role</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">role</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($role as $r) :
                                            $id = $r['id'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $r['id_type']; ?></td>
                                                <td>
                                                    <button class="btn btn-success" data-toggle="modal" data-target="#EditNewRole<?= $r['id']; ?>">
                                                        <div class="fas fa-fw fa-edit"></div>
                                                    </button>
                                                    <a href="<?= base_url('Admin/admin/role_delete/' . $id) ?>" class="btn btn-danger">
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
            <!-- Modal -->
            <?php foreach ($role as $r) : ?>
                <div class="modal fade" id="EditNewRole<?= $r['id']; ?>" tabindex="-1" aria-labelledby="EditNewRoleLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="EditNewRoleLabel">Edit Role</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="<?= base_url('Admin/admin/EditNameRole') ?>" method="POST">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <input type="text" name="id" id="id" value="<?= $r['id']; ?>" hidden>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="id_type" placeholder="Role Name" name="id_type" value="<?= $r['id_type']; ?>">
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
            <?php endforeach; ?>
            <!-- Modal tambah data -->
            <div class="modal fade" id="AddNewRole" tabindex="-1" aria-labelledby="AddNewRoleLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="AddNewRoleLabel">Add New Menu</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="<?= base_url('Admin/admin/input_role') ?>" method="POST">
                            <div class="modal-body">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="id_type" placeholder="Role Name" name="id_type">
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




        </div>
        <!--container-fluid -->

        </div>
        <!-- End of Main Content -->