<div class="contact">
    <div class="container-fluid">
        <div class="container">
            <div class="row align-items-center">
                <!-- <h2 class="judul-pengajuan text-center">VALIDASI SURAT</h2> -->
                <?php if ($this->session->flashdata('cek_pengajuan') == 'tambah-berhasil') : ?>
                    <script>
                        Swal.fire({
                            title: "Pengajuan Berhasil!",
                            text: "Silahkan Menunggu 2 hari setelah laporan di ajukan!",
                            icon: "success"
                        });
                    </script>
                <?php elseif ($this->session->flashdata('cek_pengajuan') == 'gagal') : ?>
                    <div class="alert alert-danger mt-5" role="alert">
                        Data yg anda masukan salah / data Masih Belum Terdaftar di sistem Kami, Ajukan laporan ke kelurahan!
                    </div>
                    <!-- <script>
                        Swal.fire({
                            title: "Pengajuan Gagal!",
                            text: "Data yg anda masukan salah / data Masih Belum Terdaftar di sistem Kami, Ajukan laporan ke kelurahan!",
                            icon: "error"
                        });
                    </script> -->
                <?php endif; ?>
                <div class="imgg col-md-4">
                    <img src="<?= base_url('assets/') ?>img/bg/undraw_authentication_re_svpt.svg" alt="">
                </div>
                <div class="col-md-8">
                    <div class="contact-form">
                        <?php $id = $surat = $this->uri->segment(3); ?>
                        <?= form_open_multipart('tampilan/pengajuan/' . $id); ?>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="form-group">
                                <label for="inputEmail">Nama Lengkap</label>
                                <div class="input-group nm-gp">
                                    <input id="inputrt" class="form-control" type="text" tabindex="1" placeholder="Nama Lengkap" name="nama" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">NIK</label>
                                <div class="input-group nm-gp">
                                    <input id="inputrt" class="form-control" type="number" tabindex="1" placeholder="NIK" name="nik" required onkeypress="if(this.value.length==16) return false;">
                                </div>
                            </div>
                            <div class=" form-group">
                                <label for="inputEmail">Tanggal Lahir
                                    <div class="ahoy">
                                        <span class="fa fa-exclamation-circle"></span>
                                        <span class="ahoytext">Bulan/Hari/Tahun</span>
                                    </div>
                                </label>
                                <div class="input-group nm-gp">
                                    <input id="inputrt" class="form-control" type="date" tabindex="1" placeholder="TGKLAHIR" name="tanggal_lahir" required>
                                </div>
                            </div>
                            <div>
                                <button class="btn" type="submit" id="sendMessageButton">Validasi Surat</button>
                            </div>
                            <div class="alert alert-light mt-5" role="alert">
                                Silahkan Masuk Untuk Melakukan Cek Pengajuan Surat Yang Telah Diajukan
                            </div>
                        </form>
                        <?= form_close(); ?>
                    </div>
                </div>
            </div>
            <div class="alert alert-light" role="alert">
                Fitur Login untuk melakukan cek terhadap progres surat yang diajukan <a href="Panduan.html" class="alert-link">LIHAT PANDUAN</a>.
            </div>
        </div>
    </div>
</div>