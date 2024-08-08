        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <!-- Pending Requests Card Example -->
            <div class="row">
                <div class="col-lg-12">
                    <?= form_error('karyawan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?= $this->session->flashdata('karyawan'); ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- modal target tambah data -->
                            <a href="<?= base_url('Admin/data/data/karyawan_add'); ?>"> <button class="btn btn-primary float-right mb-0 " data-toggle="modal">Tambah Data Karyawan</button></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">NIP</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Photo</th>
                                            <th scope="col">Kategori Jabatan</th>
                                            <th scope="col">Jabatan</th>
                                            <th scope="col">Jenis Kelamin</th>
                                            <th scope="col">No Telepon</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Pengedit</th>
                                            <th scope="col">Tanggal Di Tambahkan</th>
                                            <th scope="col">Tanggal Di Perbarui</th>
                                            <th scope="col">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($karyawan as $b) :
                                            $id = $b['id'];
                                            $gambar = $b['photo'];
                                        ?>
                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
                                                <td><?= $b['nip']; ?></td>
                                                <td><?= $b['nama']; ?></td>
                                                <td>
                                                    <img src="<?= base_url('assets/img/karyawan/') . $b['photo']; ?>" class="img-thumbnail" height="50px" width="50px" alt="<?= $b['photo'] ?>">
                                                </td>
                                                <td><?= $b['kategori_jabatan']; ?></td>
                                                <td><?= $b['jabatan']; ?></td>
                                                <td><?= $b['gender']; ?></td>
                                                <td><?= $b['no_telepon']; ?></td>
                                                <td><?= $b['email']; ?></td>
                                                <td><?= $b['modif_by']; ?></td>
                                                <td><?= date('d F Y', $b['date_created']); ?></td>
                                                <td><?= date('d F Y', $b['date_modify']); ?></td>
                                                <td>
                                                    <a href="<?= base_url('Admin/data/data/karyawan_edit/') . $id ?>" class="btn btn-success">
                                                        <div class="fas fa-edit"></div>
                                                    </a>
                                                    <a href="<?= base_url('Admin/data/data/delete_karyawan/' . $id . '/' . $gambar) ?>" class="btn btn-danger">
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