<div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800"></h1>

    <!-- Display Success and Error Messages -->

    <div class="d-flex justify-content-center">
    <div class="card shadow mb-4" style="width: 50%; max-width: 600px;">
        <?php if ($this->session->flashdata('import_error')): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?= $this->session->flashdata('import_error'); ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php endif; ?>
        <div class="card-header py-3 text-center"> <!-- Tambahkan class text-center di sini -->
            <h6 class="m-0 font-weight-bold text-dark"><?= $title; ?></h6>
        </div>
        <div class="card-body">
            <form action="<?= base_url('Admin/data/penduduk/import_data'); ?>" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="file_excel">Choose Excel File</label>
                    <input type="file" name="file_excel" id="file_excel" class="form-control-file" required>
                </div>
                <button type="submit" class="btn btn-success">Upload</button>
            </form>
        </div>
    </div>
</div>

</div>
