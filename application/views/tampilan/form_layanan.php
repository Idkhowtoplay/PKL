<section class="bg-dark-primary">
    <h2 class="judul-pengajuan text-center">PENGAJUAN LAYANAN</h2>
    <div class="container">
        <?php if ($this->session->flashdata('pengajuan') == 'tambah-berhasil') : ?>
            <div class="alert alert-success mt-5" role="alert">
                Silahkan Menunggu 2 hari setelah laporan di ajukan!
            </div>
            <!-- <script>
                Swal.fire({
                    title: "Pengajuan Berhasil!",
                    text: "Silahkan Menunggu 2 hari setelah laporan di ajukan!",
                    icon: "success"
                });
            </script> -->
        <?php elseif ($this->session->flashdata('pengajuan') == 'gagal') : ?>
            <div class="alert alert-danger mt-5" role="alert">
                Data yg anda masukan salah / data Masih Belum Terdaftar di sistem Kami, Ajukan laporan ke kelurahan!
            </div>
            <!-- <script>
                Swal.fire({
                    title: "Pengajuan Gagal!",
                    text: "Anda Masih Belum Terdaftar di sistem Kami, Ajukan laporan ke kelurahan!",
                    icon: "error"
                });
            </script> -->
        <?php endif; ?>
        <?php $id = $surat = $this->uri->segment(3); ?>
        <?= form_open_multipart('tampilan/surat/' . $id); ?>
        <div class="form-group">
            <label for="inputEmail">Jenis Surat</label>
            <div class="input-group nm-gp">
                <input name="surat" type="hidden" tabindex="1" value="<?= $document['id'] ?>">
                <input id="inputnama" class="form-control" name="namasurat" type="text" tabindex="1" placeholder="Jenis Surat" value="<?= $document['nama'] ?>" readonly>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail">NIK</label>
            <div class="input-group nm-gp">
                <input id="inputnama" class="form-control" name="nik" type="number" tabindex="1" placeholder="NIK" name="nik" onkeypress="if(this.value.length==16) return false;" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail">Nama Lengkap</label>
            <div class="input-group nm-gp">
                <input id="inputnama" class="form-control" type="text" tabindex="1" placeholder="Nama Lengkap" name="nama" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail">Tanggal Lahir
                <div class="ahoy">
                    <span class="fa fa-exclamation-circle"></span>
                    <span class="ahoytext">Bulan/Hari/Tahun</span>
                </div>
            </label>
            <div class="input-group nm-gp">
                <input id="inputrw" class="form-control" type="date" tabindex="1" placeholder="Tanggal Lahir" name="tanggal_lahir" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail">RT
                <div class="ahoy">
                    <span class="fa fa-exclamation-circle"></span>
                    <span class="ahoytext">Contoh Pengisian 001</span>
                </div>
            </label>
            <div class="input-group nm-gp">
                <input id="inputrt" class="form-control" type="text" tabindex="1" placeholder="001" name="rt" onkeypress="if(this.value.length==3) return false;" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail">RW
                <div class="ahoy">
                    <span class="fa fa-exclamation-circle"></span>
                    <span class="ahoytext">Contoh Pengisian 004</span>
                </div>
            </label>
            <div class="input-group nm-gp">
                <input id="inputrw" class="form-control" type="text" tabindex="1" placeholder="004" name="rw" onkeypress="if(this.value.length==3) return false;" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail">Catatan Tambahan</label>
            <div class="input-group nm-gp">
                <textarea id="inputEmail" class="form-control" type="text" tabindex="1" placeholder="Catatan Tambahan" name="catatan"></textarea>
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword">KTP
                <div class="ahoy">
                    <span class="fa fa-exclamation-circle"></span>
                    <span class="ahoytext">Format file PDF</span>
                </div>
            </label>
            <div class="input-group nm-gp">
                <input id="inputPassword" class="form-control" type="file" tabindex="2" name="ktp" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword">Kartu Keluarga
                <div class="ahoy">
                    <span class="fa fa-exclamation-circle"></span>
                    <span class="ahoytext">Format file PDF</span>
                </div>
            </label>
            <div class="input-group nm-gp">
                <input id="inputPassword" class="form-control" type="file" tabindex="2" name="kk" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword">Pengantar Dari RT/RW
                <div class="ahoy">
                    <span class="fa fa-exclamation-circle"></span>
                    <span class="ahoytext">Format file PDF</span>
                </div>
            </label>
            <div class="input-group nm-gp">
                <input id="inputPassword" class="form-control" type="file" tabindex="2" name="pengantar" required>
            </div>
        </div>
        <button type="submit" class="btn btn-block btn-primary nm-btn" id="btn">Kirim Surat</button>
        <?= form_close(); ?>
    </div>
</section>