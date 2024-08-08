        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>



            <div class="row">
                <div class="col-lg-6">
                    <?= form_error('kategori sarana', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('kategori sarana'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <button type="button" class="btn btn-primary float-right mb-0 " data-toggle="modal" data-target="#AddNew">Tambah Kategori Sarana</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Inisial</th>
                                            <th scope="col">Kategori</th>
                                            <th scope="col">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($kategori as $m) :
                                            $id = $m['id'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $m['nama_kategori']; ?></td>
                                                <td><?= $m['inisial']; ?></td>
                                                <td><?= $m['kategori']; ?></td>
                                                <td>
                                                    <button class="btn btn-success" data-toggle="modal" data-target="#Editkategori<?= $id ?>">
                                                        <div class="fas fa-edit"></div>
                                                    </button>
                                                    <a href="<?= base_url('Admin/tampilan/info/kategori_delete/' . $id) ?>" class="btn btn-danger">
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
                            <h5 class="modal-title" id="AddNewLabel">Tambah Kategori</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="<?= base_url('Admin/tampilan/info/kategori') ?>" method="POST">
                            <div class="modal-body">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="nama" placeholder="Nama" name="nama" required>
                                    <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <label>inisial</label>
                                    <input type="text" name="inisial" placeholder="Inisial Kategori" class="form-control" required>
                                    <?= form_error('inisial', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <label>Pilih Kategori</label>
                                    <select name="kategori" id="kategori" class="form-control" required>
                                        <option value="">Pilih Jabatan</option>
                                        <option value="Pendidikan">Pendidikan</option>
                                        <option value="Kesehatan">Kesehatan</option>
                                        <option value="Hiburan">Hiburan</option>
                                        <option value="Umum">Umum</option>
                                    </select>
                                    <?= form_error('kategori', '<small class="text-danger pl-3">', '</small>'); ?>
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
            <?php foreach ($kategori as $m) :
                $id = $m['id'];
            ?>
                <div class="modal fade" id="Editkategori<?= $id ?>" tabindex="-1" aria-labelledby="EditkategoriLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="EditkategoriLabel">Edit Kategori</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="<?= base_url('Admin/tampilan/info/kategori_edit/' . $id) ?>" method="POST">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="nama" placeholder="Nama" name="nama" value="<?= $m['nama_kategori']; ?>" required>
                                        <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <label>Inisial</label>
                                        <input type="text" name="inisial" placeholder="Inisial Kategori" value="<?= $m['inisial'] ?>" class="form-control" required>
                                        <?= form_error('inisial', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <label>Pilih Kategori</label>
                                        <select name="kategori" id="kategori" class="form-control" required>
                                            <option value="<?= $m['kategori'] ?>"><?= $m['kategori'] ?></option>
                                            <option value="">Pilih Jabatan</option>
                                            <option value="Pendidikan">Pendidikan</option>
                                            <option value="Kesehatan">Kesehatan</option>
                                            <option value="Hiburan">Hiburan</option>
                                            <option value="Umum">Umum</option>
                                        </select>
                                        <?= form_error('kategori', '<small class="text-danger pl-3">', '</small>'); ?>
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