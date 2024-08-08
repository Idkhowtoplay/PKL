<main class="container mt-5">
    <article class="card-infografis mt-5">
        <h2 class="judulInfog">Demografi Penduduk</h2>
        <section class="infografis-card-wrapper">
            <div class="row">
                <div class="col-md-4">
                    <table class="table table-infografis" id="tblDemografi">
                        <thead class="thead-dark thead-green">
                            <tr>
                                <th scope="col">Jenis Kelamin</th>
                                <th class="text-center" scope="col">Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="row">Laki-Laki</td>
                                <td class="text-center"><?= $cowok ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Perempuan</td>
                                <td class="text-center"><?= $cewek ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Total</td>
                                <td class="text-center"><?= $cewek + $cowok; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $cowok ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/pria.svg">
                                <h5 class="ket-inf">Laki-laki</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $cewek ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/wanita.svg">
                                <h5 class="ket-inf">Perempuan</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $cowok + $cewek ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/total.svg">
                                <h5 class="ket-inf">Total</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </article>

    <article class="card-infografis mt-5">
        <h2 class="judulInfog">Agama</h2>
        <section class="infografis-card-wrapper">
            <div class="row">
                <div class="col-md-4">
                    <style>
                        tbody { 
  display: block; 
  overflow: auto;
  vertical-align: middle;
  border-color: inherit;
  max-height: 453px;
}
thead{
  display: table;
  width: 100%;
  table-layout: fixed;
}
thead, tbody tr{
  display: table;
  width: 100%;
  table-layout: fixed;
}

                    </style>
                    <table class="table table-infografis" id="tblDemografi">
                        <thead class="thead-dark thead-green">
                            <tr>
                                <th scope="col">Pemeluk Agama</th>
                                <th class="text-center" scope="col">Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="row">Islam</td>
                                <td class="text-center"><?= $islam ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Kristen</td>
                                <td class="text-center"><?= $Kristen ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Hindu</td>
                                <td class="text-center"><?= $Hindu ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Buddha</td>
                                <td class="text-center"><?= $Buddha ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Khonghucu</td>
                                <td class="text-center"><?= $Khonghucu ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $islam ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/islam.svg">
                                <h5 class="ket-inf">Islam</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Kristen ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/kristen.svg">
                                <h5 class="ket-inf">Kristen</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Buddha ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/buddha.svg">
                                <h5 class="ket-inf">Buddha</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Hindu ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/hindu.svg">
                                <h5 class="ket-inf">Hindu</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Khonghucu ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/konghucu.svg">
                                <h5 class="ket-inf">Khonghucu</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </article>

    <article class="card-infografis mt-5">
        <h2 class="judulInfog">Lulusan Pendidikan</h2>
        <section class="infografis-card-wrapper">
            <div class="row">
                <div class="col-md-4">
                    <table class="table table-infografis" id="tblDemografi">
                        <thead class="thead-dark thead-green">
                            <tr>
                                <th scope="col">Jenis Pendidikan</th>
                                <th class="text-center" scope="col">Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="row">SD</td>
                                <td class="text-center"><?= $TamatSD ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SMP/MTS</td>
                                <td class="text-center"><?= $SLTP ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SMA/SMK</td>
                                <td class="text-center"><?= $SLTA ?></td>
                            </tr>
                            <tr>
                                <td scope="row">DIPLOMA</td>
                                <td class="text-center"><?= $Diploma ?></td>
                            </tr>
                            <tr>
                                <td scope="row">S1</td>
                                <td class="text-center"><?= $StrataI ?></td>
                            </tr>
                            <tr>
                                <td scope="row">S2</td>
                                <td class="text-center"><?= $StrataII ?></td>
                            </tr>
                            <tr>
                                <td scope="row">S3</td>
                                <td class="text-center"><?= $StrataIII ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Putus Sekolah</td>
                                <td class="text-center"><?= $BelumSekolah ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SD</td>
                                <td class="text-center"><?= $TamatSD ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SMP/MTS</td>
                                <td class="text-center"><?= $SLTP ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SMA/SMK</td>
                                <td class="text-center"><?= $SLTA ?></td>
                            </tr>
                            <tr>
                                <td scope="row">DIPLOMA</td>
                                <td class="text-center"><?= $Diploma ?></td>
                            </tr>
                            <tr>
                                <td scope="row">S1</td>
                                <td class="text-center"><?= $StrataI ?></td>
                            </tr>
                            <tr>
                                <td scope="row">S2</td>
                                <td class="text-center"><?= $StrataII ?></td>
                            </tr>
                            <tr>
                                <td scope="row">S3</td>
                                <td class="text-center"><?= $StrataIII ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Putus Sekolah</td>
                                <td class="text-center"><?= $BelumSekolah ?></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $TamatSD ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/sd.svg">
                                <h5 class="ket-inf">SD</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $SLTP ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/sltp.svg">
                                <h5 class="ket-inf">SMP/MTS</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $SLTA ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/slta.svg">
                                <h5 class="ket-inf">SMA/SMK</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Diploma ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/d4.svg">
                                <h5 class="ket-inf">Diploma</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $StrataI ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/S1.svg">
                                <h5 class="ket-inf">S1</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $StrataII ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/S2.svg">
                                <h5 class="ket-inf">S2</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $StrataIII ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/S3.svg">
                                <h5 class="ket-inf">S3</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $BelumSekolah ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/belumsekolah.svg">
                                <h5 class="ket-inf">Putus Sekolah</h5>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </article>

    <article class="card-infografis mt-5">
        <h2 class="judulInfog">Pekerjaan</h2>
        <section class="infografis-card-wrapper">
            <div class="row">
                <div class="col-md-4">
                    <table class="table table-infografis" id="tblDemografi">
                        <thead class="thead-dark thead-green">
                            <tr>
                                <th scope="col">Jenis Pekerjaan</th>
                                <th class="text-center" scope="col">Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="row">Mengurus Rumah Tangga</td>
                                <td class="text-center"><?= $IRT ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Pegawai Negeri Sipil</td>
                                <td class="text-center"><?= $PNS ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Belum/Tidak Bekerja</td>
                                <td class="text-center"><?= $BelumBekerja ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Wiraswasta</td>
                                <td class="text-center"><?= $Wiraswasta ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Pelajar</td>
                                <td class="text-center"><?= $Pelajar ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Guru</td>
                                <td class="text-center"><?= $Guru ?></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $IRT ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/irt.svg">
                                <h5 class="ket-inf">Mengurus RumahTangga</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $PNS ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/pns.svg">
                                <h5 class="ket-inf">Pegawai Negeri Sipil</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $BelumBekerja ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/tidakbekerja.svg">
                                <h5 class="ket-inf">Belum/Tidak Bekerja</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Wiraswasta ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/wiraswasta.svg">
                                <h5 class="ket-inf">Wiraswasta</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Pelajar ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/pelajar.svg">
                                <h5 class="ket-inf">Pelajar</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Guru ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/lainnya.svg">
                                <h5 class="ket-inf">Guru</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </article>

    <article class="card-infografis mt-5">
        <h2 class="judulInfog">Sarana Pendidikan</h2>
        <section class="infografis-card-wrapper">
            <div class="row">
                <div class="col-md-4">
                    <table class="table table-infografis" id="tblDemografi">
                        <thead class="thead-dark thead-green">
                            <tr>
                                <th scope="col">Tempat</th>
                                <th class="text-center" scope="col">Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="row">Paud Kober</td>
                                <td class="text-center"><?= $Paud ?></td>
                            </tr>
                            <tr>
                                <td scope="row">TK</td>
                                <td class="text-center"><?= $TK ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SD/MI</td>
                                <td class="text-center"><?= $SD ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SMP/MTS</td>
                                <td class="text-center"><?= $SMP ?></td>
                            </tr>
                            <tr>
                                <td scope="row">SMA/SMK/MA</td>
                                <td class="text-center"><?= $SMA ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Total</td>
                                <td class="text-center"><?= $Paud + $TK + $SD + $SMP + $SMA ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Paud ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/paud.svg">
                                <h5 class="ket-inf">Paud Kober</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $TK ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/tk.png">
                                <h5 class="ket-inf">TK</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $SD ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/sd.svg">
                                <h5 class="ket-inf">SD/MI</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $SMP ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/sltp.svg">
                                <h5 class="ket-inf">SMP/MTS</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $SMA ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/slta.svg">
                                <h5 class="ket-inf">SMA/SMK/MA</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </article>

    <article class="card-infografis mt-5">
        <h2 class="judulInfog">Sarana Kesehatan</h2>
        <section class="infografis-card-wrapper">
            <div class="row">
                <div class="col-md-4">
                    <table class="table table-infografis" id="tblDemografi">
                        <thead class="thead-dark thead-green">
                            <tr>
                                <th scope="col">Nama Tempat</th>
                                <th class="text-center" scope="col">Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="row">Puskesmas </td>
                                <td class="text-center"><?= $Puskesmas ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Posyandu </td>
                                <td class="text-center"><?= $Posyandu ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Dokter Swasta</td>
                                <td class="text-center"><?= $DS ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Bidan Swasta</td>
                                <td class="text-center"><?= $BS ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Kader Posyandu</td>
                                <td class="text-center"><?= $KP ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Bidan Kelurahan</td>
                                <td class="text-center"><?= $BK ?></td>
                            </tr>
                            <tr>
                                <td scope="row">Total</td>
                                <td class="text-center"><?= $BK + $Puskesmas + $Posyandu + $DS + $KP + $BK ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Puskesmas ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/rumah.svg">
                                <h5 class="ket-inf">Puskesmas</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $Posyandu ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/rumah.svg">
                                <h5 class="ket-inf">Posyandu</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $DS ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/rumah.svg">
                                <h5 class="ket-inf">Dokter Swasta</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $BS ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/rumah.svg">
                                <h5 class="ket-inf">Bidan Swasta</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $KP ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/rumah.svg">
                                <h5 class="ket-inf">Kader Posyandu</h5>
                            </div>
                        </div>
                        <div class="col-md-4 icon-data">
                            <div class="card-inf text-center">
                                <h2 class="jum-penduduk" id="#" name="#"><?= $BK ?></h2>
                                <img class="img-inf" src="<?= base_url('assets/') ?>img/icon/rumah.svg">
                                <h5 class="ket-inf">Bidan Kelurahan</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </article>
</main>