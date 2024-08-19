-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 11:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jayawara_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `edit` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `penulis`, `edit`, `judul`, `gambar`, `konten`, `date_created`, `date_modify`) VALUES
(15, 'Admin', 'Admin', 'FAKULTAS SYARIAH DAN HUKUM UNIVERSITAS ISLAM NEGERI (UIN) RADEN FATAH PALEMBANG', 'IMG-20220627-WA0010.jpg', '<p>Kegiatan penerimaan Ku<span style=\"font-size: 1rem;\">liah Kerja Nyata (</span><span style=\"font-size: 1rem;\">KKN) UIN Palembang dalam rangka kegiatan pengabdian kepada masyarakat selama 40 hari .</span></p>', 1656390554, 1656574359),
(16, 'Admin', 'Admin', 'PEMBERDAYAAN MASYARAKAT DI SMKN 1 GARUT', 'ad.png', 'Kegiatan Pemberdayaan Masyarakat yang di ikuti para kader PKK Kelurahan Jayawaras beserta Mahasiswa UIN Raden Fatah Palembang yang sedang melakukan Kuliah Kerja Nyata (KKN) di Kelurahan Jayawaras, Dalam hal ini Lurah Jayawaras kerja sama dengan SMKN 1 Garut untuk Pelatihan Pembuatan Kue dan Roti.', 1657783999, 1657784417),
(17, 'Admin', '-', 'SOSIALISASI UPI BANDUNG DI KELURAHAN JAYAWARAS', 'aula2.png', '<p>Mahasiswa UPI Bandung dalam rangka kegiatan Kuliah Kerja Nyata ( KKN ) mengadakan Sosialisasi ke masyarakat di Kelurahan Jayawaras, dengan tema siap menjadi ibu Produktif, Kreatif, Inovatif dan Mandiri dengan Berwirausaha.</p>', 1658475776, 1658475776),
(18, 'Admin', '-', 'BULAN IMUNISASI ANAK NASIONAL (BIAN) DAN PEMBERIAN TMT BALITA STUNTING', 'bian.png', '<p>BIAN adalah pemberian imunisasi tambahan Campak-Rubela serta melengkapi dosis Imunisasi Polio dan DPT-HB-Hib yang terlewat. Program ini diwujudkan sebagai upaya menutup kesenjangan imunitas anak dengan melakukan hamonisasi kegiatan imunisasi tambahan (campak-rubela) dan imunisasi kejar (OPV, IPV, dan DPT-HIB-Hib).</p>', 1658727572, 1658727572),
(19, 'Admin', 'Admin', 'MONITORONG PENYALURAN BPNT', '1bp.png', 'Risa Rosalia, S.ip Kasi Kemasyarakatan beserta Staf Kelurahan Jayawaras melakukan Monitoring Penyaluran BPNT bulan Agustus di agen RinRIn, Terlihat sejumlah emak-emak warga Kel.Jayawaras antusias untuk mendapatkan pencairan BPNT. Mereka terlihat senang dengan adanya pencairan program Bantuan Pangan Non Tunai ( BPNT ).<p></p>', 1667273418, 1667275173),
(14, 'Admin', 'Admin', 'PENDATAAN STUNTING', 'Presentation1.jpg', '<p>Dalam upaya penanganan Stunting di Kelurahan Jayawaras, Lurah beserta jajarannya serta dari Dinas Puskesmas Haurpanggung melakukan pendataan Stunting ke setiap Posyandu di wilayah kelurahan Jayawaras.</p>', 1655876779, 1655877341),
(20, 'Admin', '-', 'PENIMBANGAN DAN PENGUKURAN BALITA STUNTING', '1st.png', '<p>Pihak Nakes PKM Haurpanggung bersama Kasi Kemasyarakatan Risa Rosalia, S.ip melakukan kunjungan ke beberapa RW di Kelurahan Jayawaras untuk melakukan penimbangan dan pengukuran balita stunting.</p>', 1667276029, 1667276029),
(21, 'Admin', '-', 'PENANGANAN ODGJ', '1od.png', '<p>Lurah Jayawaras bersama dengan Ketua RW dan Tokoh masyarakat sedang mencoba melakukan Komunikasi dengan warga yang di duga ODGJ.&nbsp;</p>', 1667277463, 1667277463),
(22, 'Admin', '-', 'PEMBAGIAN PMT UNTUK BALITA STUNTING pada tanggal 3 November 2022', 'gb.png', '<p>PEMBAGIAN PMT UNTUK BALITA STUNTING pada tanggal 3 November 2022<br></p>', 1668398283, 1668398283);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis` varchar(100) NOT NULL,
  `dokumen` varchar(255) DEFAULT NULL,
  `pengedit` varchar(255) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nama`, `jenis`, `dokumen`, `pengedit`, `kategori_id`, `date_created`) VALUES
(11, 'Surat Keterangan Tidak Mampu', 'sktm', NULL, 'Admin', 1, 0),
(10, 'Surat Keterangan Kelakuan Baik', 'skkb', NULL, 'Admin', 1, 0),
(9, 'Surat Keterangan Usaha', 'usaha', NULL, 'Admin', 1, 0),
(8, 'Surat Keterangan Domisili', 'domisili', NULL, 'Admin', 1, 0),
(12, 'Surat Keterangan Kematian', 'kematian', NULL, 'Admin', 1, 0),
(13, 'Surat Keterangan Kelahiran', 'kelahiran', NULL, 'Admin', 1, 0),
(14, 'Surat Keterangan Pindah', 'pindah', NULL, 'Admin', 1, 0),
(15, 'Surat Keterangan Menikah', 'keluarga', NULL, 'Admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `perangkat_id` int(11) DEFAULT 0,
  `lembaga_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `kategori_jabatan` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `modif_by` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nip`, `nama`, `photo`, `kategori_jabatan`, `jabatan`, `no_telepon`, `email`, `gender`, `modif_by`, `date_created`, `date_modify`) VALUES
(21, '197808282010011019', 'AGUS KUSNADI, SE', '190a33944d881c759a2f51757c207252.jpg', 'Perangkat Desa', 'Lurah', '08521111111111', 'A*************I@gmail.com', 'Laki-laki', 'Admin', 1666069748, 1666070512),
(7, '196701141993121001', 'ROHMAN, SH', 'a42bb227d6a69b65ca00dbbce3a31f41.jpg', 'Perangkat Desa', 'Sekretaris ', '1234567890', 'R**********N@gmail.com', 'Laki-laki', 'Admin', 1652083711, 1666070624),
(8, '196612111986032001', 'LINA MARYATI', '7455929de668cce7af11b6fe30174bfd.jpg', 'Perangkat Desa', 'Kasi Pemerintahan', '012345678900', 'L*****@Gmail.com', 'Perempuan', 'Admin', 1652246290, 1666070811),
(9, '198108172010012001', 'KARTINI, SE', '629e092bd7c913f82b3a4016f5ea7864.jpg', 'Perangkat Desa', 'Kasi Ekbang', '0850000000001', 'K**********@Gmail.com', 'Perempuan', 'Admin', 1652323123, 1666071149),
(10, '197811142010012009', 'RISA ROSALIA, S.IP', '79c79e6b306877ae2ceed085d221343f.png', 'Perangkat Desa', 'Kasi Kemasyarakatan', '0812000000000', 'R******A@Gmail.com', 'Perempuan', 'Admin', 1652324844, 1666071367),
(12, '196908282010012001', 'WATTI SRI MULYATI', '0a016741d98f7846179c1f59b43f3035.jpg', 'Perangkat Desa', 'Staf Pelaksana', '0812000000002', 'W***S*****@Gmail.com', 'Perempuan', 'Admin', 1652325628, 1666071497),
(13, '197805202010011000', 'IRVAN MALIK', '862cfd416f260cdb2e4d6b2fc4e47236.jpg', 'Perangkat Desa', 'Staf Pelaksana', '0899999999', 'I*********K@Gmail.com', 'Laki-laki', 'Admin', 1652325812, 1666071620),
(14, '198404000000000000', 'RAHMAT RAHAYU', 'b80195d9fb4c82e06ae816ae1462e148.jpg', 'Perangkat Desa', 'Staf Pelaksana', '08900001111', 'eric*****@Gmail.com', 'Laki-laki', 'Admin', 1652326335, 1666071846),
(15, '198400000000000000', 'AGUS WAHYUDIN, S.IP', 'eb50657f2209531a3616fa9a59ba170e.jpg', 'Perangkat Desa', 'Staf Pelaksana', '085213200000', 'A***********N@Gmail.com', 'Laki-laki', 'Admin', 1652326586, 1666069464),
(16, '197900000000000000', 'RATNA WULAN', '226dee9701ec2d413347abb9b989f99a.jpg', 'Perangkat Desa', 'Staf Pelaksana', '085221111111', 'R********N@Gmail.com', 'Perempuan', 'Admin', 1652326789, 1652326789),
(17, '199700000000000000', 'TEGUH RAHAYU', '790f742a1aed2dc3b31e539b6451a769.jpg', 'Perangkat Desa', 'Staf Pelaksana', '089000000000', 'T*********U@Gmail.com', 'Laki-laki', 'Admin', 1652327075, 1652327075),
(18, '198800000000000000', 'LINDA LINDIANI, SE', '08789ddc7308945b55803edc3c917674.jpg', 'Perangkat Desa', 'Staf Pelaksana', '089100000000', 'L***A*******I@Gmail.com', 'Perempuan', 'Admin', 1652327251, 1652327251),
(19, '197702000000000000', 'TETI PURNAMASARI, SIP', '9cf450dcff13838416cfac208498e3dc.jpg', 'Perangkat Desa', 'Staf Pelaksana', '081111000000', 'T***P*****@Gmail.com', 'Perempuan', 'Admin', 1652327498, 1652327543),
(20, '198200000000000000', 'RIKI GINANJAR, SIP', 'cc9f403dd5cbb911d4e0f5c7c19637aa.jpg', 'Perangkat Desa', 'Staf Pelaksana', '089120000000', 'R***G*****@Gmail.com', 'Laki-laki', 'Admin', 1652327715, 1652327894),
(22, '197700000000000000', 'DIAH SYADIAH', 'f7e3bc2cf9d1191d6813216f7c9ab484.jpg', 'Perangkat Desa', 'Staf Pelaksana', '085111111111', 'D***H******H@gmail.com', 'Perempuan', 'Admin', 1666070284, 1666070284);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_doc`
--

CREATE TABLE `kategori_doc` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_doc`
--

INSERT INTO `kategori_doc` (`id`, `kategori`) VALUES
(1, 'Surat Keterangan'),
(3, 'Peraturan'),
(4, 'Surat Pemerintahan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_sarana`
--

CREATE TABLE `kategori_sarana` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `inisial` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_sarana`
--

INSERT INTO `kategori_sarana` (`id`, `nama_kategori`, `kategori`, `inisial`) VALUES
(1, 'Sekolah Dasar /MI', 'Pendidikan', 'SD'),
(2, 'Paud Kober', 'Pendidikan', 'Paud'),
(3, 'SLTP', 'Pendidikan', 'SMP'),
(4, 'SLTA', 'Pendidikan', 'SMA'),
(5, 'Taman Kanak-kanak', 'Pendidikan', 'TK'),
(6, 'Puskesmas', 'Kesehatan', 'Puskesmas'),
(7, 'Posyandu', 'Kesehatan', 'Posyandu'),
(8, 'Doktor Swasta', 'Kesehatan', 'DS'),
(9, 'Bidan Swasta', 'Kesehatan', 'BS'),
(10, 'Kader Posyandu', 'Kesehatan', 'KP'),
(11, 'Bidang Kelurahan', 'Pemerintahan', 'BK'),
(17, 'Klinik', 'Kesehatan', 'klinik'),
(18, 'Polisi', 'Keamanan', 'Polsek');

-- --------------------------------------------------------

--
-- Table structure for table `lembaga_desa`
--

CREATE TABLE `lembaga_desa` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lembaga_desa`
--

INSERT INTO `lembaga_desa` (`id`, `jabatan`) VALUES
(1, 'RT-001'),
(2, 'LPM');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(255) DEFAULT NULL,
  `icon` varchar(100) NOT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`, `icon`, `date_created`, `date_modify`) VALUES
(1, 'Guru', 'lainnya.svg', 1645322210, 1645322280),
(2, 'Mengurus Rumah Tangga', 'irt.svg', 1645322214, 1658299142),
(3, 'PNS', 'pns.svg', 1645322218, 1645322218),
(5, 'Wiraswasta', 'wiraswasta.svg', 1645322248, 1645322248),
(6, 'Pelajar/Mahasiswa', 'pelajar.svg', 1645322253, 1658299077),
(7, 'Belum/Tidak Bekerja', 'tidakbekerja.svg', 1645322265, 1658299100),
(8, 'Buruh Harian Lepas', '', 1655789672, 1655789672),
(9, 'Karyawan Swasta', '', 1658157926, 1658299197),
(10, 'Petani', '', 1658157933, 1658299209),
(11, 'Pedagang', '', 1658157942, 1658299220),
(12, 'Pensiunan', '', 1658299166, 1658299166),
(13, 'TNI', '', 1658467011, 1658467011),
(14, 'POLRI', '', 1658467020, 1658467020),
(15, 'SOPIR', '', 1658825449, 1658825449),
(16, 'KARYAWAN HONORER', '', 1658841154, 1658841154);

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan','','') NOT NULL,
  `no_kk` char(16) DEFAULT NULL,
  `nik` char(16) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `rt` char(3) DEFAULT NULL,
  `rw` char(3) DEFAULT NULL,
  `alamat_spesifik` text DEFAULT NULL,
  `status_perkawinan` enum('Belum Kawin','Kawin','Cerai Mati','Cerai Hidup') DEFAULT NULL,
  `status_pendidikan` varchar(100) DEFAULT NULL,
  `id_pekerjaan` int(2) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id`, `nama`, `jenis_kelamin`, `no_kk`, `nik`, `tanggal_lahir`, `tempat_lahir`, `agama`, `rt`, `rw`, `alamat_spesifik`, `status_perkawinan`, `status_pendidikan`, `id_pekerjaan`, `date_created`, `date_modify`) VALUES
(2, 'RUDY SETIAWAN', 'Laki-laki', '3205122209170002', '3205052901830004', '1983-01-29', 'Garut', 'Islam', '003', '006', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1645324079, 1658155743),
(3, 'DIAN NURDIANI', 'Perempuan', '3205122209170002', '3205056702880001', '1988-02-27', 'GARUT', 'Islam', '03', '06', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'Tamat SD/Sederajat', 2, 1645324716, 1658155719),
(4, 'RAHMA SINTIA OKTAVIANA', 'Perempuan', '3205122209170002', '3205054310120006', '2012-10-03', 'GARUT', 'Islam', '03', '06', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'Belum Tamat SD/Sederajat', 6, 1645324757, 1658155886),
(5, 'ROBI NURHAKIM', 'Laki-laki', '3205122209170002', '3205050204150003', '2015-09-02', 'GARUT', 'Islam', '03', '06', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'Belum Tamat SD/Sederajat', 6, 1645325269, 1658155981),
(6, 'SITI HAJAR', 'Perempuan', '3205052612072399', '3205055002510001', '1951-02-10', 'GARUT', 'Islam', '03', '02', 'KP. JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'SLTP/Sederajat', 2, 1645335067, 1658156184),
(7, 'ILIN SUHERLIN', 'Laki-laki', '3205052909140002', '3205052711760005', '1976-11-27', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 5, 1658156441, 1658156441),
(8, 'BUDI SANTOSO', 'Laki-laki', '3205051105200004', '3205010306950006', '1995-06-03', 'GARUT', 'Islam', '02', '04', 'KP. JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658156453, 1658156453),
(9, 'SENI SEPTIANI', 'Perempuan', '3205051105200004', '3205055704950002', '1995-04-17', 'GARUT', 'Islam', '02', '04', 'KP. JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658156708, 1658156708),
(10, 'MAMAT', 'Laki-laki', '3205052912070285', '3205051103630002', '1963-03-11', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658156819, 1658156819),
(11, 'AKSA CHAIRIL RIZKY', 'Laki-laki', '3205051105200004', '3205051711200001', '2020-11-17', 'GARUT', 'Islam', '02', '04', 'KP. JAYWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658156845, 1658156845),
(12, 'YAN RILLASYA', 'Laki-laki', '3205050908110002', '3205050704710004', '1971-04-07', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1658157130, 1658157130),
(13, 'NANI HERYANI', 'Perempuan', '3205050908110002', '3205055509700001', '1970-09-15', 'TASIKMALAYA', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1658157279, 1658157279),
(14, 'MANAH', 'Perempuan', '3205052912070285', '3205055205660001', '1966-05-12', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658157293, 1658157293),
(15, 'MOHAMAD HERYANSYAH', 'Laki-laki', '3205050908110002', '3205050207980003', '1998-06-02', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658157397, 1658157397),
(16, 'SYARIPUDIN', 'Laki-laki', '3205052912070285', '3205052010820004', '1982-10-20', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 5, 1658157472, 1658157472),
(17, 'SINTA', 'Perempuan', '3205052912070285', '3205054411930001', '1993-11-04', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658157570, 1658157606),
(18, 'MOCHAMAD ILHAM', 'Laki-laki', '3205050908110002', '3205051308000006', '2000-08-13', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658157582, 1658157582),
(19, 'NURUL RAMDANI', 'Laki-laki', '3205052909140002', '3205054912010006', '2001-09-12', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'SLTP/Sederajat', 7, 1658157621, 1658157621),
(20, 'SRI APRIYANI SAFARIAH', 'Perempuan', '3205050908110002', '3205056404020005', '2002-04-24', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658157705, 1658157705),
(21, 'NURDIANAH', 'Perempuan', '3205052912070285', '3205056510960002', '1996-10-25', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658157716, 1658157716),
(22, 'RIVAL WIJAYA', 'Laki-laki', '3205051609200006', '3204090404940001', '1994-04-04', 'BANDUNG', 'Islam', '001', '018', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658157860, 1658157860),
(23, 'SYARIFUDIN', 'Laki-laki', '3205051303120015', '3205052010820011', '1982-10-20', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658157861, 1658157861),
(24, 'ENENG ROHAYATI', 'Perempuan', '3205052909140002', '3205054909830008', '1983-09-09', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'SLTP/Sederajat', 2, 1658157862, 1658157862),
(25, 'LENI', 'Perempuan', '3205051303120015', '3205054107930095', '1993-07-01', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658158044, 1658158044),
(26, 'APRILIYANI', 'Perempuan', '3205051303120015', '3205054204140001', '2014-04-02', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658158148, 1658158148),
(27, 'WITA TANIA DEWI', 'Perempuan', '3205051609200006', '3205056512950001', '1996-12-25', 'GARUT', 'Islam', '001', '018', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658158157, 1658158157),
(28, 'ARYA SURYADI', 'Laki-laki', '3205051302090018', '3205050202890003', '1989-02-22', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658158267, 1658158267),
(29, 'RIAN AHMAD', 'Laki-laki', '3205055290914000', '3205052702090007', '2009-02-27', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'BelumSekolah', 7, 1658158271, 1658158271),
(30, 'ENJANG', 'Laki-laki', '3205052912070309', '3205050502660001', '1966-01-01', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658158343, 1658158343),
(31, 'RANI AURELIA', 'Perempuan', '3205051302090018', '3205017007960003', '1996-07-30', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658158381, 1658158381),
(32, 'HETI ROHAETI', 'Perempuan', '3205052912070309', '3205055705760002', '1976-05-17', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658158446, 1658158446),
(33, 'MUHAMMAD FAREK HAYKAL SP', 'Laki-laki', '3205051302090018', '3205050410070003', '2007-10-04', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658158470, 1658158470),
(34, 'DADANG KURNIA ALAM', 'Laki-laki', '3205052111140031', '3205050911890003', '1989-11-09', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'SLTP/Sederajat', 5, 1658158524, 1658158524),
(35, 'DESAP ALPIANTO', 'Laki-laki', '3205052912070309', '3205052112970001', '1997-12-21', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658158569, 1658158569),
(36, 'MIKAYLA OKTAVIA SURYADI', 'Perempuan', '3205051302090018', '3205054410150001', '2015-10-04', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658158599, 1658158599),
(37, 'H. ENDANG ILYAS', 'Laki-laki', '3205051302090028', '3205050510580003', '1958-09-15', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658159135, 1658159135),
(38, 'HJ. IIK RUKIAH', 'Perempuan', '3205051302090028', '3205054707650010', '1962-07-07', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658159234, 1658159234),
(39, 'YAYU NURSANI', 'Perempuan', '3205052111140031', '3205056204950004', '1989-04-23', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'SLTP/Sederajat', 2, 1658159277, 1658159277),
(40, 'TIHAN SEPTRIYANI', 'Perempuan', '3205052912070309', '3204054709020016', '2002-09-06', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658159317, 1658159317),
(41, 'DEDEN ROHIM', 'Laki-laki', '3205051302090028', '3205050812930004', '1993-12-08', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658159323, 1658159323),
(42, 'NUR INDAH SANTI PERMATA SARI PUTRI', 'Laki-laki', '3205051302090028', '3205051302090028', '2003-07-08', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658159438, 1658159438),
(43, 'KHARISSA NUR FADILLAH', 'Perempuan', '3205052111140031', '3205055711140001', '2014-11-17', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'BelumSekolah', 7, 1658159532, 1658159532),
(44, 'JANSEN MUHAMAD BAGAS', 'Laki-laki', '3205052912070309', '3205051201100007', '2009-01-12', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658159551, 1658159551),
(45, 'CECEP HARDIYANTO', 'Laki-laki', '3205051302090028', '3205172504890003', '1989-04-25', 'GARUT', 'Islam', '003', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658159682, 1658159682),
(46, 'RETKA AMAULUDY', 'Laki-laki', '3205052912070309', '3205052203120002', '2012-03-22', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658159698, 1658159698),
(47, 'IYANG', 'Laki-laki', '3205052812070106', '3205050806740004', '1974-06-08', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658159833, 1658159833),
(48, 'SUMIATI', 'Perempuan', '3205050312190008', '3205056412990011', '1997-12-24', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'SLTA/Sederajat', 2, 1658159856, 1658159856),
(49, 'ROHMAN', 'Laki-laki', '3205050403090021', '3205050606850006', '1983-06-06', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 5, 1658159870, 1658159870),
(50, 'ETI ROHAYATI', 'Perempuan', '3205052812070106', '3205056210760001', '1976-10-22', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658159917, 1658159917),
(51, 'MOCHAMAD HASBHI AL FATH', 'Laki-laki', '3205050312190008', '3205052504180003', '2018-04-25', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658159966, 1658159966),
(52, 'M. AKBAR IKBAL', 'Laki-laki', '3205052812070106', '3205051603030001', '2001-03-16', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658160025, 1658160025),
(53, 'YENI', 'Laki-laki', '3205050403090021', '3205056103890004', '1980-03-21', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 2, 1658160069, 1658160069),
(54, 'ENDA', 'Laki-laki', '3205052912070303', '3205061506570003', '1957-05-16', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658160182, 1658160182),
(55, 'RESTI RUSDIANTI', 'Perempuan', '3205052812070106', '3205054107980020', '1998-07-01', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658160219, 1658160219),
(56, 'SAFIRA', 'Perempuan', '3205052812070106', '3205056306080007', '2008-06-23', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658160308, 1658160308),
(57, 'MASRIA', 'Laki-laki', '3205050204110033', '3205050408510002', '1951-08-04', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 5, 1658160322, 1658160322),
(58, 'MINARSIH', 'Perempuan', '3205052912070303', '3205064507630005', '1963-07-06', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658160341, 1658160341),
(59, 'SAN SAN SUGIAWAN', 'Laki-laki', '3205052812070106', '3205051810100006', '2010-09-18', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658160436, 1658160436),
(60, 'MACIH', 'Perempuan', '3205050204110033', '3205054506550005', '1955-06-05', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 2, 1658160480, 1658160480),
(61, 'YAYAT SUTIANA', 'Laki-laki', '3205052912070303', '3205050107800103', '1982-07-20', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1658160509, 1658160509),
(62, 'MIRJA PUTRA PRATAMA', 'Laki-laki', '3205052812070106', '3205050804120001', '2012-04-08', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658160560, 1658160560),
(63, 'RIZKI MIFTAHUDIN', 'Laki-laki', '3205051005210006', '3205050904040001', '2004-04-09', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658160696, 1658160696),
(64, 'SINTA MARDIANA', 'Perempuan', '3205052912070303', '3205057103970002', '1997-03-31', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658160707, 1658160707),
(65, 'ZIHAN AULIA FAZRIN', 'Perempuan', '3205051005210006', '3205054307060003', '2006-07-03', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658160765, 1658160765),
(66, 'ALI SAIBANI', 'Laki-laki', '3205052912070303', '3205051212030003', '2008-12-12', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658160830, 1658160830),
(67, 'AUNURDIN', 'Laki-laki', '3205050208110007', '3205050810730001', '1973-10-08', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658160884, 1658160884),
(68, 'OGI GUNAWAN', 'Laki-laki', '3205052509150005', '3205052505930005', '1993-05-25', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658160957, 1658160957),
(69, 'PATIMAH', 'Perempuan', '3205050208110007', '3205054610690001', '1969-10-06', 'GARUT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658160993, 1658160993),
(70, 'MUHAMAD ZAELANI SITRA', 'Laki-laki', '3205050208110007', '3205050412020009', '2002-12-04', 'GARUTT', 'Islam', '002', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658161060, 1658161060),
(71, 'AWAN SETIAWAN', 'Laki-laki', '3205053112073993', '3205050204620001', '1962-04-02', 'GARUT', 'Islam', '003', '016', 'JL. BUNGUR NUSA INDAH , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'SLTA/Sederajat', 8, 1658161232, 1658161379),
(72, 'RAISA JULV MAULIA', 'Perempuan', '3205053112073993', '3205054705050001', '2005-03-07', 'GARUT', 'Islam', '003', '016', 'JL. BUNGU NUSA INDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658161343, 1658161343),
(73, 'MUHAMAD NAZRIL GUNAWAN', 'Laki-laki', '3205052509150005', '3205050411140004', '2014-11-04', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658161500, 1658161500),
(74, 'TAUPIK GUSTAMAN', 'Laki-laki', '3205052612072723', '3205050708830003', '1983-08-07', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1658161508, 1658161508),
(75, 'SITI KODARIYAH', 'Perempuan', '3205052612072723', '3205055811860002', '1986-11-18', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658161585, 1658161585),
(76, 'ZAHRA PUTRI SEPTIA', 'Perempuan', '3205052509150005', '3205056409190001', '2019-09-24', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658161585, 1658161585),
(77, 'TATANG', 'Laki-laki', '3205052712072838', '3205051707690002', '1969-07-17', 'GARUT', 'Islam', '001', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658161673, 1658161673),
(78, 'ENONG RUSTINI', 'Perempuan', '3205052712072838', '3205054101710010', '1971-01-01', 'GARUT', 'Islam', '001', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658161746, 1658161746),
(79, 'SALMA NADILAH NURFAUZIAH', 'Perempuan', '3205052712072838', '3205054701010003', '2001-01-07', 'GARUT', 'Islam', '001', '018', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658161831, 1658161831),
(80, 'SHOBIRIN ALAMIN', 'Laki-laki', '3205050408150016', '3205050208720008', '1972-08-02', 'JAKARTA', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658161896, 1658161896),
(81, 'ENTIS SUTISNA', 'Laki-laki', '3205053008150001', '3205052908810002', '1981-06-29', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 5, 1658161917, 1658161917),
(82, 'RIZA LUSIANA NASUTION', 'Perempuan', '3205050408150016', '3205056003720004', '1972-03-30', 'JAKARTA', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 1, 1658161991, 1658161991),
(83, 'SUMARNI', 'Perempuan', '3205053008150001', '3206045003930004', '1993-03-10', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'SLTP/Sederajat', 2, 1658162037, 1658162037),
(84, 'FEBY ANGGA KUSUMAH', 'Perempuan', '3205052805120008', '3205051602900003', '1990-02-16', 'BANDUNG', 'Islam', '002', '013', 'KP. GENTENG , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658162096, 1658162096),
(85, 'SAFFAANA AZKA MUJAAHIDAH', 'Perempuan', '3205050408150016', '3205056806050003', '2005-06-28', 'JAKARTA', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658162120, 1658162120),
(86, 'TETI KUSMIATI', 'Perempuan', '3205052805120008', '3205054101930031', '1992-01-01', 'GARUT', 'Islam', '002', '013', 'KP. GENTENG, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658162175, 1658162175),
(87, 'TUTI', 'Perempuan', '3205052912070302', '3205057101610001', '1961-01-31', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Cerai Mati', 'TamatSD', 11, 1658162228, 1658162228),
(88, 'KHALID MISY\'AL \'AZZAM', 'Laki-laki', '3205050408150016', '3205050801090008', '2009-01-08', 'JAKARTA', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658162233, 1658162233),
(89, 'INTAN SAUFAH ANGGRAENI', 'Perempuan', '3205052805120008', '3205054805120004', '2012-05-08', 'GARUT', 'Islam', '002', '013', 'KP. GENTENG , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658162279, 1658162279),
(90, 'DEDE KRISPAN', 'Laki-laki', '3205052912070302', '3205051211980002', '1998-11-12', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658162358, 1658162358),
(91, 'DEDI SUPRIADI', 'Laki-laki', '3205052912070316', '3205051909720002', '1972-09-19', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658162393, 1658162393),
(92, 'DAVEENA MUTIARA AMGGAENI', 'Perempuan', '3205052805120008', '3205056702190001', '2019-02-01', 'GARUT', 'Islam', '002', '013', 'KP. GENTENG, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658162444, 1658162444),
(93, 'IIS SUMIATI', 'Perempuan', '3205052912070316', '3205055708820003', '1982-08-17', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658162475, 1658162475),
(94, 'DIDIN', 'Laki-laki', '3205051709190004', '3205051031062000', '1962-10-03', 'GARUT', 'Islam', '005', '001', 'KP. LEUWIDAUN, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658162530, 1658162530),
(95, 'M DERI YANDI S', 'Laki-laki', '3205052912070316', '3205052502070006', '2007-02-25', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658162577, 1658162577),
(96, 'AJAN', 'Laki-laki', '3205052912070325', '3205051106630002', '1963-06-11', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 11, 1658162601, 1658162601),
(97, 'TITI', 'Perempuan', '3205051709190004', '3205055006760008', '1978-06-10', 'GARUT', 'Islam', '005', '001', 'KP. LEUWIDAUN, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658162612, 1658162612),
(98, 'IRA FITRIA', 'Perempuan', '3205052912070316', '3205056905980001', '1998-05-29', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658162659, 1658162659),
(99, 'WINDRI YANI', 'Perempuan', '3205051709190004', '3205056405160003', '2016-05-24', 'GARUT', 'Islam', '005', '001', 'KP. LEUWIDAUN, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658162694, 1658162694),
(100, 'ROHMAT KARTINI', 'Perempuan', '3205052912070325', '3205054304660005', '1968-04-03', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Kawin', 'TamatSD', 11, 1658162773, 1658162773),
(101, 'MOMOS', 'Laki-laki', '3205052912070287', '3205052004520002', '1952-04-20', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658162807, 1658162807),
(102, 'ALAL ALJABAR', 'Laki-laki', '3205050303200011', '3205222709920002', '1992-09-27', 'GARUT', 'Islam', '003', '015', 'PERUM CIJTAI ASRI Z-4, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'StrataI', 5, 1658162857, 1658162857),
(103, 'ERNA SITI NURJANAH', 'Perempuan', '3205052912070325', '3205056808900005', '1990-08-28', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658162909, 1658163251),
(104, 'EUIS ROSWATI', 'Perempuan', '3205052912070287', '3205054107540013', '1954-07-01', 'GARUT', 'Islam', '02', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658162917, 1658162917),
(105, 'MIRANTY PUTRI KUSNADI', 'Perempuan', '3205050303200011', '3205050705950002', '1995-05-07', 'GARUT', 'Islam', '003', '015', 'PERUM CIJATI ASRI Z-4, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'Diploma', 9, 1658162959, 1658162959),
(106, 'NANDI AGUSTIA', 'Perempuan', '3205052912070325', '3205050508970001', '1995-08-05', 'GARUT', 'Islam', '002', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658163225, 1658163225),
(107, 'SAEPUL  ROHMAN', 'Laki-laki', '3205052812070055', '3205051201710001', '1971-01-12', 'GARUT', 'Islam', '001', '006', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658814352, 1658814352),
(108, 'YANI SYARIFAH', 'Perempuan', '3205051812140029', '3205055212760010', '1976-12-12', 'GARUT', 'Islam', '03', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'SLTA/Sederajat', 2, 1658814435, 1658814435),
(109, 'JUBAEDAH', 'Perempuan', '3205052812070055', '3205055510780004', '1978-10-15', 'GARUT', 'Islam', '001', '006', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658814453, 1658814453),
(110, 'FAISAL FIKRI RAHMAN', 'Laki-laki', '3205052812070055', '3205050911010002', '2001-11-19', 'GARUT', 'Islam', '001', '006', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658814552, 1658814552),
(111, 'ARSI KRISNAWATI FATIMAH', 'Perempuan', '3205051812140029', '3205056311990004', '1999-11-23', 'GARUT', 'Islam', '03', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658814584, 1658814584),
(112, 'FAHMI APRILIYADI RAHMAN', 'Laki-laki', '3205052812070055', '3205051204090002', '2009-04-12', 'GARUT', 'Islam', '001', '006', 'KP. SENI  BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658814652, 1658814652),
(113, 'RIFKI MAULANA', 'Laki-laki', '3205051812140029', '3205053105040008', '2004-05-31', 'GARUT', 'Islam', '03', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658814686, 1658814686),
(114, 'RACHMAT SOPIAN', 'Laki-laki', '3205010908170014', '3205011907890002', '1980-07-19', 'GARUT', 'Islam', '001', '006', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658814788, 1658814788),
(115, 'AULIYA MAHARANI TRI PUTRI', 'Perempuan', '3205051812140029', '3205055208100007', '2010-08-12', 'GARUT', 'Islam', '03', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658814801, 1658814801),
(116, 'WILDA NURBAYANI SALIS', 'Perempuan', '3205010908170014', '3205055311900003', '1990-11-13', 'GARUT', 'Islam', '001', '006', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658814881, 1658814881),
(117, 'ROBBIL JANUAR FIRDAUS', 'Laki-laki', '3205051812140029', '3205051101120006', '2012-01-11', 'GARUT', 'Islam', '03', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658814901, 1658814901),
(118, 'MAGHFIRA PUTRI SOPIAN', 'Perempuan', '3205010908170014', '3205015709170005', '2017-09-17', 'GARUT', 'Islam', '001', '006', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658815005, 1658815005),
(119, 'DENI ROMANSAH', 'Laki-laki', '3205052612072718', '3205050504760010', '1976-04-05', 'GARUT', 'Islam', '02', '03', 'KP. SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'TamatSD', 8, 1658815121, 1658815121),
(120, 'CALVI ELPANI', 'Perempuan', '3205052612072718', '3205055101010007', '2001-01-11', 'GARUT', 'Islam', '02', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658815252, 1658815252),
(121, 'BETI ROSMIYATI', 'Perempuan', '3205052612072718', '3205056912850002', '1985-12-29', 'GARUT', 'Islam', '02', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1658815488, 1658815488),
(122, 'ENGKUS KUSDINAR', 'Laki-laki', '3205052812070047', '3205050103570004', '1957-03-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658815605, 1658815605),
(123, 'TOPIK MOHAMAD RIDWAN', 'Laki-laki', '3205052612072718', '3205050611910003', '1991-11-06', 'GARUT', 'Islam', '02', '03', 'KP. SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1658815632, 1658815632),
(124, 'UCI', 'Perempuan', '3205052812070047', '3205054905620004', '1962-05-09', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658815707, 1658815707),
(125, 'EJA', 'Perempuan', '3205052906150009', '3205054804410001', '1945-06-04', 'GARUT', 'Islam', '02', '03', 'KP. SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658815779, 1658815779),
(126, 'SEFTI FADILLAH', 'Perempuan', '3205052812070047', '3205054309020004', '2002-09-03', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'Tamat SD/Sederajat', 6, 1658815823, 1658816230),
(127, 'CACIH MINTARSIH', 'Perempuan', '3205052612072593', '3205054611420001', '1942-11-06', 'GARUT', 'Islam', '01', '03', 'KP. SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658815939, 1658815939),
(128, 'RINI MARINI', 'Perempuan', '3205052612072593', '3205054503830001', '1983-03-05', 'GARUT', 'Islam', '01', '03', 'KP. SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'SLTP/Sederajat', 2, 1658816038, 1658816038),
(129, 'HAURA NUR RAHMADHANI', 'Perempuan', '3205052612072593', '3205050707140002', '2014-07-07', 'GARUT', 'Islam', '01', '03', 'KP. SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658816154, 1658816154),
(130, 'EUTIK', 'Perempuan', '3205052612072737', '3205054107380008', '1937-04-02', 'GARUT', 'Islam', '03', '03', 'KP. JAYAWARAS, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658816305, 1658816305),
(131, 'MUHAMAD FAUZAN RIZKY RAMADHAN', 'Laki-laki', '3205052812070047', '3205052405180003', '2018-05-24', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658816334, 1658816334),
(132, 'ULOH SAEPUDIN', 'Laki-laki', '3205052812070058', '3205050108690001', '1969-08-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658816459, 1658816459),
(133, 'HERMAN SYAMSUDIN', 'Laki-laki', '3205052612072857', '3205050505680001', '1968-05-05', 'GARUT', 'Islam', '01', '03', 'JL. CIMANUK BLK 146, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658816589, 1658816589),
(134, 'ELIS SITI AISYAH', 'Perempuan', '3205052612072857', '3205056510650001', '1965-10-25', 'GARUT', 'Islam', '01', '03', 'JL. CIMANUK BLK 146, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658816695, 1658816695),
(135, 'TATING', 'Perempuan', '3205052812070058', '3205055011720001', '1969-08-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658816780, 1658816780),
(136, 'JAMIL REFTI SUPRIATNA', 'Laki-laki', '3205052612072857', '3205051707920002', '1992-07-17', 'GARUT', 'Islam', '01', '03', 'JL. CIMANUK BLK 146, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658816786, 1658816786),
(137, 'NELLI AGUSTIN', 'Perempuan', '3205052812070058', '3205056808960001', '1996-08-28', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658816887, 1658816887),
(138, 'EMIN AMINAH', 'Perempuan', '3205052612072828', '3205054205510004', '1951-05-02', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 8, 1658816910, 1658816910),
(139, 'NUGI NUGRAHA', 'Laki-laki', '3205052812070058', '3205050905980006', '1998-05-09', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658817008, 1658817008),
(140, 'HEN HEN', 'Laki-laki', '3205052612072828', '3205050102920012', '1992-02-01', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658817021, 1658817021),
(141, 'NOVI ANDRIANA', 'Laki-laki', '3205052000409000', '3205051311800005', '1980-11-03', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1658817173, 1658817173),
(142, 'LILI RUSTANDI', 'Laki-laki', '3205052612072730', '3205050911550001', '1955-07-05', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658817242, 1658817242),
(143, 'SRI MARYATI', 'Perempuan', '3205052004090004', '3205054810820004', '1980-10-08', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658817376, 1658817410),
(144, 'ATIH', 'Perempuan', '3205052612072730', '3205054507570004', '1957-07-05', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658817419, 1658817419),
(145, 'ZLATAN PRAIZI ANDRIANA', 'Laki-laki', '3205052004090004', '3205050812090001', '2009-12-08', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658817531, 1658817531),
(146, 'SUPIAH', 'Perempuan', '3205052612072730', '3205055906800008', '1980-06-19', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 5, 1658817536, 1658817536),
(147, 'RESI PEBRIYANI', 'Perempuan', '3205052612072730', '3205054502000006', '2000-02-05', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 7, 1658817642, 1658817642),
(148, 'ZULAIKHA PRADIZZY ANDRIANA', 'Perempuan', '3205052004090004', '3205055602180003', '2018-02-16', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658817660, 1658817660),
(149, 'YAYAT RUHIAT', 'Laki-laki', '3205052612072727', '3205050103640002', '1964-03-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658817748, 1658817748),
(150, 'ALAN BUDI KUSUMAH', 'Laki-laki', '3205052309160007', '3205050106920003', '1992-06-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658817797, 1658817797),
(151, 'ADE ANIH', 'Perempuan', '3205052612072727', '3205054305640001', '1964-05-03', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658817852, 1658817852),
(152, 'KIKI INAS FATHINAH', 'Perempuan', '3205052309160007', '3211174710910011', '1991-10-07', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658817895, 1658817895),
(153, 'NAURA HALWATUZAHRA KUSUMAH', 'Perempuan', '3205052309160007', '3205054805180002', '2018-05-08', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658817990, 1658817990),
(154, 'YANTO', 'Laki-laki', '3205052612072724', '3205050707790010', '1979-07-07', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658818068, 1658818068),
(155, 'HENDRIK ADRIAN', 'Laki-laki', '3205052812070054', '3205050107750023', '1975-07-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658818103, 1658818103),
(156, 'SUSILAWATI', 'Perempuan', '3205052612072724', '3205056707800006', '1980-07-27', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658818175, 1658818175),
(157, 'NENG AL MULYATI', 'Perempuan', '3205052812070054', '3205054906750001', '1975-05-09', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658818283, 1658818283),
(158, 'ANGGA SAPUTRA PRATAMA', 'Laki-laki', '3205052612072724', '3205052802020006', '2002-02-28', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658818302, 1658818302),
(159, 'RAVI RAZWA RAMDANI', 'Laki-laki', '3205052812070054', '3205055490675000', '2005-10-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658818376, 1658818376),
(160, 'ENGKUS', 'Laki-laki', '3205052003090009', '3205050308580002', '1958-08-03', 'GARUT', 'Islam', '001', '005', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658818460, 1658818460),
(161, 'ENTIN', 'Perempuan', '3205052003090009', '3205054504590001', '1959-04-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658818552, 1658818552),
(162, 'ANDI', 'Laki-laki', '3205052612072724', '3205052111040001', '2004-11-21', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658818644, 1658818644),
(163, 'KAKAM KAMALUDIN', 'Laki-laki', '3205052003090009', '3205050612920002', '1992-12-06', 'GARUT', 'Islam', '001', '005', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658818664, 1658818664),
(164, 'SUCI AGUSTINA RAMADANI', 'Perempuan', '3205052612072724', '3205051708100001', '2009-08-17', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658818742, 1658818742),
(165, 'PARMAN YUSUP', 'Laki-laki', '3205055210415001', '3206201808810012', '1981-08-15', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658818780, 1658818780),
(166, 'M RIZKI AL BUKHORI', 'Laki-laki', '3205052612072724', '3205052211140004', '2014-11-22', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658818821, 1658818821),
(167, 'TATI SUMIATI', 'Perempuan', '3205052104150015', '3205207112780001', '1978-01-23', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658818878, 1658818878),
(168, 'OTONG SUNTARI', 'Laki-laki', '3205052002090027', '3205050305480003', '1948-05-03', 'GARUT', 'Islam', '002', '003', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 5, 1658818987, 1658818987),
(169, 'RUDHA SITI ZAHRA', 'Perempuan', '3205052104150015', '3205206502140001', '2014-02-25', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658818994, 1658818994),
(170, 'KARTINI APRILIANTI', 'Perempuan', '3205052002090027', '3205055203950004', '1995-04-21', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 9, 1658819124, 1658819124),
(171, 'AJANG SOMANTRI', 'Laki-laki', '3205052601120014', '3205050506820010', '1982-06-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658819130, 1658819130),
(172, 'TETI KUSTINI', 'Perempuan', '3205052601120014', '3205055208860004', '1986-12-08', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658819223, 1658819223),
(173, 'ASEP HIDAYAT', 'Laki-laki', '3205052612072719', '3205051104710002', '1971-04-11', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 11, 1658819273, 1658819273),
(174, 'MOCHAMMAD ALWI NURDIN', 'Laki-laki', '3205052601120014', '3205050305120001', '2012-01-03', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658819325, 1658819325),
(175, 'DEUIS SURYATI', 'Perempuan', '3205052612072719', '3205054101740008', '1974-01-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658819377, 1658819377),
(176, 'SITI ALIFA', 'Perempuan', '3205052601122001', '3205054612140002', '2014-12-06', 'JAKARTA', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658819418, 1658819418),
(177, 'DHEA NURUL HIDAYAT', 'Perempuan', '3205052612072719', '3205056106970003', '1997-06-21', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658819485, 1658819485),
(178, 'YUDIANTO', 'Laki-laki', '3205050412090008', '3205052003660006', '1968-03-20', 'JAKARTA', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658819572, 1658819572),
(179, 'NASYA ARMANIA NUR HIDAYAT', 'Perempuan', '3205052612072719', '3205054509050002', '2004-09-05', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658819594, 1658819594),
(180, 'NIA KOMARIAH', 'Perempuan', '3205050412090008', '3205055706820001', '1982-06-17', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658819677, 1658819677),
(181, 'RAMDHAN AL FATIH HIDAYAT', 'Laki-laki', '3205052612072719', '3205052005170003', '2017-05-20', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658819684, 1658819684),
(182, 'ELVA JULIANI', 'Perempuan', '3205050412090008', '3205054107020111', '2002-07-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658819802, 1658819802),
(183, 'IBRAHIM', 'Laki-laki', '3205052609130011', '3205051501480001', '1948-01-15', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 11, 1658819833, 1658819833),
(184, 'NOVIANA YUDIANTO', 'Laki-laki', '3205050412090008', '3205051609100002', '2010-09-18', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658819923, 1658819923),
(185, 'YANTI SUSANTI', 'Perempuan', '3205052609130011', '3205055208760010', '1976-08-12', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658819925, 1658819925),
(186, 'INDRA JAYA PRASONO', 'Laki-laki', '3205052812070089', '3205051704850002', '1985-04-17', 'GARUT', 'Islam', '001', '005', 'KP.SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658820009, 1658820009),
(187, 'AGUNG NUGRAHA', 'Laki-laki', '3205052609130011', '3205050809070007', '2007-08-08', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658820065, 1658820065),
(188, 'GITA DESTIA', 'Perempuan', '3205052812070089', '3205056112860001', '0986-12-11', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658820133, 1658820133),
(189, 'AZZAM NUR IRSYAAD', 'Laki-laki', '3205052812070089', '3205051612100006', '2010-12-16', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658820226, 1658820226),
(190, 'YULI YULIANTI', 'Perempuan', '3205052609130011', '3205054611080003', '2008-11-06', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658820286, 1658820286),
(191, 'RAFARDAN REYNAN ATALA', 'Laki-laki', '3205052812070089', '3205053101180001', '2018-01-31', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658820314, 1658820314),
(192, 'NONO SUMARNO', 'Laki-laki', '3205052612072754', '3205050101420041', '1942-01-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658820422, 1658820422),
(193, 'CUCU SARTIKA', 'Perempuan', '3205051808150001', '3205054407570001', '1957-07-04', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658820498, 1658820498),
(194, 'ENEN', 'Perempuan', '3205052612072754', '3205054110630001', '1963-10-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 11, 1658820508, 1658820508),
(195, 'SITI MARWATI', 'Perempuan', '3205052612072754', '3205054608800007', '1980-08-06', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658820587, 1658820587),
(196, 'FERI HERMAWAN', 'Laki-laki', '3205051808150008', '3205050110830001', '1983-10-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658820618, 1658820618),
(197, 'TOMI HAMDANI', 'Laki-laki', '3205051808150008', '3205051905850001', '1985-05-19', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658820726, 1658820726),
(198, 'ZESSI KARISTI', 'Laki-laki', '3205050402160006', '3205060706600003', '1993-02-21', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658820745, 1658820745),
(199, 'YANA APRIANA', 'Perempuan', '3205051808150008', '3205052804880001', '1988-04-28', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658820810, 1658820810);
INSERT INTO `penduduk` (`id`, `nama`, `jenis_kelamin`, `no_kk`, `nik`, `tanggal_lahir`, `tempat_lahir`, `agama`, `rt`, `rw`, `alamat_spesifik`, `status_perkawinan`, `status_pendidikan`, `id_pekerjaan`, `date_created`, `date_modify`) VALUES
(200, 'HANI NURAENI', 'Perempuan', '3205050402160006', '3205054306930002', '1993-04-26', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 9, 1658820845, 1658820845),
(201, 'QORRY RATIH SEPTIANI', 'Perempuan', '3205051808150008', '3205054409960002', '1996-09-04', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658820900, 1658820900),
(202, 'DEDEN SOMANTRI', 'Laki-laki', '3205052812070060', '3205060603650001', '1965-03-06', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658821023, 1658821023),
(203, 'SHAUMI NUR RIZKI', 'Perempuan', '3205050402160006', '3205054906170002', '2017-06-09', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658821083, 1658821083),
(204, 'ELI MARLINA', 'Perempuan', '3205082812070060', '3205056008680001', '1968-08-10', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658821120, 1658821120),
(205, 'YUGA GUMILAR', 'Laki-laki', '3205052812070060', '3205052401910002', '1991-01-24', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658821218, 1658821218),
(206, 'ROKIB ROHAENDI', 'Laki-laki', '3205050407180006', '3205053001080001', '1997-09-03', 'GARUT', 'Islam', '03', '03', 'JL. CIMANUK KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658821287, 1658821287),
(207, 'ALDI ADITYA', 'Laki-laki', '3205052812070060', '3205051807990003', '1999-07-18', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658821321, 1658821321),
(208, 'ADINDA PUTRI', 'Perempuan', '3205050407180006', '3205054503970004', '1997-03-05', 'GARUT', 'Islam', '03', '03', 'JL. CIMANUK KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658821389, 1658821389),
(209, 'NOVAN KURNIAWAN', 'Laki-laki', '3205052812070060', '3205052311140002', '2014-11-23', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658821410, 1658821410),
(210, 'BELIA AISYAH PUTRI', 'Perempuan', '3205050407180006', '3205057004190001', '2019-04-30', 'GARUT', 'Islam', '03', '03', 'JL. CIMANUK KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658821511, 1658821511),
(211, 'EUIS LESMANA WATI', 'Perempuan', '3205050407180006', '3205055107680003', '1968-07-11', 'GARUT', 'Islam', '03', '03', 'JL. CIMANUK KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'SLTP/Sederajat', 11, 1658821603, 1658821603),
(212, 'ADIS SEPTIAN', 'Laki-laki', '3205052812070048', '3205050109830005', '1983-09-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658823968, 1658823968),
(213, 'BANA SUBANA', 'Laki-laki', '3205052612072844', '3205050101550008', '1950-01-01', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658824022, 1658824022),
(214, 'CUCU ROSMIATI', 'Perempuan', '3205052812070048', '3205056506860001', '1986-06-25', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658824066, 1658824066),
(215, 'ONIH SUMARANI', 'Perempuan', '3205052612072844', '3205054707570002', '1957-01-01', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658824140, 1658824140),
(216, 'RAHMA AULIA', 'Perempuan', '3205052812070048', '3205056809070001', '2007-09-28', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658824161, 1658824161),
(217, 'ROSWATI', 'Perempuan', '3205052612072844', '3205055107820002', '1982-07-11', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 8, 1658824243, 1658824243),
(218, 'RULY FATHURAHMAN', 'Laki-laki', '3205052812070048', '3205050211100002', '2010-11-02', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658824267, 1658824267),
(219, 'ALEX SULAEGAR', 'Laki-laki', '3205052512071232', '3205052106710004', '1971-06-21', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658824388, 1658824388),
(220, 'IMAS NURJANAH', 'Perempuan', '3205052512071232', '3205056606750001', '1975-06-26', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658824485, 1658824485),
(221, 'ASEP RUDI KURNIADI', 'Laki-laki', '3205050805090034', '3205051208850003', '1985-08-12', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658824556, 1658824556),
(222, 'TEVIN MUHAMAD FERRARA', 'Laki-laki', '3205052512071232', '3205051902970001', '1997-02-19', 'BANDUNG', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658824570, 1658824570),
(223, 'NADYA AMALIA BILQIS', 'Perempuan', '3205052512071232', '3205056911050001', '2005-11-29', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658824676, 1658824676),
(224, 'IDA FARIDA', 'Perempuan', '3205050805090034', '3205015312100003', '1986-05-03', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658824677, 1658824677),
(225, 'DELVIN ZIO PEBRIANO', 'Laki-laki', '3205052512071232', '3205051202110001', '2011-02-12', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658824784, 1658824784),
(226, 'AZMI RABIATUN SANI', 'Perempuan', '3205050805090034', '3205015312100004', '2010-12-13', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658824882, 1658824882),
(227, 'CHANTIKA AULIA PUTRI', 'Perempuan', '3205050805090034', '3205054407170007', '2017-07-04', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658824966, 1658824966),
(228, 'UUS RUSTANDI', 'Laki-laki', '3205052612072739', '3205050101600003', '1960-01-11', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 9, 1658824969, 1658824969),
(229, 'ASEP SUDRAJAT', 'Laki-laki', '3205051702090042', '3205052412700002', '1970-12-24', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Hidup', 'TamatSD', 5, 1658825096, 1658825096),
(230, 'EMPAT FATIMAH', 'Perempuan', '3205052612072739', '3205054101660006', '1966-01-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658825165, 1658825165),
(231, 'NESA ASTENIVEA', 'Perempuan', '3205051702090042', '3205054106000008', '2000-08-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658825198, 1658825198),
(232, 'LUKMAN RUSTAMAN', 'Laki-laki', '3205052612072739', '3205052110930002', '1993-10-21', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658825395, 1658825395),
(233, 'YAYAN GUNAWAN', 'Laki-laki', '3205052812070039', '3205050520650002', '1985-10-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 15, 1658825552, 1658825552),
(234, 'SALMAN MAULANA YASIN', 'Laki-laki', '3205052612072739', '3205052110990001', '1999-10-21', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658825577, 1658825577),
(235, 'ELMI KONTESA', 'Perempuan', '3205052812070039', '3205055604760004', '1976-04-16', 'BENGKULU', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658825644, 1658825644),
(236, 'ANDRI YANA', 'Laki-laki', '3205051311180003', '3205051802720002', '1972-02-18', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658825715, 1658825715),
(237, 'GERRI ANDRIAN GUNAWAN', 'Laki-laki', '3205050528120700', '3205053103980001', '1998-03-31', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658825740, 1658825740),
(238, 'YOLDAN SABASTIAN GUNAWAN', 'Laki-laki', '3205052812070039', '3205052309050002', '2005-09-23', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658825836, 1658825836),
(239, 'AL TARIAH', 'Perempuan', '3205051311180003', '3205056003820001', '1982-03-20', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658825836, 1658825836),
(240, 'JAJANG SUHERMAN', 'Laki-laki', '3205052711107000', '3205050100668000', '1968-06-10', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658825926, 1658825926),
(241, 'RAFLI FATURAHMAN ANDRIYANA PUTRA', 'Laki-laki', '3205051311180003', '3205052009040002', '2004-09-20', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658825927, 1658825927),
(242, 'IMAS SURYANI', 'Perempuan', '3205052711070005', '3205054909830002', '1983-09-09', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658826024, 1658826024),
(243, 'MUHAMAD HAYKAL', 'Laki-laki', '3205052711070005', '3205052311060004', '2006-11-23', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658826150, 1658826150),
(244, 'REYHAN NUR AL FAUZANIAH', 'Laki-laki', '3205051311180003', '3205051101100007', '2010-01-11', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658826154, 1658826154),
(245, 'REGI MULYA NUR RAMDHANI', 'Laki-laki', '3205051311180003', '3205050608120005', '2012-08-06', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658826247, 1658826247),
(246, 'FIRMAN HERMANSYAH', 'Laki-laki', '3205052711070005', '3205051208100004', '2010-08-28', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658826257, 1658826257),
(247, 'MUHAMMAD RAZKA FEBRIAN', 'Laki-laki', '3205051311180003', '3205051702180002', '2018-02-17', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658826323, 1658826323),
(248, 'FITRI ANGGRAENI', 'Perempuan', '3205052711070005', '3205056408120008', '2012-12-24', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658826365, 1658826365),
(249, 'AZIS MULYANA', 'Laki-laki', '3205053011090015', '3205050101430023', '1943-01-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658826431, 1658826431),
(250, 'DEDE HERMAWAN', 'Laki-laki', '3205052812070064', '3205052504520001', '1952-04-25', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658826456, 1658826456),
(251, 'IYAM MARIYAM', 'Perempuan', '3205052812070064', '3205055505570005', '1957-05-15', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 15, 1658826590, 1658826590),
(252, 'U MARIAM', 'Perempuan', '3205053011090015', '3205054303650001', '1965-03-03', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658826606, 1658826606),
(253, 'ENDANG MANSUR', 'Laki-laki', '3205052612072744', '3205050103550002', '1955-08-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 11, 1658826807, 1658826807),
(254, 'AI SUPRIATIN', 'Laki-laki', '3205051405200002', '3205056712780003', '1976-12-27', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658826833, 1658826833),
(255, 'ALDI PERDIAN', 'Laki-laki', '3205051405200002', '3205053108970001', '1997-08-31', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658826954, 1658826954),
(256, 'TARMANAH', 'Laki-laki', '3205052612072744', '3205054506650001', '1965-06-05', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658827022, 1658827022),
(257, 'ALVIN RESTU FAUZI', 'Laki-laki', '3205051405200002', '3205050912030003', '2003-09-09', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658827053, 1658827053),
(258, 'AURA PUTRI AGUSTYA', 'Perempuan', '3205051405200002', '3205054506090004', '2009-06-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658827146, 1658827146),
(259, 'MIA ADIATI', 'Perempuan', '3205052612072744', '3205054603940006', '1994-06-03', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 9, 1658827260, 1658827260),
(260, 'SOPIDIN', 'Laki-laki', '3205051511160001', '3205051140782000', '1982-07-14', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658827286, 1658827286),
(261, 'ROSDIANI', 'Perempuan', '3205051511160001', '3205015611830004', '1983-11-16', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658827373, 1658827373),
(262, 'AA RAHMAT S', 'Laki-laki', '3205052612072744', '3205052707010002', '2002-07-07', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658827403, 1658827403),
(263, 'MEISYA AYANA NUR\'ASIFA', 'Perempuan', '3205051511160001', '3205017101130002', '2013-01-31', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658827532, 1658827532),
(264, 'ADE HERMANSYAH', 'Laki-laki', '3205052812070051', '3205050101560020', '1956-01-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 5, 1658827655, 1658827655),
(265, 'AMAS MASIRO', 'Laki-laki', '3205052812071954', '3205050203620003', '1962-03-02', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658836411, 1658836411),
(266, 'YUYUN SETIAWAN', 'Laki-laki', '3205052812071987', '3205050510830001', '1983-10-05', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658836482, 1658836482),
(267, 'DEDE', 'Perempuan', '3205052812071954', '3205054805630002', '1963-05-06', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658836514, 1658836514),
(268, 'ASTUTI', 'Perempuan', '3205052812071987', '3205055501840001', '1984-01-15', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658836575, 1658836575),
(269, 'ADIL', 'Laki-laki', '3205052812071954', '3205051004850002', '1965-04-10', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658836635, 1658836635),
(270, 'VIKAL MUHAMAD YUSA', 'Laki-laki', '3205052812071987', '3205052611060001', '2006-11-26', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658836671, 1658836671),
(271, 'EROM', 'Laki-laki', '3205052812071985', '3205050101570019', '1957-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658836745, 1658836745),
(272, 'VANI VANIA AZAHRA', 'Perempuan', '3205052812071987', '3205056601150004', '2015-01-26', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658836826, 1658836826),
(273, 'AE', 'Perempuan', '3205052812071985', '3205054101650019', '1965-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658836866, 1658836866),
(274, 'RIDWAN KUSTIAWAN', 'Laki-laki', '3205050309130013', '3205050310860002', '1986-10-03', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658836984, 1658836984),
(275, 'INDRI SAPRINA', 'Perempuan', '3205052812071985', '3205054401960002', '1996-01-04', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658837049, 1658837049),
(276, 'NURYANTI', 'Perempuan', '3205050309130013', '3205054508790004', '1979-08-05', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658837088, 1658837088),
(277, 'JIMI SUHERMAN', 'Laki-laki', '3205052812071985', '3205050603000002', '1999-05-15', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658837174, 1658837174),
(278, 'RISKY NURDIANSYAH', 'Laki-laki', '3205050309130013', '3205050705120003', '2012-05-07', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658837189, 1658837189),
(279, 'ANISA NURPANIFAUZIAH', 'Perempuan', '3205052812071985', '3205054107060044', '2003-03-06', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658837303, 1658837303),
(280, 'VIKAL MUHAMAD YUSA', 'Laki-laki', '3205052812071985', '3205052611060002', '2006-11-26', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658837399, 1658837399),
(281, 'DASEP MULYADI', 'Laki-laki', '3205050312080005', '3205050101790020', '1979-01-01', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 9, 1658837436, 1658837436),
(282, 'NANA SURYANA', 'Laki-laki', '3205053006090010', '3205050311710005', '1971-11-03', 'CIAMIS', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658837515, 1658837515),
(283, 'NURHAYATI', 'Perempuan', '3205050312080005', '3205055102830002', '1983-06-08', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658837586, 1658837586),
(284, 'MIA ROSMIATI', 'Perempuan', '3205053006090010', '3205056805830001', '1982-05-28', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658837616, 1658837616),
(285, 'INDRA MAULANA', 'Laki-laki', '3205053006090010', '3205051707020006', '2002-01-17', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658837718, 1658837718),
(286, 'M VEGA MULYADI', 'Laki-laki', '3205050312080005', '3205051210080001', '2008-10-12', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658837757, 1658837757),
(287, 'SRI RAHAYU AUDINITA', 'Perempuan', '3205053006090010', '3205054401120001', '2012-01-04', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658837848, 1658837848),
(288, 'NANA JUHANA', 'Laki-laki', '3205052812072002', '3205054101690013', '1961-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1658837967, 1658837967),
(289, 'RESVI PUTRI MULYADI', 'Perempuan', '3205050312080005', '3205054509150002', '2015-09-05', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658838020, 1658838020),
(290, 'MIMIN MINTARSIH', 'Perempuan', '3205052812072002', '3205054101680013', '1969-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 2, 1658838107, 1658838107),
(291, 'RESVA PUTRI MULYADI', 'Perempuan', '3205050312080005', '3205054500150001', '2015-09-05', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658838171, 1658838171),
(292, 'ADE FISKA', 'Laki-laki', '3205052812072002', '3205051919109600', '1996-10-12', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 7, 1658838251, 1658838251),
(293, 'ADE HANAPIAH', 'Laki-laki', '3205052812071979', '3205053005570001', '1957-05-30', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658839834, 1658839834),
(294, 'U SUGIARTI', 'Perempuan', '3205052812071979', '3205057007570001', '1957-07-30', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'Diploma', 3, 1658839982, 1658839982),
(295, 'YISEP LUKMANUL HAKIM', 'Laki-laki', '3205052812071979', '3205052109850001', '1985-09-21', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'StrataI', 9, 1658840166, 1658840166),
(296, 'NENDEN NOVIANTI', 'Perempuan', '3205052812071979', '3205056011930002', '1993-11-20', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658840267, 1658840267),
(297, 'IYUS FIRDAUS', 'Laki-laki', '3205052812072005', '3205050803730001', '1973-03-08', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658840634, 1658840634),
(298, 'DIAH SYADIAH', 'Perempuan', '3205052812072005', '3205054410770003', '1977-10-04', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 16, 1658840911, 1658841181),
(299, 'ADITYA', 'Laki-laki', '3205052812072001', '3205053006990005', '1999-06-30', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658840919, 1658840919),
(300, 'ILHAM KURNIAWAN', 'Laki-laki', '3205052812072000', '3205050710030005', '2003-10-07', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658841050, 1658841050),
(301, 'AKHDAN NAUFAL AHMAD', 'Laki-laki', '3205052812072005', '3205052809040002', '2004-09-28', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658841057, 1658841057),
(302, 'ANGGARA MULYANA', 'Laki-laki', '3205052812072002', '3205050712050001', '2005-12-07', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658841209, 1658841209),
(303, 'NOVA ZUANITA', 'Perempuan', '3205052812072002', '3205055902080001', '2008-02-19', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658841301, 1658841301),
(304, 'TSANIA RIMADHANI YUSRIYYAH', 'Perempuan', '3205052812072005', '3205054709090003', '2009-09-07', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658841324, 1658841324),
(305, 'PURI PURNAMASARI', 'Perempuan', '3205052812072002', '3205054107100072', '2010-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658841523, 1658841523),
(306, 'AGUS  SOBAR', 'Laki-laki', '3205052812071990', '3205050101830013', '1983-01-01', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658841523, 1658841523),
(307, 'TITIN ROSTINA', 'Perempuan', '3205052812071990', '3205055307820003', '1982-08-13', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 9, 1658841632, 1658841632),
(308, 'ARIANTO', 'Laki-laki', '3205052708130003', '3205052007820006', '1982-07-20', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Hidup', 'SLTP/Sederajat', 9, 1658841685, 1658841685),
(309, 'RIZKI  MUHAMAD GUSTIAWAN', 'Laki-laki', '3205052812071990', '3205050105040001', '2004-05-01', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658841764, 1658841764),
(310, 'RISTI FEBRIANI', 'Perempuan', '3205052812071990', '3205056802120010', '2012-02-28', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG IDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658841889, 1658841889),
(311, 'AURA NOVIA ARIANTI', 'Perempuan', '3205052708130003', '3205054411070010', '2007-11-04', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658841985, 1658841985),
(312, 'HENDRA PERMANA', 'Laki-laki', '3205052303200004', '3205052109910004', '1991-09-21', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658990637, 1658990637),
(313, 'SELVI SELVIANA', 'Perempuan', '3205052303200004', '3205015112000003', '2000-12-11', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658990787, 1658990787),
(314, 'AL BARIQ PUTRA PERMANA', 'Laki-laki', '3205052303200004', '3205052409180002', '2018-09-24', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658990968, 1658990968),
(315, 'AI', 'Perempuan', '3205051702090002', '3205055211780008', '1978-11-12', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658991065, 1658991065),
(316, 'ATANG HIDAYAT', 'Laki-laki', '3205052812071964', '3205052601610001', '1961-01-26', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658991098, 1658991098),
(317, 'VELIA HAIRUN NISA', 'Perempuan', '3205051702090002', '3205055012060004', '2006-12-10', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658991143, 1658991143),
(318, 'MIMIN MINTARSIH', 'Perempuan', '3205052812071964', '3205055210630002', '1963-10-12', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658991168, 1658991168),
(319, 'RIKA NURMALASARI', 'Perempuan', '3205052812071964', '3205054301880001', '1988-01-03', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658991270, 1658991270),
(320, 'ARIP MAULANA', 'Laki-laki', '3205052812071964', '3205050905980003', '1998-05-09', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658991365, 1658991365),
(321, 'HASANAH', 'Perempuan', '3205052812071968', '3205054810550004', '1955-10-08', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658991502, 1658991502),
(322, 'IDANG MULYANA', 'Laki-laki', '3205051709080004', '3205052005800005', '1980-05-20', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658991806, 1658991806),
(323, 'HANI HANDAYANI', 'Perempuan', '3205052812071968', '3205054707870007', '1987-07-07', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 7, 1658991905, 1658991905),
(324, 'ISA MARISA', 'Perempuan', '3205052604100006', '3205055509850002', '1986-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658991916, 1658991916),
(325, 'NURJAMAN', 'Laki-laki', '3205052812071968', '3205050909890010', '1989-09-09', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658991981, 1658991981),
(326, 'AI KUSMIATI', 'Perempuan', '3205051709080004', '3205054501820003', '1982-01-05', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658991997, 1658991997),
(327, 'GILANG ARSYAWIJAYA', 'Laki-laki', '3205052604100006', '3205052612070004', '2007-12-26', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 6, 1658992034, 1658992034),
(328, 'ENTIN SUMARTI', 'Perempuan', '3205051507080005', '3205054307860005', '1959-12-30', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'SLTP/Sederajat', 8, 1658992128, 1658992128),
(329, 'WINA MULYANI', 'Perempuan', '3205052812071968', '3205056509930001', '1993-09-25', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658992150, 1658992150),
(330, 'MUHAMAD ADIHITIA AL IKHLAS', 'Laki-laki', '3205051709080004', '3205052902080003', '2008-02-29', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658992178, 1658992178),
(331, 'YULIANTI', 'Perempuan', '3205051507080005', '3205054307860004', '1986-07-03', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 8, 1658992235, 1658992235),
(332, 'FAJAR I MAULANA', 'Laki-laki', '3205052812071968', '3205052307980003', '1998-07-23', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658992248, 1658992248),
(333, 'NANIH', 'Perempuan', '3205052812071957', '3205054604650002', '1965-04-06', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658992343, 1658992343),
(334, 'NURDIN', 'Laki-laki', '3205052812071957', '3205050401860002', '1986-01-04', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'StrataI', 9, 1658992431, 1658992431),
(335, 'RIKRIK RUHIMAT', 'Laki-laki', '3205051909170021', '1508030103710001', '1971-03-01', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA BLK NO. 9, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658992451, 1658992451),
(336, 'NANA RUSTANA', 'Laki-laki', '3205051206190017', '3205013105650002', '1965-05-31', 'SUMEDANG', 'Islam', '002', '007', 'KP. TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'StrataI', 5, 1658992516, 1658992516),
(337, 'RAHMAT ILAHI', 'Laki-laki', '3205052812071957', '3205050101900007', '1990-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658992522, 1658992522),
(338, 'KOMARIAH', 'Perempuan', '3205051909170021', '1508035109700001', '1970-09-11', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA BLK NO. 9, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658992537, 1658992537),
(339, 'MIMIN RUKMINI', 'Perempuan', '3205052812071957', '3205054410920003', '1992-10-04', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658992608, 1658992608),
(340, 'RANGGA YUDHA SENA', 'Laki-laki', '3205051909170021', '1508030510950001', '1995-10-05', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA BLK NO. 9, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658992631, 1658992631),
(341, 'LAELA', 'Perempuan', '3205051206190017', '3205014606700026', '1970-06-06', 'GARUT', 'Islam', '002', '007', 'KP. TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'Diploma', 2, 1658992732, 1658992732),
(342, 'RAMDAN HIDAYAT', 'Laki-laki', '3205052812071957', '3205050101940006', '1994-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658992732, 1658992732),
(343, 'MARITSA LAUDZA LIDANI', 'Perempuan', '3205051909170021', '1508034204030001', '2003-04-02', 'JAMBI', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA BLK NO. 9, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'Tidak/Belum Sekolah', 6, 1658992808, 1658993051),
(344, 'RAHMAT ILAHI', 'Laki-laki', '3205050402140008', '3205050101900008', '1990-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658992871, 1658992871),
(345, 'RAIHAN FIRDAUS GYMNASTIAR', 'Laki-laki', '3205051206190017', '3205010604030004', '2003-04-06', 'GARUT', 'Islam', '002', '007', 'KP. TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658992884, 1658992884),
(346, 'RIZQI SEPTIAN RAMADHAN', 'Laki-laki', '3205051909170021', '1508032409070001', '2007-09-24', 'MUARA BUNGO', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA BLK NO. 9, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658992960, 1658992960),
(347, 'RINDI FAUZIANTI', 'Perempuan', '3205050402140008', '3205016702920001', '1990-02-27', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658992997, 1658992997),
(348, 'AEP MAELANI', 'Laki-laki', '3205053107120012', '3205051808910008', '1991-08-18', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658993138, 1658993138),
(349, 'ADI SUPRIADI', 'Laki-laki', '3205050205180003', '3205052607850004', '1985-07-22', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'StrataI', 16, 1658993184, 1658993184),
(350, 'KURNIA', 'Laki-laki', '3205052812071992', '3205052403740003', '1974-03-24', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658993196, 1658993196),
(351, 'INTAN PANDINI', 'Perempuan', '3205053107120012', '3205055604900003', '1990-04-16', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658993217, 1658993217),
(352, 'SETYORINI', 'Perempuan', '3205052812071992', '3205055912660001', '1966-12-19', 'JAKARTA', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658993278, 1658993278),
(353, 'M SALMAN AL FARIZI', 'Laki-laki', '3205053110712001', '3205052707120001', '2012-07-27', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658993301, 1658993301),
(354, 'MAHARDIKA UTAMI', 'Perempuan', '3205050205180003', '3205026007950009', '1995-07-20', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658993301, 1658993301),
(355, 'AZHAR ABDUL RASYID ATHARI', 'Laki-laki', '3205053107120012', '3205051912160001', '2016-12-10', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658993415, 1658993415),
(356, 'MUHAMAD ASAD ADHA FIRDAUS', 'Laki-laki', '3205052812071992', '3205052101050002', '2005-01-21', 'JAKARTA', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658993415, 1658993415),
(357, 'ADIVA ARSYILA SAVINA', 'Perempuan', '3205050205180003', '3205055509180002', '2018-09-15', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658993445, 1658993445),
(358, 'HADIJAH', 'Perempuan', '3205052812072009', '3205054706600001', '1960-06-07', 'GARUT', 'Islam', '02', '07', 'JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'StrataI', 1, 1658993567, 1658993567),
(359, 'FERI MULYANA', 'Laki-laki', '3205051311200002', '3205010501900003', '1990-01-05', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658993574, 1658993574),
(360, 'TITI KUSMIATI', 'Perempuan', '3205052408180003', '3205054101480021', '1948-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658993641, 1658993641),
(361, 'OGI NURGIANI', 'Perempuan', '3205051311200002', '3205052811910001', '1991-11-28', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658993646, 1658993646),
(362, 'RIZQI GALIH S R', 'Laki-laki', '3205052812072009', '3205051401980002', '1998-01-14', 'GARUT', 'Islam', '02', '07', 'JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658993677, 1658993677),
(363, 'ENDA', 'Laki-laki', '3205052812071966', '3205050101580020', '1958-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658993744, 1658993744),
(364, 'UNA', 'Perempuan', '3205052812071966', '3205054101610006', '1966-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658993814, 1658993814),
(365, 'AI IIS', 'Perempuan', '3205051601170010', '3205055810810003', '1981-10-18', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'SLTA/Sederajat', 2, 1658993839, 1658993839),
(366, 'ANA SUMARNA', 'Laki-laki', '3205051911120023', '3205050101780046', '1978-01-01', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 9, 1658993923, 1658993923),
(367, 'RAHAYU SEPTIANI', 'Perempuan', '3205052812071966', '3205054107050006', '2001-09-02', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658993955, 1658993955),
(368, 'ADITYA NUGRAHA', 'Laki-laki', '3205052812071966', '3205050107100058', '2005-10-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658994038, 1658994038),
(369, 'TIARA NUR FATSYA JULIANTI RAMDHANI', 'Perempuan', '3205051601170010', '3205055807040005', '2004-07-18', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658994081, 1658994081),
(370, 'YENI SRI WAHYUNI', 'Perempuan', '3205051911120023', '3205056407820005', '1982-07-24', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658994096, 1658994096),
(371, 'RISMAN GANTORO', 'Laki-laki', '3205051203200006', '3205051608730009', '1973-08-16', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658994157, 1658994157),
(372, 'AZKIA RAHMANIDA RAMDHANI', 'Perempuan', '3205051601170010', '3205054402070005', '2007-02-04', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658994231, 1658994231),
(373, 'ARGI HUSNI RAMDHAN', 'Laki-laki', '3205051911120023', '3205052008020008', '2002-08-20', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658994440, 1658994440),
(374, 'HANIATI', 'Perempuan', '3205051203200006', '3205054707770025', '1977-07-07', 'GARUT', 'Islam', '002', '007', 'JLN. TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658994468, 1658994468),
(375, 'FATIH ZAYYIDAN AKBAR', 'Laki-laki', '3205051601170010', '3205052709160001', '2016-09-27', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658994487, 1658994487),
(376, 'MUHAMAD IKSAN FAUZI', 'Laki-laki', '3205051911120023', '3205052410030009', '2003-10-24', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658994611, 1658994611),
(377, 'RISHA AMELIA YULIANTI GANTORO', 'Perempuan', '3205051203200006', '3205054407020007', '2002-07-04', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658994714, 1658994714),
(378, 'NAJRIL ILHAM FERDIANSYAH', 'Laki-laki', '3205051911120023', '3205050602080004', '2008-02-06', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658994755, 1658994755),
(379, 'KAILA PUTRI ANDINI', 'Perempuan', '3205051911120023', '3205056007100005', '2010-07-20', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658994877, 1658994877),
(380, 'SALSA NABILA', 'Perempuan', '3205051911120023', '3205054809110005', '2011-08-08', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658994998, 1658994998),
(381, 'KOSASIH', 'Laki-laki', '3205052812071959', '3205052109600001', '1960-03-13', 'PANDEGLANG', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658995002, 1658995002),
(382, 'ABRISAM MUATI GANTORO', 'Laki-laki', '3205051203200006', '3205050807150002', '2015-07-08', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658995050, 1658995050),
(383, 'AGUS RISANTO', 'Laki-laki', '3205052812071983', '3206061708630003', '1963-08-17', 'TEGAL', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658995193, 1658995193),
(384, 'ARSI HASNI MUBAROK', 'Laki-laki', '3205051911120023', '3205051110140006', '2014-10-11', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658995237, 1658995237),
(385, 'HALIMAH', 'Perempuan', '3205052812071983', '3205064410630001', '1963-10-04', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658995309, 1658995309),
(386, 'DEDE RAHMAN', 'Laki-laki', '3205052106170010', '3205050210810003', '1981-10-02', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1658995423, 1658995423),
(387, 'MEGA WIDI LESTARI', 'Perempuan', '3205052812071983', '3205064101930008', '1993-01-01', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658995442, 1658995442),
(388, 'WIDIA SOFA', 'Perempuan', '3205052106170010', '3205016207970003', '1997-07-22', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658995541, 1658995541),
(389, 'RETNO FUJI ASTUTI', 'Perempuan', '3205052812071983', '3205060304970002', '1997-04-03', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658995554, 1658995554),
(390, 'SARAH NURMAYATI YAKUB', 'Perempuan', '3205052106170010', '3205056710170003', '2017-10-27', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658995688, 1658995688),
(391, 'SRI LESTARI', 'Perempuan', '3205052812071983', '3205064504990003', '1999-04-05', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658995794, 1658995794);
INSERT INTO `penduduk` (`id`, `nama`, `jenis_kelamin`, `no_kk`, `nik`, `tanggal_lahir`, `tempat_lahir`, `agama`, `rt`, `rw`, `alamat_spesifik`, `status_perkawinan`, `status_pendidikan`, `id_pekerjaan`, `date_created`, `date_modify`) VALUES
(392, 'NOVI VALUVI SUNANDAR', 'Laki-laki', '3205051802130005', '3205052404920005', '1992-04-24', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658995840, 1658995840),
(393, 'YOGI OKTAZIO', 'Laki-laki', '3205052004180005', '1371111111090001', '1990-10-11', 'PADANG', 'Islam', '005', '001', 'KP. LEUWIDAUN KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658995846, 1658995846),
(394, 'MISTIANI NURFAILAH', 'Perempuan', '3205052812071983', '3205066302010003', '2001-02-23', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658995925, 1658995925),
(395, 'YUNI YULIANI', 'Perempuan', '3205051802130005', '3205054907930004', '1993-07-09', 'TASIKMALAYA', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658995959, 1658995959),
(396, 'SITI SUPIAH', 'Perempuan', '3205052004180005', '3205014311820001', '1982-11-03', 'GARUT', 'Islam', '005', '001', 'KP. LEUWIDAUN KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'Diploma', 3, 1658996020, 1658996020),
(397, 'MUHAMMAD RAFI AZIS', 'Laki-laki', '3205052812071983', '3205061208030003', '2003-08-12', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658996079, 1658996079),
(398, 'MUHAMMAD FARHAN SAPUTRA', 'Laki-laki', '3205051802130005', '3205051411120002', '2012-11-14', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658996091, 1658996091),
(399, 'ANNISA AULIA PUTRI', 'Perempuan', '3205052004180005', '3205014412050001', '2005-12-04', 'GARUT', 'Islam', '005', '001', 'KP. LEUWIDAUN KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658996298, 1658996298),
(400, 'NANA', 'Perempuan', '3205052812071970', '3205054101350016', '1935-01-01', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658996355, 1658996355),
(401, 'ENIH', 'Perempuan', '3205052812071970', '3205055506450005', '1945-06-15', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'TamatSD', 9, 1658996466, 1658996466),
(402, 'NAZMI CHOERUNNISA S', 'Perempuan', '3205052004180005', '3205014403070002', '2007-03-04', 'GARUT', 'Islam', '005', '001', 'KP. LEUWIDAUN KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658996489, 1658996489),
(403, 'NIA TINI NURHASANAH', 'Perempuan', '3205052812071970', '3205054407730003', '1973-07-04', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 9, 1658996645, 1658996645),
(404, 'YUMNA KHIRANI OKTAZIO', 'Perempuan', '3205052004180005', '3205057007190005', '2019-07-30', 'GARUT', 'Islam', '005', '001', 'KP. LEUWIDAUN KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658996676, 1658996676),
(405, 'MAMAN USA', 'Laki-laki', '3205052812071969', '3205050101550020', '1965-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, JL TENJOLAYA KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1658996694, 1658996694),
(406, 'RUSLAN ABDUL GANI', 'Laki-laki', '3205052812072007', '3205050101650025', '1965-01-01', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658996760, 1658996760),
(407, 'DIAH RODIAH', 'Perempuan', '3205052812071969', '3205054101650018', '1965-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658996825, 1658996825),
(408, 'EULIS', 'Perempuan', '3205052812072007', '3205054406680003', '1968-05-04', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'Diploma', 1, 1658996897, 1658996897),
(409, 'WANDA WINARA DJATNIKAPOETRA', 'Laki-laki', '3205051803100007', '3205051706790002', '1979-06-17', 'GARUT', 'Islam', '02', '07', 'JL. TENJOLAYA KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'Diploma', 5, 1658996897, 1658996897),
(410, 'SRI SELI ASTUTI', 'Perempuan', '3205052812072007', '3205056809920002', '1992-09-28', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658997019, 1658997019),
(411, 'RANDI ADITIA', 'Laki-laki', '3205052812071969', '3205050805940002', '1984-08-05', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658997022, 1658997022),
(412, 'ELIN MARLINA', 'Perempuan', '3205051803100007', '3205054707830014', '1983-07-07', 'GARUT', 'Islam', '02', '07', 'JL. TENJOLAYA  KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658997046, 1658997046),
(413, 'VERA HERAWATI', 'Perempuan', '3205052812072007', '3205054709980003', '1998-09-07', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658997174, 1658997174),
(414, 'SISKA AMELIA', 'Perempuan', '3205052812071969', '3205056704980001', '1998-04-07', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1658997217, 1658997217),
(415, 'SHAHYA NAURAH SAFINATUN NAJAH', 'Perempuan', '3205051803100007', '3205054506040006', '2004-06-05', 'GARUT', 'Islam', '02', '07', 'JL.TENJOLAYA KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658997234, 1658997234),
(416, 'AL INDAHESA RINJANI', 'Perempuan', '3205052812072007', '3205055307070002', '2007-07-13', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1658997277, 1658997277),
(417, 'SELPYANTI AGUSTIN', 'Perempuan', '3205052812071969', '3205054208040002', '2004-08-02', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658997308, 1658997308),
(418, 'SUHAILA WARIHAADATUL AISY', 'Perempuan', '3205051803100007', '3205056103070001', '2007-03-21', 'GARUT', 'Islam', '02', '07', 'JL. TENJOLAYA KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658997400, 1658997400),
(419, 'TINU JANWARIZKI DWIYAN', 'Laki-laki', '3205052812072007', '3205050201130005', '2013-01-02', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658997400, 1658997400),
(420, 'RAHMI SRI MULYANI', 'Perempuan', '3205052812071969', '3205055307080008', '2008-07-16', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658997429, 1658997429),
(421, 'ANIH NURAINI', 'Perempuan', '3205052812071993', '3205054311750001', '1975-11-03', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658997523, 1658997523),
(422, 'IWAN RIDWAN', 'Laki-laki', '3205050111150001', '3205050808700002', '1970-08-08', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658997545, 1658997545),
(423, 'ENJAM', 'Laki-laki', '3205052812071986', '3205050101470009', '1947-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES KEL. JAYAWARAS, KEC.TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1658997588, 1658997588),
(424, 'RISA ROSMAWATI', 'Perempuan', '3205052812071993', '3205054607010004', '2001-11-06', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658997640, 1658997640),
(425, 'IVA NOVILYA', 'Perempuan', '3205051011150001', '3205055811880009', '1988-11-18', 'BANDUNG', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658997647, 1658997647),
(426, 'RESTI LESTARI', 'Perempuan', '3205052812071993', '3205056702060005', '2006-02-27', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658997735, 1658997735),
(427, 'DERA MUHAMMAD RAJAB AKBAR', 'Laki-laki', '3205051011150001', '3205052705140003', '2014-05-27', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658997783, 1658997783),
(428, 'JAJANG MULYANA', 'Laki-laki', '3205052211120002', '3205050406760004', '1976-06-04', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'Diploma', 5, 1658997869, 1658997869),
(429, 'ADONIA NAJMA ORLIN', 'Perempuan', '3205051011150001', '3205056404180001', '2018-04-24', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658997892, 1658997892),
(430, 'EULIS RATNA JUNIARTI', 'Perempuan', '3205052211120002', '3205054306760004', '1976-06-03', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'StrataI', 3, 1658998019, 1658998019),
(431, 'RAFA MIFTAKHURRIZQI MULYANA', 'Laki-laki', '3205052211120002', '3205051609100006', '2010-09-16', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1658998187, 1658998187),
(432, 'HAYATI', 'Perempuan', '3205052812071963', '3205054101600017', '1960-01-01', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1658998282, 1658998282),
(433, 'MUHAMMAD SEMI', 'Laki-laki', '3205052812071963', '3205051209920003', '1992-09-12', 'GARUT', 'Islam', '002', '007', 'JL TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 7, 1658998399, 1658998399),
(434, 'DADANG HIDAYAT', 'Laki-laki', '3205052812071975', '3205050404740002', '1974-04-04', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1658998466, 1658998466),
(435, 'TITA ROSITA', 'Perempuan', '3205052812071975', '3205054511790003', '1979-11-05', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1658998565, 1658998565),
(436, 'NONI ROHAENI', 'Perempuan', '3205052812071986', '3205054205540001', '1954-05-02', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658998672, 1658998672),
(437, 'SANDY PRATAMA PUTRA', 'Laki-laki', '3205052812071975', '3205051010020003', '2002-10-10', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658998682, 1658998682),
(438, 'ANANG', 'Laki-laki', '3205052812071986', '3205050101760007', '1976-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1658998743, 1658998743),
(439, 'UNDANG', 'Laki-laki', '3205052812071958', '3205050101580018', '1958-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 9, 1658998874, 1658998874),
(440, 'ACIH', 'Perempuan', '3205052812071958', '3205054306610002', '1961-06-02', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1658998956, 1658998956),
(441, 'SINDY DWI OKTAVIANI PUTRI', 'Perempuan', '3205052812071975', '3205056010050002', '2005-10-20', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1658999028, 1658999028),
(442, 'MAMAN SUPARMAN', 'Laki-laki', '3205052812071958', '3205051308880001', '1989-08-13', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1658999139, 1658999139),
(443, 'NANI SURYANI', 'Perempuan', '3205050510170027', '3205036105650003', '1965-05-21', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'SLTP/Sederajat', 2, 1658999150, 1658999150),
(444, 'HATIKAH', 'Perempuan', '3205051303120050', '3205054211550001', '1955-11-02', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'SLTA/Sederajat', 2, 1658999269, 1658999269),
(445, 'RIDHO MUHAMMAD RIZKY', 'Laki-laki', '3205050510170027', '3205032301980007', '2005-01-23', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1658999269, 1658999269),
(446, 'ARI ADITYA', 'Laki-laki', '3205050306130014', '3205041007820005', '1992-07-10', 'GARUT', 'Islam', '02', '07', 'JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1658999415, 1658999415),
(447, 'MINARNI', 'Perempuan', '3205051209180007', '3205054402820004', '1982-02-04', 'GARUT', 'Islam', '002', '007', 'JL. TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Hidup', 'SLTA/Sederajat', 2, 1658999453, 1658999453),
(448, 'TINA AGUSTINA', 'Perempuan', '3205050306130014', '3205054105820009', '1992-05-01', 'GARUT', 'Islam', '02', '07', 'JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1658999532, 1658999532),
(449, 'ISOM SUHERMAN', 'Laki-laki', '3205052812072008', '3205050101500049', '1950-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1658999602, 1658999602),
(450, 'EDEH RODIAH', 'Perempuan', '3205052812072008', '3205054101600018', '1960-01-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1658999684, 1658999684),
(451, 'ENTIB SATIBI', 'Laki-laki', '3205052812071951', '3205051004670005', '1967-04-10', 'GARUT', 'Islam', '02', '07', 'KP. PEDES KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'StrataII', 3, 1658999716, 1658999716),
(452, 'EMAN SULAEMAN', 'Laki-laki', '3205052812072008', '3205051007930008', '1993-07-10', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1658999759, 1658999759),
(453, 'SOPIAH', 'Perempuan', '3205052812071951', '3205056209930003', '1974-01-15', 'GARUT', 'Islam', '002', '007', 'KP. PEDES KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 15, 1658999798, 1658999798),
(454, 'ITOH MASITOH', 'Laki-laki', '3205052812071999', '3205056009620001', '1962-09-20', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Hidup', 'TamatSD', 2, 1658999889, 1658999889),
(455, 'EPUL SAEPUL MU\'MIN', 'Laki-laki', '3205052812071999', '3205051909760004', '1987-09-18', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1658999982, 1658999982),
(456, 'AI', 'Laki-laki', '3205051709080005', '3205050712500002', '1950-12-07', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659000084, 1659000084),
(457, 'HANIPAH ROBIATULADAWIYAH', 'Perempuan', '3205052812071951', '3205056209930004', '0000-00-00', 'GARUT', 'Islam', '002', '007', 'KP.PEDES , KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1659000164, 1659000164),
(458, 'DEDAH', 'Perempuan', '3205051709080005', '3205054805540002', '1954-05-08', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659000210, 1659000210),
(459, 'FAHMI ISMAIL MARZUQI', 'Laki-laki', '3205052812071951', '3205050801990002', '1999-01-08', 'GARUT', 'Islam', '002', '007', 'KP.PEDES , KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659000275, 1659000275),
(460, 'RAHMAT SAEPULLOH', 'Laki-laki', '3205051709080005', '3205051405930006', '1993-05-14', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659000287, 1659000287),
(461, 'ENTIS SUTISNA', 'Laki-laki', '3205052812071951', '3205120607730002', '1973-07-06', 'GARUT', 'Islam', '002', '007', 'KP.PEDES  KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 7, 1659000390, 1659000390),
(462, 'MEME B DJEDJE', 'Perempuan', '3205051601120079', '3205051010390002', '1939-10-10', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 8, 1659000412, 1659000412),
(463, 'MULYONO PRAYUDIE3', 'Laki-laki', '3205050810080008', '3205051808780006', '1976-08-11', 'GARUT', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659000506, 1659000506),
(464, 'HJ. YUYU YULIANI', 'Perempuan', '3205051201090012', '3205054507470005', '1947-07-05', 'GARUT', 'Islam', '002', '007', 'JL. TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'Diploma', 12, 1659000511, 1659000511),
(465, 'ELA NURLAELA', 'Perempuan', '3205050810080008', '3205055403850005', '1985-03-14', 'GARUT', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'StrataI', 1, 1659000599, 1659000599),
(466, 'FIRMAN NUGRAHA DJATNIKA PUTRA', 'Laki-laki', '3205051201090012', '3205052903830004', '1983-03-29', 'GARUT', 'Islam', '002', '007', 'JL. RENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'StrataI', 5, 1659000608, 1659000608),
(467, 'NOVIA LUCIANA', 'Perempuan', '3205051201090012', '3205055511910004', '1991-11-15', 'GARUT', 'Islam', '002', '007', 'JL.TENJOLAYA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 6, 1659000685, 1659000685),
(468, 'NAZZA ZAHWA ISLAMI PRAYUDIE', 'Perempuan', '3205050810080008', '3205057011070001', '2007-09-30', 'GARUT', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1659000783, 1659000783),
(469, 'INO SUWARNO', 'Laki-laki', '3205052812071953', '3205051709620002', '1962-09-17', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1659000837, 1659000837),
(470, 'MALIQ RIZIQ ISLAMI PRAYUDIE', 'Laki-laki', '3205050810080008', '3205051210130006', '2013-10-12', 'GARIT', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659000882, 1659000882),
(471, 'IIS YANTI', 'Perempuan', '3205052812071953', '3205054311750002', '1975-11-03', 'BANDUNG', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659000911, 1659000911),
(472, 'ALI KOSTAMAN', 'Laki-laki', '3205052812071974', '3205051712700002', '1970-12-17', 'GARUT', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1659000987, 1659000987),
(473, 'ALVIAN TRIANA SUBAGJA', 'Laki-laki', '3205052812071953', '3205050111070003', '2007-11-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659000996, 1659000996),
(474, 'FADLI HARDIMAN', 'Laki-laki', '3205052812071953', '3205050704130003', '2013-04-07', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659001072, 1659001072),
(475, 'SUPRIYANI', 'Perempuan', '3205052812071974', '3205056408780002', '1978-06-24', 'WONOGIRI', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659001075, 1659001075),
(476, 'DADANG', 'Laki-laki', '3205051709080007', '3205050706770006', '1977-06-07', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659001146, 1659001146),
(477, 'RANI INDAH WULANSARI', 'Perempuan', '3205052812071974', '3205056706980002', '1998-04-27', 'WONOGIRI', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659001178, 1659001178),
(478, 'IPIT SUHARTINI', 'Perempuan', '3205051709080007', '3205056307780003', '1978-07-23', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659001216, 1659001216),
(479, 'AZMI RENALJI', 'Laki-laki', '3205052812071974', '3205050484050004', '2005-04-04', 'GARUT', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659001302, 1659001302),
(480, 'SIVA SITI NURHASANAH', 'Perempuan', '3205051709080007', '3205055307020004', '2002-07-13', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659001329, 1659001329),
(481, 'RENANDA NURSYAFITRI', 'Perempuan', '3205051709080007', '3205055408080001', '2008-08-14', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659001407, 1659001407),
(482, 'RUSDI', 'Laki-laki', '3507062011090824', '3507060101720034', '1972-01-01', 'MALANG', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659001457, 1659001457),
(483, 'HENDRA SAPUTRA WINATA', 'Laki-laki', '3205052612180007', '3205340404870003', '1987-04-04', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659001561, 1659001561),
(484, 'YANI CAHYANI', 'Perempuan', '3507062011090824', '3507064306750003', '1975-06-03', 'GARUT', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659001585, 1659001585),
(485, 'TATIK SUPRIATIN', 'Perempuan', '3205052612180007', '3205054810820003', '1982-10-18', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659001650, 1659001650),
(486, 'TEGUH MUHAMMAD RIZKI', 'Laki-laki', '3507062011090824', '3507061311050002', '2005-11-13', 'BANDUNG', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659001696, 1659001696),
(487, 'SHAKIRA AULI AMELIA', 'Perempuan', '3205052612180007', '3205344107100001', '2010-07-01', 'GARUT', 'Islam', '002', '007', 'KP. PEDES, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659001758, 1659001758),
(488, 'MUHAMMAD WILDAN', 'Laki-laki', '3507062011090824', '3507062901080003', '2008-01-29', 'MALANG', 'Islam', '002', '007', 'KP.PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659001898, 1659001898),
(489, 'UMI SUMIATI', 'Perempuan', '3205050711180004', '3205056212740002', '1974-12-22', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'SLTP/Sederajat', 2, 1659013537, 1659013537),
(490, 'FAHMI MUHAMAD RISWAN', 'Laki-laki', '3205050711180004', '3205051711020003', '2002-11-17', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659013666, 1659013666),
(491, 'FANISA SETIA UTAMI', 'Perempuan', '3205050711180004', '3205056008060003', '2006-08-20', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659013837, 1659013837),
(492, 'FAALIHATUSTALIS SALSABILA', 'Perempuan', '3205050711180004', '3205056903110005', '2011-03-29', 'GARUT', 'Islam', '02', '07', 'KP PEDES JL. TENJOLAYA, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659013936, 1659013936),
(493, 'OMAH', 'Perempuan', '3205052812071960', '3205054308660005', '1966-08-03', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'SLTP/Sederajat', 2, 1659014124, 1659014124),
(494, 'ERIS RISWANTO', 'Laki-laki', '3205051408180028', '3205052811780004', '1978-11-28', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659014257, 1659014257),
(495, 'IKEU NURHAYATI', 'Perempuan', '3205052812071960', '3205055603970003', '1997-03-16', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659014356, 1659014356),
(496, 'ELIS SITI AISYAH', 'Perempuan', '3205051408180028', '3205076002890001', '1989-02-28', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659014403, 1659014403),
(497, 'MUHAMAD CAHYA SAPUTRA', 'Laki-laki', '3205052812071960', '3205052104990004', '1999-04-21', 'GARUT', 'Islam', '02', '07', 'KP PEDES, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659014436, 1659014436),
(498, 'CHAIRUNNISA SALSABILA PUTRI', 'Perempuan', '3205051408180028', '3205056201190002', '2019-01-22', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659014563, 1659014563),
(499, 'ADIN SAHRUDIN', 'Laki-laki', '3205052912070320', '3205051607680003', '1968-07-16', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 9, 1659014708, 1659014708),
(500, 'HARI MURIANTO', 'Laki-laki', '3205052912070548', '3205050510760001', '1976-10-05', 'GARUT', 'Islam', '003', '008', 'JL.GORDAH', 'Kawin', 'SLTA/Sederajat', 9, 1659014720, 1659014720),
(501, 'WANDI SUWANDI', 'Laki-laki', '3205052912070536', '3205052407820001', '1982-07-24', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659014733, 1659014733),
(502, 'HERYANI', 'Perempuan', '3205052912070320', '3205055406690001', '1969-06-14', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659014803, 1659014803),
(503, 'ENENG RESTUTI', 'Perempuan', '3205052912070536', '3205054504870004', '1987-04-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659014811, 1659014811),
(504, 'RAYA FITRAH SUWANDI', 'Laki-laki', '3205052912070536', '3205052811030003', '2003-11-28', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659014912, 1659014912),
(505, 'HILMAN MAULANA', 'Laki-laki', '3205052912070320', '3205050307980006', '1998-07-03', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659014912, 1659014912),
(506, 'RISA AFIANTI', 'Perempuan', '3205052912070548', '3205056303800005', '1980-03-29', 'GARUT', 'Islam', '003', '008', 'JL.GORDAH', 'Kawin', 'StrataII', 3, 1659014937, 1659014937),
(507, 'AHMAD FERDIANSYAH', 'Laki-laki', '3205052912070320', '3205053103040001', '2004-03-31', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659015005, 1659015005),
(508, 'ALMEERA SABHIRA NAZEEFAH', 'Perempuan', '3205052912070536', '3205056308160002', '2016-08-23', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659015025, 1659015025),
(509, 'LIANA AVRILLIANI', 'Perempuan', '3205052912070320', '3205054504090002', '2009-04-05', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659015098, 1659015098),
(510, 'LIANA AVRILLIANI', 'Perempuan', '3205052912070320', '3205054504090001', '2009-04-05', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659015174, 1659015174),
(511, 'BILQIS AZZAHRA', 'Perempuan', '3205052912070548', '3205055407050003', '2005-07-14', 'GARUT', 'Islam', '003', '008', 'JL.GORDAH', 'Belum Kawin', 'TamatSD', 6, 1659015188, 1659015188),
(512, 'DENI NUGRAHA', 'Laki-laki', '3205052912070565', '3205020901790003', '1979-01-09', 'GARUT', 'Islam', '03', '08', 'JL. GORDAH KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'StrataI', 3, 1659015189, 1659015189),
(513, 'YAYAT SUPRIYATNA', 'Laki-laki', '3205050204110045', '3205051206710005', '1971-06-12', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 3, 1659015276, 1659015276),
(514, 'NURUL TRI APRIYANI', 'Perempuan', '3205052912070565', '3205025904810008', '1981-04-19', 'GARUT', 'Islam', '03', '08', 'JL. GORDAH KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'StrataI', 16, 1659015345, 1659015345),
(515, 'TITA HERAWATI', 'Perempuan', '3205050204110045', '3205056601750001', '1975-01-26', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 3, 1659015358, 1659015358),
(516, 'PANDYA PRADA NUGRAHA', 'Laki-laki', '3205052912070565', '3205050810070001', '2007-10-08', 'GARUT', 'Islam', '03', '08', 'JL. GORDAH KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659015446, 1659015446),
(517, 'ALDI TIRTA HIDAYAT', 'Laki-laki', '3205050204110045', '3205052005000006', '2000-05-20', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659015458, 1659015458),
(518, 'SYAKIRA ILMI MUHALA', 'Perempuan', '3205052912070548', '3205056409110001', '2011-09-24', 'GARUT', 'Islam', '003', '008', 'JL.GORDAH', 'Belum Kawin', 'BelumSekolah', 6, 1659015482, 1659015482),
(519, 'AQILA MAHYA NUGRAHA', 'Perempuan', '3205052912070566', '3205026010130002', '2013-10-20', 'GARUT', 'Islam', '03', '08', 'JL. GORDAH KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659015537, 1659015537),
(520, 'AZWARA HANDIKA PUTRA', 'Laki-laki', '3205050204110045', '3205052212060005', '2006-12-22', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659015546, 1659015546),
(521, 'SUHENDAR', 'Laki-laki', '3205052912070542', '3205050211690001', '1969-11-02', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659015639, 1659015639),
(522, 'OJO SUTARJO', 'Laki-laki', '3205052912070538', '3205052101580001', '1958-01-21', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 12, 1659015665, 1659015665),
(523, 'PIPIH SOPIAH', 'Perempuan', '3205052912070566', '3205054301540001', '1954-01-03', 'GARUT', 'Islam', '003', '008', 'KP.ASTANA HILIR', 'Cerai Mati', 'StrataIII', 3, 1659015733, 1659015733),
(524, 'AI SRI', 'Perempuan', '3205052912070542', '3205056409760001', '1976-09-24', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659015739, 1659015739),
(525, 'DEDE ROSTINI', 'Perempuan', '3205052912070538', '3205055608620002', '1962-06-15', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659015769, 1659015769),
(526, 'YESI KULSUM APRIANI', 'Perempuan', '3205052912070542', '3205055504010008', '2001-04-15', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659015842, 1659015842),
(527, 'RAFIK FADILAH HUSEIN', 'Laki-laki', '3205052912070542', '3205052304050002', '2005-04-23', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659015934, 1659015934),
(528, 'MOCH HAIQAL DIAZKI', 'Laki-laki', '3205052912070538', '3205051512010001', '2001-12-15', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659015949, 1659015949),
(529, 'FAUZAN MUHAMAD BA\'ADILLAH', 'Laki-laki', '3205052912070542', '3205050308070005', '2007-08-03', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659016035, 1659016035),
(530, 'WIWIN', 'Perempuan', '3205052912070537', '3205055711470001', '1947-11-17', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1659016057, 1659016057),
(531, 'ENOK SETIAWATI', 'Perempuan', '3205052912070577', '3205054705530002', '1953-05-07', 'GARUT', 'Islam', '003', '008', 'KP.ASTANA HILIR', 'Cerai Mati', 'TamatSD', 2, 1659016096, 1659016096),
(532, 'ASEP', 'Laki-laki', '3205050203120011', '3205051302880005', '1986-02-13', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659016137, 1659016137),
(533, 'UDED', 'Laki-laki', '3205052912070537', '3205052806690001', '1969-06-28', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1659016162, 1659016162),
(534, 'CUCU', 'Perempuan', '3205050203120011', '3205055006620009', '1982-08-10', 'GARUT', 'Islam', '003', '004', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659016228, 1659016228),
(535, 'IWAN SURYANA', 'Laki-laki', '3205052912070537', '3205052012830003', '1983-12-20', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659016247, 1659016247),
(536, 'SIZWA ANGGRAENI', 'Perempuan', '3205050203120011', '3205064809080009', '2006-09-06', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659016322, 1659016322),
(537, 'ANWARI YUSUF MAULUD', 'Laki-laki', '3205052912070577', '3205052501800001', '1980-01-25', 'GARUT', 'Islam', '003', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'SLTA/Sederajat', 5, 1659016387, 1659016387),
(538, 'ALI NURDIN', 'Laki-laki', '3205052912070518', '3205052010740001', '1974-10-20', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659016440, 1659016440),
(539, 'ENTAH', 'Laki-laki', '3205052912070574', '3205051203630005', '1963-03-12', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659016503, 1659016503),
(540, 'ALIT KARWATI', 'Perempuan', '3205052912070518', '3205056205750001', '1975-05-22', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659016541, 1659016541),
(541, 'MULYANA', 'Perempuan', '3205052912070574', '3205056806680002', '1968-06-28', 'JAKARTA', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659016604, 1659016604),
(542, 'SEPSA SYAEPUL HAYAT', 'Laki-laki', '3205052912070518', '3205050709990004', '1999-09-07', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659016668, 1659016668),
(543, 'ASEP SYAIFULLAH', 'Laki-laki', '3205052912070574', '3205050211880002', '1988-11-02', 'JAKARTA', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659016699, 1659016699),
(544, 'DIAZ AZUMARDY NURDIASYAH', 'Laki-laki', '3205052912070518', '3205050912050003', '2008-12-09', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659016774, 1659016774),
(545, 'MUHAMAD RIDWAN SETIAWAN', 'Laki-laki', '3205052912070574', '3205050611960007', '1996-11-07', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659016812, 1659016812),
(546, 'SUCI ROHMADIANI SALWIAH', 'Perempuan', '3205052912070577', '3205056806820001', '1982-06-28', 'GARUT', 'Islam', '003', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'StrataI', 1, 1659016837, 1659016837),
(547, 'ALUYUDYA TRYANDITA', 'Perempuan', '3205052912070518', '3205056303120004', '2012-03-23', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659016869, 1659016869),
(548, 'RIZKU MULYAFATURRAHMAN', 'Laki-laki', '3205052912070574', '3205051712050004', '2005-12-17', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659016908, 1659016908),
(549, 'DENI AFENDI', 'Laki-laki', '3205052712110020', '3205050606810006', '1981-06-06', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659016989, 1659016989),
(550, 'RENI MULYANI', 'Perempuan', '3205052712110020', '3205056306920005', '1992-06-23', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659017109, 1659017109),
(551, 'HENDRA SAPUTRA', 'Laki-laki', '3205050203120019', '3205050605840006', '1984-05-06', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659017162, 1659017162),
(552, 'WILDAN TAUFIK AL BUCHKORI', 'Laki-laki', '3205052712110020', '3205050205130001', '2013-05-02', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659017193, 1659017193),
(553, 'ENTAR TARSIAH', 'Perempuan', '3205052812070276', '3205055201660002', '1966-01-12', 'GARUT', 'Islam', '003', '008', 'KP.ASTANA HILIR', 'Kawin', 'SLTP/Sederajat', 2, 1659017208, 1659017208),
(554, 'NELLY SUSANTO', 'Perempuan', '3205050203120019', '3205055302890011', '1989-02-13', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659017259, 1659017259),
(555, 'RAFASYA NUR HAFIZ', 'Laki-laki', '3205052712110020', '3205051712180002', '2016-12-17', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659017283, 1659017283),
(556, 'FAIZUL ANWAR', 'Laki-laki', '3205050203120019', '3205050903110003', '1989-02-13', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659017366, 1659017366),
(557, 'ASEP SUPARMAN', 'Laki-laki', '3205052912070526', '3205052812580001', '1958-12-28', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659017449, 1659017449),
(558, 'FAJRI KHOIRULLAH', 'Laki-laki', '3205050203120019', '3205052003180004', '2018-03-20', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659017452, 1659017452),
(559, 'SUPIAH', 'Perempuan', '3205052912070526', '3205054101680038', '1968-01-01', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659017522, 1659017522),
(560, 'MUHAMMAD ZAHRAN', 'Laki-laki', '3205052812070276', '3205050310090003', '2009-10-23', 'GARUT', 'Islam', '003', '008', 'KP.ASTANA HILIR', 'Belum Kawin', 'BelumSekolah', 7, 1659017552, 1659017552),
(561, 'ERPAN', 'Laki-laki', '3205051105090009', '3205052602800001', '1980-03-26', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659017577, 1659017577),
(562, 'MAMAN SUPRIATNA', 'Laki-laki', '3205052912070526', '3205052005810004', '1981-05-20', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 5, 1659017688, 1659017688),
(563, 'ARI SUPARDI', 'Laki-laki', '3205052912070526', '3205051402960002', '1996-02-14', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659017838, 1659017838),
(564, 'WULAN NUR LELA', 'Perempuan', '3205051105090009', '3205055611880007', '1980-08-26', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659017968, 1659017968),
(565, 'ANGGA PERMANA', 'Laki-laki', '3205050611140013', '3205052407890010', '1989-07-24', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 11, 1659017985, 1659017985),
(566, 'SINTA SOPIANTI', 'Perempuan', '3205050611140013', '3205056004870005', '1987-04-20', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659018091, 1659018091),
(567, 'SYALWA KHOIRUN NISHA', 'Perempuan', '3205051105090009', '3205055709100005', '2010-09-17', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659018102, 1659018102),
(568, 'RUDIANSAH GANDA SASMITA', 'Laki-laki', '3205050611140013', '3205052606140002', '2014-06-26', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659018216, 1659018216),
(569, 'MIKHAYLA AZALEA ALMIRA', 'Perempuan', '3205051105090009', '3205055910170001', '2017-10-19', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659018253, 1659018253),
(570, 'JAMALUDIN', 'Laki-laki', '3205052912070556', '3205050707450001', '1945-07-07', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 11, 1659018362, 1659018362),
(571, 'ADE ACHMAD', 'Laki-laki', '3205052912070529', '3205051607710005', '1971-07-16', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659018383, 1659018383),
(572, 'TOTO MASITOH', 'Perempuan', '3205052912070556', '3205054506630005', '1963-06-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659018452, 1659018452),
(573, 'TITA MAHARANI', 'Perempuan', '3205052912070529', '3205054103740005', '1974-02-01', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659018487, 1659018487),
(574, 'MAMAN SURYANA', 'Laki-laki', '3205052912070556', '3205051906820002', '1982-06-19', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 11, 1659018553, 1659018553),
(575, 'ALDI APRIONALDI', 'Laki-laki', '3205052912070529', '3205050104000007', '2000-04-01', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659018571, 1659018571),
(576, 'ANANG', 'Laki-laki', '3205052912070512', '3205051202690002', '1969-02-12', 'GARUT', 'Islam', '003', '009', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659018698, 1659018698),
(577, 'SONI PERMANA', 'Laki-laki', '3205052912070556', '3205052805860001', '1986-05-28', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1659018804, 1659018804),
(578, 'ANI', 'Perempuan', '3205052912070512', '3205055712710001', '1971-12-17', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659018817, 1659018817),
(579, 'SAMSUL RIJAL', 'Laki-laki', '3205052912070556', '3205051201900001', '1990-01-12', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1659018891, 1659018891),
(580, 'LUFI', 'Laki-laki', '3205052912070512', '3205051002910002', '1991-02-10', 'GARUT', 'Islam', '003', '002', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659018904, 1659018904),
(581, 'ASEP SAPARI', 'Laki-laki', '3205052912070556', '3205052912070556', '1994-07-10', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 7, 1659018966, 1659018966),
(582, 'LEFI', 'Laki-laki', '3205052912070512', '3205050505930002', '1994-05-02', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659019107, 1659019107),
(583, 'YOSEP', 'Laki-laki', '3205052912070512', '3205052508950002', '1995-08-25', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659019279, 1659019279),
(584, 'ANJANI', 'Perempuan', '3205052912070512', '3205055303980008', '1998-03-13', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659019386, 1659019386),
(585, 'RIPAN', 'Laki-laki', '3205052912070512', '3205051606010002', '2001-06-16', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659019490, 1659019490),
(586, 'AENI', 'Perempuan', '3205052912070512', '3205055807040002', '2004-07-18', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659019580, 1659019580);
INSERT INTO `penduduk` (`id`, `nama`, `jenis_kelamin`, `no_kk`, `nik`, `tanggal_lahir`, `tempat_lahir`, `agama`, `rt`, `rw`, `alamat_spesifik`, `status_perkawinan`, `status_pendidikan`, `id_pekerjaan`, `date_created`, `date_modify`) VALUES
(587, 'ALYA', 'Perempuan', '3205052912070512', '3205055509060005', '2006-08-16', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659019681, 1659019681),
(588, 'ADRIAN', 'Laki-laki', '3205052912070512', '3205051002090002', '2009-02-10', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659019771, 1659019771),
(589, 'ADE ARIPIN', 'Laki-laki', '3205050204110011', '3205050503890003', '1969-03-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1659019867, 1659019867),
(590, 'ACHMAD', 'Laki-laki', '3205052912070522', '3205051605380001', '1938-05-16', 'GARUT', 'Islam', '003', '004', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'SLTP/Sederajat', 12, 1659019922, 1659019922),
(591, 'SITI NURHASANAH', 'Perempuan', '3205050204110011', '3205055306810003', '1981-06-13', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659019977, 1659019977),
(592, 'UJANG HERMAWAN', 'Laki-laki', '3205052912070522', '3205052802700001', '1970-02-28', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1659020030, 1659020030),
(593, 'ARLYA NURANI AJRINA', 'Perempuan', '3205050204110011', '3205057001010005', '2001-01-30', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659020136, 1659020136),
(594, 'IJANG', 'Laki-laki', '3205052912070550', '3205050101610015', '1961-01-01', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659020326, 1659020326),
(595, 'ENDO', 'Laki-laki', '3205052912070575', '3205052709630002', '1963-09-27', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659020382, 1659020382),
(596, 'AAN', 'Perempuan', '3205052912070550', '3205054101830019', '1963-01-01', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659020412, 1659020412),
(597, 'POPON', 'Perempuan', '3205052912070575', '3205055507650004', '1965-07-15', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659020486, 1659020486),
(598, 'ESAP GUMILAR', 'Laki-laki', '3205052912070550', '3205050101900032', '1990-01-01', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659020491, 1659020491),
(599, 'ELI BULAN SUCI', 'Perempuan', '3205052912070550', '3205056304920003', '1992-12-29', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659020688, 1659020688),
(600, 'USEP GUNTARA', 'Laki-laki', '3205052912070550', '3205052912940004', '1994-12-29', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659020823, 1659020940),
(601, 'IRA SUSANA', 'Perempuan', '3205052912070550', '3205056804970007', '1997-04-28', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659020915, 1659020915),
(602, 'ANJAS GUNAWAN', 'Laki-laki', '3205052912070550', '3205052609990001', '1999-09-26', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659021035, 1659021035),
(603, 'ISEP RAMDANI', 'Laki-laki', '3205052912070550', '3205052910050004', '2005-10-29', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659021119, 1659021119),
(604, 'AMAR SURYAMAN', 'Laki-laki', '3205052912070519', '3205050309620001', '1962-09-03', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659105962, 1659105962),
(605, 'AISYAH', 'Perempuan', '3205052912070519', '3205055009640003', '1964-09-10', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659106050, 1659106050),
(606, 'ROBBI PRIANTO', 'Laki-laki', '3205052912070519', '3205053110970004', '1997-10-31', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659106157, 1659106157),
(607, 'DANDI MARDIANSYAH', 'Laki-laki', '3205052912070519', '3205052006990008', '1999-06-20', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659106238, 1659106238),
(608, 'GLANG RAMDAN ADZHARI', 'Laki-laki', '3205052912070519', '3205050403010006', '2001-03-04', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659106347, 1659106347),
(609, 'MASTUR', 'Laki-laki', '3205051008090025', '3205051004720003', '1972-04-10', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 5, 1659106443, 1659106443),
(610, 'INSAN MAULANI', 'Perempuan', '3205051008090025', '3205056105090001', '2009-05-21', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659106552, 1659106552),
(611, 'ARA SUTISNA', 'Laki-laki', '3205052112110029', '3205050707800013', '1980-07-07', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659106673, 1659106673),
(612, 'NURHAYATI', 'Perempuan', '3205052112110029', '3205055508780009', '1978-08-15', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659106765, 1659106765),
(613, 'AHMAD FAUZI', 'Laki-laki', '3205052112110029', '3205052910020005', '2002-10-29', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659106855, 1659106855),
(614, 'NURUL DEWI FITRIYANI', 'Perempuan', '3205052112110029', '3205055509070006', '2007-09-15', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659107010, 1659107010),
(615, 'RIFKI GUMELAR', 'Laki-laki', '3205052112110029', '3205052706130004', '2013-06-27', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659107077, 1659107077),
(616, 'AMIR', 'Laki-laki', '3205051308140004', '3205050505680002', '1968-05-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1659107189, 1659107189),
(617, 'DEDE SUMIATI', 'Perempuan', '3205051308140004', '3205054812670004', '1967-12-08', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659107298, 1659107298),
(618, 'AHMAD RUHENDI', 'Laki-laki', '3205053004120000', '3205051804710004', '1978-10-29', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659107393, 1659107393),
(619, 'ENTIS SUTISNA', 'Laki-laki', '3205050704140011', '3205011107630001', '1983-07-11', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659107416, 1659107416),
(620, 'YENI ANGGRAENI', 'Perempuan', '3205053004120004', '3205024906800006', '1980-06-09', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659107501, 1659107501),
(621, 'NANI HASANAH', 'Perempuan', '3205050704120011', '3205014804680005', '1968-04-08', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659107504, 1659107504),
(622, 'RIZKI TAUFIK ISMAIL', 'Laki-laki', '3205050704120011', '3205011505950005', '1995-05-15', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659107572, 1659107572),
(623, 'LUSI FARMAWATI', 'Perempuan', '3205053004120004', '3205054606990008', '1999-06-06', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659107595, 1659107595),
(624, 'ADE RAHMAWATI', 'Perempuan', '3205053004120004', '3205054701060006', '2003-01-07', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659107717, 1659107717),
(625, 'SHOFIA SITI LATIFA', 'Perempuan', '3205053004120004', '3205055205130003', '2013-05-12', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659107844, 1659107844),
(626, 'YUS YUNUS', 'Laki-laki', '3205050209150014', '3205210402920001', '1991-08-18', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659107961, 1659107961),
(627, 'LISNA SRI WULAN', 'Perempuan', '3205050209150014', '3205054809940001', '1994-09-08', 'GARUT', 'Islam', '003', '004', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659108068, 1659108068),
(628, 'GIAN ADITYA ARDHANI', 'Laki-laki', '3205050209150004', '3205050305140002', '2014-05-01', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659108177, 1659108177),
(629, 'DODI SETIADI', 'Laki-laki', '3205052912070572', '3205052006790004', '1979-06-20', 'GARUT', 'Islam', '003', '008', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659108254, 1659108254),
(630, 'AGUS SUPRIATNA', 'Laki-laki', '3205052912070559', '3205051210770003', '1977-10-12', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659108287, 1659108287),
(631, 'SUSI ROSITA', 'Perempuan', '3205052912070572', '3205055608830007', '1983-08-16', 'GARUT', 'Islam', '003', '008', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659108413, 1659108413),
(632, 'YUYUN YUNINGSIH', 'Laki-laki', '3205052912070559', '3205056805820001', '1982-05-28', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659108419, 1659108419),
(633, 'MEY LINDA ROSITA DEWI', 'Perempuan', '3205052912070572', '3205054606040003', '2004-06-06', 'GARUT', 'Islam', '003', '008', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659108626, 1659108626),
(634, 'RISTA RESTIANI', 'Perempuan', '3205052912070559', '3205054202000007', '1982-05-28', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659108652, 1659108652),
(635, 'MEGA HANDAYANI PUTRI', 'Perempuan', '3205052912070559', '3205056002030011', '2003-02-20', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659108745, 1659108745),
(636, 'ANNISA HIDAYANTI', 'Perempuan', '3205052912070572', '3205056405100001', '2010-05-24', 'GARUT', 'Islam', '003', '008', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659108767, 1659108767),
(637, 'RADINKA SALSA DILA', 'Perempuan', '3205052912070559', '3205055305140002', '2014-05-13', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659109174, 1659109174),
(638, 'RONA MUJANI SYUKUR', 'Laki-laki', '3205052210140013', '3205052911920006', '1992-11-29', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659109332, 1659109332),
(639, 'NATHAN AGUNG PRATAMA', 'Laki-laki', '3205052210140013', '3205050310140002', '2014-10-03', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659109471, 1659109471),
(640, 'ADE HARIS', 'Laki-laki', '3205052912070516', '3205050612630001', '1963-06-12', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'StrataI', 5, 1659109722, 1659109722),
(641, 'ROMANI', 'Perempuan', '3205052912070516', '3205055209690002', '1969-09-12', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659109798, 1659109798),
(642, 'ASEP SUMARNA', 'Laki-laki', '3205052912070558', '3205050205630004', '1963-05-02', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 9, 1659109853, 1659109853),
(643, 'LENA', 'Perempuan', '3205052912070516', '3205055702900003', '1990-02-17', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659109871, 1659109871),
(644, 'IPON SUMARNI', 'Perempuan', '3205052912070558', '3205055008570003', '1967-08-10', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659109984, 1659109984),
(645, 'ASA SUDARSA', 'Laki-laki', '3205051411110008', '3205050101450053', '1945-07-05', 'GARUT', 'Islam', '03', '08', 'JL. GORDAH, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659110028, 1659110028),
(646, 'MARCIELIO', 'Laki-laki', '3205052912070558', '3205051303070004', '2007-03-13', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659110105, 1659110105),
(647, 'KOKOM KOMARIAH', 'Perempuan', '3205051411110008', '3205054101710037', '1971-01-01', 'GARUT', 'Islam', '03', '0', 'JL. GORDAH, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659110110, 1659110110),
(648, 'ANO SUWARNO', 'Laki-laki', '3205052912070525', '3205050503520004', '1952-03-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 12, 1659110282, 1659110282),
(649, 'DEDI MAHRIYA', 'Laki-laki', '3205051702090053', '3205051706660002', '1965-06-17', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'BelumSekolah', 5, 1659110305, 1659110305),
(650, 'IIM IMBARYANI', 'Perempuan', '3205052912070525', '3205055709550005', '1955-08-17', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659110366, 1659110366),
(651, 'NURHAYATI', 'Perempuan', '3205051702090053', '3205055303740005', '1974-03-03', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659110909, 1659110909),
(652, 'CICI WIDIAN SARI', 'Perempuan', '3205051702090053', '3205057108930005', '1993-08-31', 'GARUT', 'Islam', '003', '008', 'JL.GORDAH  HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659111030, 1659111030),
(653, 'FACHRIZAL GUSTIAN ANWAR', 'Laki-laki', '3205051702090053', '3205051708070009', '2007-06-17', 'GARUT', 'Islam', '003', '008', 'JL.GORDA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659111145, 1659111145),
(654, 'AGUS SUHENDAR', 'Laki-laki', '3205053108130003', '3205202908890002', '1989-08-29', 'GARUT', 'Islam', '003', '008', 'KP. GORDAH HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659111310, 1659111310),
(655, 'MIA KRISNA KUMARI', 'Perempuan', '3205053108130003', '3205084208910001', '1991-08-02', 'BANDUNG', 'Islam', '003', '008', 'KP. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659111446, 1659111446),
(656, 'AQILA KANZA AZZAHRA', 'Perempuan', '3105053108130003', '3205055807130001', '2013-07-18', 'GARUT', 'Islam', '003', '008', 'KP. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659111562, 1659111562),
(657, 'LUTFI FIRMANA', 'Laki-laki', '3205051401190012', '3205172612910002', '1991-12-26', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'StrataI', 5, 1659111708, 1659111708),
(658, 'NURHASANAH', 'Perempuan', '3205051401190012', '3205056603950001', '1995-03-26', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'Diploma', 9, 1659111823, 1659111823),
(659, 'SULAEMAN', 'Laki-laki', '3205052912070547', '3205052107550002', '1955-07-21', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 12, 1659111946, 1659111946),
(660, 'ETI ROHAETI', 'Perempuan', '3205052912070547', '3205055608610003', '1961-03-16', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659112047, 1659112047),
(661, 'NURHASANAH', 'Perempuan', '3205052912070547', '3205056603950002', '1995-03-26', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659112195, 1659112195),
(662, 'AGHINA YUKA ALIFA', 'Perempuan', '3205052912070547', '3205054901030006', '2003-01-09', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659112284, 1659112284),
(663, 'AGUS SANI', 'Laki-laki', '3205052607180006', '3205050107000068', '1979-08-04', 'GARUT', 'Islam', '001', '005', 'KP. SENI,  KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1659112390, 1659112390),
(664, 'DESI SILVI LESTARI', 'Perempuan', '3205052912070525', '3205054101850018', '1985-01-01', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'StrataI', 1, 1659112431, 1659112431),
(665, 'KANDI', 'Laki-laki', '3205052812070028', '3205050708690001', '1969-08-07', 'GARUT', 'Islam', '003', '008', 'JL. GORDAH, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659112510, 1659112510),
(666, 'CANDRA IBRAHIM', 'Laki-laki', '3205052010140009', '3205051908700003', '1970-08-19', 'GARUT', 'Kristen', '01', '03', 'JL. CIMANUK KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659112617, 1659112617),
(667, 'IYAM MARIYAM', 'Laki-laki', '3205052812070028', '3205055004730002', '1973-04-10', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659112645, 1659112645),
(668, 'NANI SANTINI', 'Perempuan', '3205052010140009', '3205026607940004', '1994-07-25', 'GARUT', 'Islam', '01', '03', 'JL. CIMANUK KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659112712, 1659112712),
(669, 'RUBI RAHMAN FAUJI', 'Laki-laki', '3205052812070028', '3205051911970001', '1997-11-19', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659112723, 1659112723),
(670, 'SAMANTHA ANGEL LINA', 'Perempuan', '3205052010140009', '3205054302960005', '1996-02-03', 'SITU BONDO', 'Kristen', '01', '03', 'JL. CIMANUK KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1659112812, 1659112812),
(671, 'RISA APTILLIA', 'Perempuan', '3205052812070028', '3205056704000004', '2000-04-27', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659112832, 1659112832),
(672, 'ANGGA PRAWIRA IBRAHIM', 'Laki-laki', '3205052010140009', '3205050610000007', '2000-10-08', 'SITU BONDO', 'Kristen', '01', '03', 'JL. CIMANUK KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659112902, 1659112902),
(673, 'HANI NUR ANISA', 'Perempuan', '3205052812070028', '3205054202040002', '2004-02-02', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659112921, 1659112921),
(674, 'ANDREW SATRIA IBRAHIM', 'Laki-laki', '3205052010140009', '3205051410140002', '2014-10-14', 'GARUT', 'Islam', '01', '03', 'JL. CIMANUK KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659112991, 1659112991),
(675, 'HASBI MUHAMAD RAFFI', 'Laki-laki', '3205052812070028', '3205051308090003', '2009-08-13', 'GARUT', 'Islam', '001', '003', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659113005, 1659113005),
(676, 'QAILA APRIANI PUTRI', 'Perempuan', '3205052812070028', '3205056904140002', '2014-04-29', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659113103, 1659113103),
(677, 'SYAMSUL HADI', 'Laki-laki', '3205051900418001', '3205050101800009', '1980-01-01', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1659113148, 1659113148),
(678, 'WAHYU ADAM', 'Laki-laki', '3205050907120015', '3205052102890003', '1989-02-21', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659113196, 1659113196),
(679, 'ERNA ROSDYANA', 'Perempuan', '3205051904180001', '3205055406780003', '1978-06-14', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659113236, 1659113236),
(680, 'ARNI ROSMAWATI', 'Perempuan', '3205050907120015', '3205057012900007', '1990-12-30', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659113284, 1659113284),
(681, 'ANGGI ZASELLANUR ASIFA HIDAYATI', 'Perempuan', '3205051904180001', '3205056470100004', '2000-01-07', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659113355, 1659113355),
(682, 'MUHAMMAD AZKA ALFARIEL', 'Laki-laki', '3205050907120015', '3205051305120002', '2012-05-13', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659113359, 1659113359),
(683, 'HENDRI ANDRIAN', 'Laki-laki', '3205052812070054', '3205050101760046', '1975-07-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659113443, 1659113443),
(684, 'M ALI KHUMAINI AL ZHUNDY', 'Laki-laki', '3205051904180001', '3205052412060003', '2006-12-24', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659113456, 1659113456),
(685, 'NENG AI MULYATI', 'Perempuan', '3205052812070054', '3205054905740002', '1975-06-09', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659113602, 1659113602),
(686, 'ARY MUTHAHARI', 'Laki-laki', '3205052812070054', '3205052111940004', '1994-10-21', 'GARUT', 'Islam', '001', '005', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659113704, 1659113704),
(687, 'TETA MULTINA SARI', 'Perempuan', '3205050605140007', '3205056812890010', '1989-12-28', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'TamatSD', 2, 1659113724, 1659113724),
(688, 'RAFI RAJWA RAMDANI', 'Laki-laki', '3205052812070054', '3205050310050004', '2005-10-03', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659113794, 1659113794),
(689, 'SEKAR AYU KARUNIASIH', 'Perempuan', '3205050605140007', '3205056311110003', '2011-11-23', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659113807, 1659113807),
(690, 'YUDIANTO', 'Laki-laki', '3205050412090008', '3205052003660008', '1968-03-20', 'JAKARTA', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659113886, 1659113886),
(691, 'NIA KOMARIAH', 'Perempuan', '3205050412090008', '3205055706820002', '1982-06-17', 'GARUT', 'Islam', '001', '008', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659113966, 1659113966),
(692, 'CECENG ITANG', 'Laki-laki', '3205052612072738', '3205050508710001', '1971-06-05', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1659113993, 1659113993),
(693, 'ELVA JULIANI', 'Perempuan', '3205050412090008', '3205054107020110', '2002-07-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659114093, 1659114093),
(694, 'YANTI NURYANTI', 'Perempuan', '3205052612072738', '3205054110800002', '1980-10-09', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1659114106, 1659114106),
(695, 'NOVANIA YUDIANTO', 'Laki-laki', '3205050412090008', '3205051509100002', '2010-09-18', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659114190, 1659114190),
(696, 'ELSA YULIANTI', 'Perempuan', '3205052612072738', '3205055408970001', '1997-06-14', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 5, 1659114242, 1659114242),
(697, 'M. NAPSIN', 'Laki-laki', '3205052712070044', '3205052803400001', '1940-03-26', 'TANGERANG', 'Islam', '001', '004', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'Tamat SD/Sederajat', 12, 1659114309, 1659114454),
(698, 'MOHAMAD IKBAL', 'Laki-laki', '3205052612072738', '3205050307060001', '2006-07-03', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659114332, 1659114332),
(699, 'SAMSUL KOMAR', 'Laki-laki', '3205052712070044', '3205053012620001', '1962-12-30', 'GARUT', 'Islam', '001', '004', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 8, 1659114399, 1659114399),
(700, 'IKMAL ABDUL NAJIF', 'Laki-laki', '3205052612072738', '3205052104100002', '2010-04-21', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659114429, 1659114429),
(701, 'NAZWA SALSABILA', 'Perempuan', '3205052612072738', '3205054805120002', '2013-06-03', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659114503, 1659114503),
(702, 'ISAK IRIAWAN', 'Laki-laki', '3205052712070044', '3205051305550001', '1966-06-13', 'GARUT', 'Islam', '001', '004', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 16, 1659114563, 1659114563),
(703, 'OBAY SUPRIATNA', 'Laki-laki', '3205052712070044', '3205052412700001', '1970-12-24', 'GARUT', 'Islam', '001', '004', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 8, 1659114653, 1659114653),
(704, 'HABSAH', 'Laki-laki', '3205052712070044', '3205055506320001', '1932-06-15', 'TANGERANG', 'Islam', '001', '004', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 7, 1659114740, 1659114740),
(705, 'UJANG SARIPUDIN', 'Laki-laki', '3205050104140009', '3205050505700014', '1970-05-05', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659114777, 1659114777),
(706, 'UUS RUSMANA', 'Laki-laki', '3205051702090013', '3205050106750001', '1975-06-01', 'GARUT', 'Islam', '001', '005', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659114868, 1659114868),
(707, 'SITI QODARIAH', 'Perempuan', '3205050104140009', '3205056704880006', '1987-05-27', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659114925, 1659114925),
(708, 'LINDA KARINA', 'Perempuan', '3205051702090013', '3205056707840008', '1984-07-27', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659114973, 1659114973),
(709, 'JULIA SUNDARI', 'Perempuan', '3205050104140009', '3205055807090005', '2009-07-18', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659115037, 1659115037),
(710, 'RIFKI MUHAMAD HURANI', 'Laki-laki', '3205051702090013', '3205052702030004', '2003-02-27', 'GARUT', 'Islam', '001', '005', 'KP. SENI , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659115088, 1659115088),
(711, 'NAUVAL HABIB QOLBI', 'Laki-laki', '3205051702090013', '3205050711130004', '2013-11-07', 'GARUT', 'Islam', '001', '005', 'KP. SENI, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659115173, 1659115173),
(712, 'SALSA WIDIAWATI', 'Perempuan', '3205050104140009', '3205054810130004', '2013-10-08', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659115211, 1659115211),
(713, 'BUDI HARDI', 'Laki-laki', '3205051302120006', '3205050907800004', '1980-07-09', 'MALANG', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659115267, 1659115267),
(714, 'DESTI NUR APNI RAMDANI', 'Perempuan', '3205050104140009', '3205054606170003', '2017-06-06', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659115293, 1659115293),
(715, 'ANI WINARNI', 'Perempuan', '3205051302120066', '3205054611770008', '1977-11-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659115360, 1659115360),
(716, 'ASEP SUHAYA', 'Laki-laki', '3205052612072753', '3205050702750002', '1975-02-07', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659115391, 1659115391),
(717, 'NATHAN ATTACHIR FACRY', 'Laki-laki', '3205051302120006', '3273031604140001', '2014-04-15', 'BANDUNG', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659115459, 1659115459),
(718, 'MUSLIKHATIN', 'Perempuan', '3205052612072753', '3205054103740001', '1974-03-01', 'BOJONEGORO', 'Islam', '02', '02', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659115506, 1659115506),
(719, 'AJANG SOMANTRI', 'Laki-laki', '3205052601120014', '3205050506820011', '1982-06-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659115591, 1659115591),
(720, 'ACHMAD RIZAL YOVIANSYAH', 'Laki-laki', '3205052612072753', '3205052208000002', '2000-08-22', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659115732, 1659115732),
(721, 'TETI KUSTINI', 'Perempuan', '3205052601120001', '3206055208860004', '1986-06-12', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 9, 1659115793, 1659115793),
(722, 'MOCH VICKY ARDIANSAH', 'Laki-laki', '3205052612072753', '3205050311060006', '2008-11-03', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 6, 1659115831, 1659115831),
(723, 'MOCHAMMAD ALWI NURDIN', 'Laki-laki', '3205052601120014', '3205050305120002', '2012-01-03', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659115926, 1659115926),
(724, 'IYAH NURLIYAH', 'Perempuan', '3205052906150006', '3205054110500002', '1950-10-01', 'GARUT', 'Islam', '03', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1659116019, 1659116019),
(725, 'SITI ALIFA', 'Perempuan', '3205052601120014', '3205054612140003', '2014-12-08', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659116083, 1659116083),
(726, 'PARMAN YUSUP', 'Laki-laki', '3205052104150015', '3205201808810012', '1981-08-15', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659116186, 1659116186),
(727, 'TATI SUMIATI', 'Perempuan', '3205052104150015', '3205207112780002', '1976-12-31', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659116326, 1659116326),
(728, 'H OHAN ANWAR M', 'Laki-laki', '3205052912070541', '3205050903600002', '1960-03-09', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1659116397, 1659116397),
(729, 'RUDHA SITI ZAHRA', 'Perempuan', '3205052104150015', '3205206502140000', '2014-02-25', 'GAUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659116453, 1659116453),
(730, 'YOYOH ROKAYAH PURADINATA', 'Perempuan', '3205052912070541', '3205054502580004', '1958-02-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659116506, 1659116506),
(731, 'RIANA', 'Laki-laki', '3205051302120067', '3205051602840002', '1984-02-15', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1659116642, 1659116642),
(732, 'ODAH KOMALA', 'Perempuan', '3205052612072851', '3205054807400001', '1940-07-08', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1659116660, 1659116660),
(733, 'IPAH SARIPAH', 'Perempuan', '3205052612072735', '3205055012670002', '1967-12-10', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Hidup', 'TamatSD', 2, 1659116752, 1659116752),
(734, 'YANI APRIANI', 'Perempuan', '3205051302120067', '3205055804890005', '1984-02-15', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1659116761, 1659116761),
(735, 'RIO SEPTIAN', 'Laki-laki', '3205051302120067', '3205050909110004', '2011-09-09', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659116851, 1659116851),
(736, 'NADIA NUR RAHAYU', 'Perempuan', '3205051302120067', '3205056005130004', '2013-05-20', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659116946, 1659116946),
(737, 'AWAN GUNAWAN', 'Laki-laki', '3205052812070059', '3205053004600001', '1950-04-30', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1659117098, 1659117098),
(738, 'EULIS ROHAENI', 'Perempuan', '3205052812070059', '3205054407660003', '1966-07-04', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659117200, 1659117200),
(739, 'FIRYAL AULIA AL GHONNY', 'Perempuan', '3205052812070059', '3205054402000002', '2000-02-04', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659117393, 1659117393),
(740, 'SOBARMAN', 'Laki-laki', '3206054909870001', '3205050909670007', '1985-05-14', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1659117512, 1659117512),
(741, 'REFI NURHAYATI', 'Perempuan', '3205050204110016', '3205054909870001', '1985-09-10', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659117628, 1659117628),
(742, 'YAYAH ROHAYATI', 'Perempuan', '3205051103150012', '3205054305630005', '1963-05-03', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'SLTP/Sederajat', 2, 1659117705, 1659117705),
(743, 'DITA HANDAYANI', 'Perempuan', '3205051103150012', '3205056611940005', '1994-11-26', 'GARUT', 'Islam', '02', '03', 'KP SENI KIDUL, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659117783, 1659117783),
(744, 'HAFIZH SYAUQI ALFARISI', 'Laki-laki', '3205050204110016', '3205051710100002', '2010-10-17', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659117785, 1659117785),
(745, 'HAMZAH SIDDIQ', 'Laki-laki', '3205050204110016', '3205050502140004', '2014-02-05', 'GARUT', 'Islam', '001', '005', 'KP. SENI BARU, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659117881, 1659117881),
(746, 'ASEP SAEFULOH', 'Laki-laki', '3205051908080020', '3205050505820008', '1982-05-05', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 5, 1659117981, 1659117981),
(747, 'IDA FARIDA', 'Perempuan', '3205051908080020', '3205056808810005', '1981-08-28', 'GARUT', 'Islam', '03', '03', 'KP SENI, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659118060, 1659118060),
(748, 'LILI RUSTANDI', 'Laki-laki', '3205052612072730', '3205050911550002', '1965-11-09', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659118127, 1659118127),
(749, 'ATIH', 'Perempuan', '3205052612072630', '3205054507570005', '1987-07-05', 'GARUT', 'Islam', '002', '003', 'KP. SENI SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659118267, 1659118267),
(750, 'SUPIAH', 'Perempuan', '3205052612072730', '3205055906800007', '1980-06-19', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 5, 1659118402, 1659118402),
(751, 'RESI FEBRIYANI', 'Perempuan', '3205052612072730', '3205054502000007', '2000-02-05', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659118535, 1659118535),
(752, 'NURWAHYUDIN', 'Laki-laki', '3205051403120002', '3205051107850006', '1985-07-11', 'BANDUNG', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 9, 1659118675, 1659118675),
(753, 'DEDE JULIANA', 'Laki-laki', '3205052609170013', '3205051207740007', '1975-07-05', 'GARUT', 'Islam', '003', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1659118682, 1659118682),
(754, 'IIS', 'Perempuan', '3205052609170013', '3205074112010001', '2001-12-01', 'GARUT', 'Islam', '003', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'SLTP/Sederajat', 2, 1659118848, 1659118848),
(755, 'ADE SUHENDAR', 'Laki-laki', '3205052612072838', '3205052202660001', '1966-10-22', 'GARUT', 'Islam', '003', '003', 'KP. SENI JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1659119034, 1659119034),
(756, 'AAN ANISAH', 'Perempuan', '3205052612072838', '3205054706620001', '1962-01-01', 'GARUT', 'Islam', '003', '003', 'KP. SENI JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659119122, 1659119122),
(757, 'DAFFA MUHARAM AHSAN', 'Laki-laki', '3205051403120002', '3205051511120001', '2012-11-15', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659119175, 1659119175),
(758, 'SUHENDI', 'Laki-laki', '3205052612072838', '3205052808930002', '1993-06-28', 'GARUT', 'Islam', '003', '003', 'KP. SENI JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659119228, 1659119228),
(759, 'IMI', 'Perempuan', '3205052912070554', '3205054101450022', '1945-01-01', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'TamatSD', 8, 1659119276, 1659119276),
(760, 'ULFAH', 'Perempuan', '3205052612072838', '3205054204000002', '2000-04-09', 'GARUT', 'Islam', '003', '003', 'KP. SENI JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659119317, 1659119317),
(761, 'RENI', 'Perempuan', '3205052912070554', '3205054412770003', '1977-12-04', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1659119368, 1659119368),
(762, 'FANI CAHYANI', 'Perempuan', '3205052612072838', '3205015508020005', '2002-08-15', 'GARUT', 'Islam', '003', '003', 'KP. SENI JAYAWARAS, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659119404, 1659119404),
(763, 'MUHAMAD SODIKIN', 'Laki-laki', '3205050606120002', '3205051504900006', '1990-05-15', 'BANDUNG', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 8, 1659119475, 1659119572),
(764, 'DENI ROMANSAH', 'Laki-laki', '3205052612072718', '3205050504760009', '1976-04-05', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659119511, 1659119511),
(765, 'WIDA YULIA', 'Perempuan', '3205050606120002', '3205055610920001', '1992-10-16', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659119553, 1659119553),
(766, 'CALVI ELPANI', 'Perempuan', '3205052612072718', '3205055101010008', '2001-01-12', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659119627, 1659119627),
(767, 'HERDIS RAJU IMANSYAH', 'Laki-laki', '3205050606120002', '3205050506120007', '2012-06-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659119655, 1659119655),
(768, 'TOTO', 'Laki-laki', '3205052612072718', '3205054107410046', '1941-07-01', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Cerai Mati', 'TamatSD', 2, 1659119718, 1659119718),
(769, 'AMAN', 'Laki-laki', '3205052912070521', '3205052107440001', '1944-07-21', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659119757, 1659119757),
(770, 'ADE RAHMAT', 'Laki-laki', '3205052612072718', '3205053008780002', '1978-08-30', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 8, 1659119827, 1659119827),
(771, 'ITOH MASITOH', 'Perempuan', '3205052912070521', '3205055104620002', '1965-08-04', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659119858, 1659119858),
(772, 'SENDY NAYOAN', 'Laki-laki', '3205052912070521', '3205050608980005', '1998-08-06', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659119939, 1659119939),
(773, 'WIDI LESTARI', 'Perempuan', '3205052612072718', '3205056912850003', '1981-12-25', 'GARUT', 'Islam', '002', '003', 'KP. SENI SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1659119974, 1659119974),
(774, 'DADANG', 'Laki-laki', '3205052912070570', '3205052709610002', '1961-09-27', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'BelumSekolah', 8, 1659120031, 1659120031),
(775, 'BETI ROSMIATI', 'Perempuan', '3205052612072718', '3205056912850004', '1985-12-29', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659120104, 1659120104),
(776, 'YATI', 'Perempuan', '3205052912070570', '3205056709650002', '1965-09-27', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'BelumSekolah', 2, 1659120114, 1659120114),
(777, 'SAMSUDIN', 'Laki-laki', '3205052912070570', '3205050201950004', '1995-01-02', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 9, 1659120200, 1659120200),
(778, 'TOPIK MOHAMAD RIDWAN', 'Laki-laki', '3205052612072718', '3205050611910002', '1991-11-06', 'GARUT', 'Islam', '002', '003', 'KP. SENI KIDUL, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 7, 1659120207, 1659120207),
(779, 'PIKI SUPRIANTO', 'Laki-laki', '3205052912070570', '3205050412960002', '1996-12-04', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 7, 1659120282, 1659120282);
INSERT INTO `penduduk` (`id`, `nama`, `jenis_kelamin`, `no_kk`, `nik`, `tanggal_lahir`, `tempat_lahir`, `agama`, `rt`, `rw`, `alamat_spesifik`, `status_perkawinan`, `status_pendidikan`, `id_pekerjaan`, `date_created`, `date_modify`) VALUES
(780, 'BAGJA', 'Laki-laki', '3205052912070570', '3205051201990003', '1999-01-12', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTP/Sederajat', 6, 1659120370, 1659120370),
(781, 'TIARA MAELANI', 'Perempuan', '3205052912070570', '3205055405050002', '2004-05-14', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659120449, 1659120449),
(782, 'AGA SUHARA', 'Laki-laki', '3205052912070510', '3205051811390002', '1939-11-18', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 8, 1659120572, 1659120572),
(783, 'KOMARIAH', 'Perempuan', '3205052912070510', '3205056409560001', '1956-09-24', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659120666, 1659120666),
(784, 'RISRIS RISWANDI', 'Laki-laki', '3205052912070510', '3205051407930002', '1993-07-14', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 6, 1659120753, 1659120753),
(785, 'ASEP TATANG SONTANI', 'Laki-laki', '3205052912070524', '3205051805670001', '1967-08-18', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1659120866, 1659120866),
(786, 'MIMIN', 'Perempuan', '3205052912070524', '3205055505830002', '1983-05-15', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659120944, 1659120944),
(787, 'ANDIKA PUTRA PRATAMA', 'Laki-laki', '3205052912070524', '3205053001080003', '2008-01-30', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659121034, 1659121034),
(788, 'NAZWA KHOIRUN NISA', 'Perempuan', '3205052912070524', '3205056602100008', '2010-02-25', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659121114, 1659121114),
(789, 'AZZRIEL FARAZ FAHREZA', 'Laki-laki', '3205052912070524', '3205050504180003', '2018-04-05', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659121190, 1659121190),
(790, 'JANA SUJANA', 'Laki-laki', '3205052912070528', '3205050402560001', '1956-02-04', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 9, 1659121285, 1659121285),
(791, 'YATI SURYATI', 'Perempuan', '3205052912070528', '3205056412620001', '1962-12-24', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659121386, 1659121386),
(792, 'AJI SUDRAJAT', 'Laki-laki', '3205052912070528', '3205052005970001', '1997-05-20', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659121476, 1659121580),
(793, 'BIMBI DEVIRA AULIA TSANI', 'Perempuan', '3205052912070528', '3205025001040008', '2004-01-10', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659121560, 1659121560),
(794, 'U SUNARYA', 'Laki-laki', '3205052912070543', '3205050606680006', '1968-06-06', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659121588, 1659121588),
(795, 'IIT', 'Perempuan', '3205052307190001', '3205054608590001', '1959-08-06', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659121698, 1659121698),
(796, 'AI SUMIATI', 'Perempuan', '3205052912070543', '3205055506770004', '1977-06-15', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR , KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 2, 1659121703, 1659121703),
(797, 'YOGI PRATAMA PUTRA', 'Laki-laki', '3205052912070543', '3205052509970001', '1997-09-25', 'GARUT', 'Islam', '003', '028', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659121852, 1659121852),
(798, 'YOGI PRATAMA PUTRA', 'Laki-laki', '3205052912070543', '3205052509970002', '1997-09-25', 'GARUT', 'Islam', '003', '028', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659121877, 1659121877),
(799, 'EMPAT', 'Perempuan', '3205052912070523', '3205057003560001', '1956-03-30', 'GARUT', 'Islam', '03', '08', 'KP ASTANA HILIR, KEL JAYAWARAS, KEC TAROGONG KIDUL, KAB GARUT, PROV JAWA BARAT', 'Cerai Mati', 'SLTP/Sederajat', 2, 1659121923, 1659121923),
(800, 'FANY FEBRIANA PUTRI', 'Perempuan', '3205052912070543', '3205054502050002', '2005-02-05', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659122010, 1659122010),
(801, 'TRYA OKTAFANI PUTRI', 'Perempuan', '3205052912070543', '3205055010100003', '2010-10-10', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659122128, 1659122128),
(802, 'AMAN', 'Laki-laki', '3205052912070521', '3205052107440002', '1944-07-21', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 8, 1659265461, 1659265461),
(803, 'ITOH MASITOH', 'Perempuan', '3205052912070521', '3205055104620006', '1965-08-04', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659266083, 1659266083),
(804, 'SENDY NAYOAN', 'Perempuan', '3205052912070521', '3205050608980006', '1998-08-03', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659266402, 1659266402),
(805, 'YUS YUNUS', 'Laki-laki', '3205050209150014', '3206210402920001', '1991-08-18', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659266597, 1659266597),
(806, 'SHAZMA JAHANARA HAFIZHAH', 'Perempuan', '3205050209150014', '3205057105180002', '2018-05-31', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659266972, 1659266972),
(807, 'YUSUP SURYANTO', 'Laki-laki', '3205052912070546', '3205053112270000', '1970-12-31', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 9, 1659267172, 1659267172),
(808, 'SRI MULYANI', 'Perempuan', '3205052912070546', '3205055001760003', '1976-01-10', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659267272, 1659267272),
(809, 'TANTI SULASTRI', 'Perempuan', '3205052912207054', '3205055004020003', '2001-10-10', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659267380, 1659267380),
(810, 'DIDAN SUPRIATNA', 'Laki-laki', '3205052912070546', '3205050804060002', '2006-04-08', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659267489, 1659267489),
(811, 'RINDA MULYA LESTARI', 'Perempuan', '3205052912070546', '3205057011080002', '2008-11-30', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659267602, 1659267602),
(812, 'WILDAN PURNAMA', 'Laki-laki', '3105050811170004', '3205020405900001', '1988-06-28', '1988', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTA/Sederajat', 5, 1659267714, 1659267714),
(813, 'INTAN LESTARI', 'Perempuan', '3205050811170004', '3205054701950010', '1995-01-07', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'SLTP/Sederajat', 2, 1659267822, 1659267822),
(814, 'DANI ALAMSYAH', 'Laki-laki', '3205050811170004', '3205053011150003', '2015-11-30', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'BelumSekolah', 7, 1659267945, 1659267945),
(815, 'DATA', 'Laki-laki', '3205052912072224', '3205050701410001', '1941-01-01', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 9, 1659268092, 1659268092),
(816, 'SUPARTINI', 'Perempuan', '3205052912072224', '3205054505510003', '1951-01-01', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 2, 1659268210, 1659268210),
(817, 'SANTI SUSANTI', 'Perempuan', '3205052912072224', '3205054101960025', '1997-12-15', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'SLTA/Sederajat', 7, 1659268319, 1659268319),
(818, 'SITI ZULPAH NURPADILAH', 'Perempuan', '3205052912072224', '3205056001040003', '2004-01-20', 'GARUT', 'Islam', '003', '008', 'KP. ASTANA HILIR, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Belum Kawin', 'TamatSD', 6, 1659268476, 1659268476),
(819, 'ASA SUDARSA', 'Laki-laki', '3205051411110008', '3205059191450033', '1945-07-03', 'GARUT', 'Islam', '003', '008', 'JL. GORDA, KEL. JAYAWARAS, KEC. TAROGONG KIDUL, KAB. GARUT PROV. JAWA BARAT', 'Kawin', 'TamatSD', 5, 1659268602, 1659268602),
(821, 'Dewa Wahyu', 'Laki-laki', '2341123441231234', '8765432187654321', '2003-12-06', 'Ukraina', 'Konghucu', '006', '007', 'jl. jalan', 'Cerai Mati', 'BelumSekolah', 2, 1669107681, 1669107681);

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan`
--

CREATE TABLE `penghargaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penghargaan`
--

INSERT INTO `penghargaan` (`id`, `nama`, `gambar`, `info`, `date_created`, `date_modify`) VALUES
(7, 'PENGHARGAAN OPEN DEFECATION FREE (ODF)', 'piagam2.png', '<p>Atas Deklarasinya Sebagai Kelurahan Open Defecation Free (ODF) telah berhasil membawa masyarakatnya memiliki tingkat kesadaran dan perhatian yang tinggi dalam upaya mewujudkan Stop Buang Air Besar Sembarangan.</p>', 1659081698, 1659081698),
(8, 'PENGHARGAAN LOMBA DESA DAN KELURAHAN', 'piagam3.png', '<p>Penghargaan Juara 2 Lomba Desa dan Kelurahan Tingkat Kabupaten Garut.</p>', 1659082333, 1659082333),
(9, 'NOTA KESEPAHAMAN SMK MEMBANGUN DESA', 'piagam4.png', '<p>Kelurahan Jayawaras dan Sekolah Menengah Kejuruan Negeri 1 Garut Sepakat mengadakan kerjasama dalam pelaksaan Program SMK MEMBANGUN DESA dalam rangka peningkatan Keterampilan Sumber Daya Manusia serta Perekonomian Masyarakat.</p>', 1659082962, 1659082962),
(10, 'PENGHARGAAN UIN RADEN FATAH PALEMBANG', 'piagam5.png', '<p>Atas dukungan dan kerjasamanya dalam mensukseskan Program Kerja Mahasiswa KKN Kelompok 7 UIN Raden Fatah Palembang Tahun 2022 Kelurahan Jayawaras.</p>', 1659417681, 1659417681),
(6, 'SERTIFIKAT KEMENKOMINFO', 'piagam1.png', '<p>Apresiasi dan Penghargaan atas dukungan dan kerjasama dalam pelaksanaan Program Bantuan Pemerintah Penyediaan Layanan Akses Internet Fixed Broadband Tahun 2021.</p>', 1659080922, 1659080922),
(5, 'Piagram Penghargaan', 'piagam.png', '<p class=\"card-text\" roboto=\"\" slab\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"line-height: 1.75; color: rgb(33, 37, 41);\"><span style=\"font-weight: bolder;\">PIAGAM PENGHARGAAN</span></p><p roboto=\"\" slab\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"line-height: 1.75; color: rgb(33, 37, 41);\">Ucapan Terimakasih Dari Universitas Garut (UNIGA)</p><p roboto=\"\" slab\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"line-height: 1.75; color: rgb(33, 37, 41);\">Dalam pelaksanaan New Kuliah Kerja Nyata (KKN) Tematik Covid-19 Tahun 2020</p><p roboto=\"\" slab\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"line-height: 1.75; color: rgb(33, 37, 41);\"><span style=\"font-weight: bolder;\">Dengan Tema</span></p><p roboto=\"\" slab\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"line-height: 1.75; color: rgb(33, 37, 41);\">Melalui New KKN Tematik Covid-19 Tahun 2020 Kita Tingkatan Kepedulian, Kesadaran Dan Ketahanan Masyarakat Menghadapi Covid-19 Dalam Upaya Mewujudkan Masyarakat Sehat, Maju Dan Sejahtera</p>', 1651116004, 1656574074);

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_desa`
--

CREATE TABLE `perangkat_desa` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perangkat_desa`
--

INSERT INTO `perangkat_desa` (`id`, `jabatan`) VALUES
(1, 'Lurah'),
(4, 'Kasi Pemerintahan'),
(3, 'Sekretaris '),
(5, 'Kasi Kemasyarakatan'),
(6, 'Kasi Ekbang'),
(7, 'Staf Pelaksana');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `visi` text DEFAULT NULL,
  `misi` text DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `sejarah` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `visi`, `misi`, `tujuan`, `sejarah`, `gambar`, `video`, `date_modify`) VALUES
(1, '<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size: 12pt; line-height: 115%; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Terwujudnya kelurahan Jayawaras yang nyaman, beriman, sejahtera, sumber\r\ndaya manusia yang berkualitas serta memberikan pelayanan publik yang optimal.</span><o:p></o:p></p>', '<p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 22.5pt; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:\"open=\"\" sans\";=\"\" color:black\"=\"\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">     </span></span><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" color:black\"=\"\">Meningkatkan kemampuan administrasi dalam pelayanan masyarakat<o:p></o:p></span></p><p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 22.5pt; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding-top: 0.5rem !important;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">     </span></span><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Membangun lingkungan dan\r\nmasyarakat kelurahan Jayawaras  yang beriman, nyaman dan sejahtera.<o:p></o:p></span></p><p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n</p><p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 22.5pt; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding-top: 0.5rem !important;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">    </span></span><!--[endif]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Memberdayakan potensi\r\nmasyarakat dengan pendekatan kearifan lokal diwilayah kelurahan Jayawaras.<o:p></o:p></span></p>', '<p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 0.25in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:\"open=\"\" sans\";=\"\" color:black\"=\"\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">     </span></span><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" color:black\"=\"\">Untuk membedakan gambaran potensi yang dimiliki kelurahan Jayawaras baik dari sumber daya alam maupun sumber daya manusia.<o:p></o:p></span></p><p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 0.25in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding-top: 0.5rem !important;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">    </span></span><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Memberikan gambaran yang\r\njelas mengenai hasil pelaksanaan kegiatan pemerintah, pembangunan,\r\nkemasyarakatan dan pelayanan publik yang telah di laksanakan di kelurahan Jayawaras.<o:p></o:p></span></p><p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 0.25in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding-top: 0.5rem !important;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">    </span></span><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Sebagai bahan evaluasi\r\nbagi ti evaluasi perkembangan kelurahan Jayawaras.<o:p></o:p></span></p><p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt 0.25in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding-top: 0.5rem !important;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      </span></span><!--[endif]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Dengan ada nya website\r\nini semoga bisa membantu masyarakat/penduduk Jayawaras menjadi desa digital<o:p></o:p></span></p>', '<p class=\"open-sans-font\" style=\"margin: 0in 0in 0.0001pt; text-indent: 0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" color:black\"=\"\">Jayawaras berasal dari pemekaran Desa Sukalilah pada tahun 1980,\r\ndan pernah dipimpin oleh 6 Kepala Desa dari tahun 1980 s.d 2004 :<o:p></o:p></span></p><p style=\"margin: 0in 0in 0.0001pt; text-indent: 0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Pada\r\nTahun 2004 Desa Sukalilah di ubah menjadi Kelurahan Jayawaras dan dipimpin oleh\r\nLurah, antara lain :<o:p></o:p></span></p><p style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      </span></span><!--[endif]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Drs. Teten Sundara<o:p></o:p></span></p><p style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      </span></span><!--[endif]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Asep Sopandi<o:p></o:p></span></p><p style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      </span></span><!--[endif]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Syarif Husain Hidayat<o:p></o:p></span></p><p style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      </span></span><!--[endif]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Mamat Ganjar, SE<o:p></o:p></span></p><p style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      </span></span><!--[endif]--><span style=\"font-family:\" open=\"\" sans\",sans-serif;color:black\"=\"\">Tatang</span></p><p style=\"margin: 0in 0in 0.0001pt 0.5in; text-indent: -0.25in; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"open=\"\" sans\";color:black\"=\"\" style=\"text-indent: -0.25in; font-size: 1rem;\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">      </span></span><span open=\"\" sans\",sans-serif;color:black\"=\"\" style=\"text-indent: -0.25in; font-size: 1rem;\">Agus Kusnadi, SE</span></p>', 'd451f6d0068894ebd7e4ceb197499047.jpg', 'vidio.mp4', 1656391030);

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE `sambutan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `sambutan` text DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id`, `nama`, `jabatan`, `photo`, `judul`, `sambutan`, `date_created`, `date_modify`) VALUES
(1, 'Agus Kusnadi, SE', 'Lurah', 'lur.png', 'Sambutan Kepala Desa', '<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Assalamu\'alaikum warahmatullahi wabarakatuh.<br></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n12.0pt;font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:black;mso-color-alt:windowtext\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kepada\r\nmasyarakat Kelurahan Jayawaras yang saya Cintai. Pada kesempatan yang berbahagia ini,\r\nkiranya tiada kata - kata yang patut saya ucapkan terlebih dahulu melainkan\r\npuji syukur yang sedalam - dalamnya, atas rahmat dan karunia Allah SWT sehingga\r\npembuatan website Kelurahan jayawaras dapat terlaksana dengan baik.</span><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:black;mso-color-alt:windowtext\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya sebagai Kepala Kelurahan Jayawaras di sini tentu merasa bahagia\r\ndan berterima kasih atas dukungan dari semua pihak, terutama dari Perangkat\r\nKelurahan jayawaras yang telah berpartisipasi dalam pembuatan website ini semoga\r\nbermanfaat. Tentu saja sebagai Kepala Kelurahan jayawaras, saya mengajak kepada\r\nmasyarakat Desa jayawaras untuk ikut pula berpartisipasi menyumbangkan ide ,\r\nkreasi dan informasinya agar dapatnya website ini menarik minat pembaca dan\r\nmenunjang kami memperkenalkan potensi - potensi yang ada di Kelurahan jayawaras\r\nkepada daerah lain.</span><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:black;mso-color-alt:windowtext\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Akhirnya, kepada semua pihak yang terlibat, kami sampaikan\r\nterima kasih. Semoga kerjasama kita membuahkan hasil yang baik demi kemajuan\r\nKelurahan jayawaras.</span><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:black;mso-color-alt:windowtext\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saran dan kritik, kami haraokan dari semua pihak untuk\r\npenyempurnaan website desa ini lebih lanjut. Semoga website ini dapat\r\nbermanfaat bagi semua pihak dan kami ucapkan \"Selamat Datang di Website\r\nKelurahan Kami\".</span><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:black;mso-color-alt:windowtext\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Demikian, sambutan yang perlu saya sampaikan. Saya selaku\r\nKepala Kelurahan jayawaras berterima kasih atas segala perhatiannya dan mohon maaf\r\natas segala kelebihan dan kekurangan.</span><span style=\"font-size:12.0pt;\r\nfont-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" align=\"right\" style=\"text-align: right; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\" open=\"\" sans\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:black;mso-color-alt:windowtext\"=\"\">wassalamu\'alaikum\r\nwarahmatullahi wabarakatuh.</span><span style=\"font-size:12.0pt;font-family:\r\n\" open=\"\" sans\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\"><o:p></o:p></span></p>', 1638294590, 1652244680);

-- --------------------------------------------------------

--
-- Table structure for table `sarana`
--

CREATE TABLE `sarana` (
  `id` int(11) NOT NULL,
  `nama_spesifik` varchar(255) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `modif_by` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sarana`
--

INSERT INTO `sarana` (`id`, `nama_spesifik`, `kategori_id`, `modif_by`, `date_created`, `date_modify`) VALUES
(1, 'SMKN 1 GARUT', 1, 'neko', 1644815268, 1644815268),
(2, 'Suka Maju', 1, 'neko', 1645313906, 1645313906),
(3, 'Puskesmas Indo', 6, 'neko', 1645329248, 1645329248),
(4, 'SLTP PASUNDAN', 3, 'Admin', 1655433840, 1655433840),
(5, 'SLTA PASUNDAN', 4, 'Admin', 1655433909, 1655433909),
(6, 'MAN 2 GARUT', 4, 'Admin', 1655433997, 1655433997),
(7, 'AL HUSNA', 1, 'Admin', 1655434160, 1655434160),
(8, 'SDN JAYAWARAS', 1, 'Admin', 1655434214, 1655434214),
(9, 'AL KHOIR', 5, 'Admin', 1655434442, 1655434442),
(10, 'TK AL HUSNA', 5, 'Admin', 1655434539, 1655434539),
(11, 'SD SEKOLAH ALAM GARUT', 1, 'Admin', 1655434590, 1655434590),
(12, 'SLTP SEKOLAH ALAM GARUT', 3, 'Admin', 1655434611, 1655434611),
(13, 'AS SALAM', 5, 'Admin', 1655698023, 1655698023);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modif` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `image`, `date_created`, `date_modif`) VALUES
(11, 'header', 'a6e17ee3159c1f01549e37778d800c06.jpg', 1652420651, 1652420651),
(10, 'header', '2aab78f03d83cd1ffb2f38b667acd0ec.jpg', 1652322242, 1655432953),
(13, 'header', '264b9a836916575f5225ba1757012ca8.jpg', 1652420714, 1652420714);

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE `struktur` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`id`, `gambar`) VALUES
(1, '9c6398ec2b71effb7b778ee76c8f35a4.png');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `nosurat` int(11) DEFAULT NULL,
  `surat` varchar(255) DEFAULT NULL,
  `no_kk` char(16) DEFAULT NULL,
  `nik` char(16) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tgl_pengambilan` date DEFAULT NULL,
  `rt` varchar(255) DEFAULT NULL,
  `rw` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `ktp` varchar(50) DEFAULT NULL,
  `kk` varchar(50) DEFAULT NULL,
  `surat_pengantar` varchar(50) DEFAULT NULL,
  `pengedit` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `nosurat`, `surat`, `no_kk`, `nik`, `nama`, `tgl_lahir`, `tgl_pengambilan`, `rt`, `rw`, `catatan`, `pesan`, `ktp`, `kk`, `surat_pengantar`, `pengedit`, `status`, `date_created`, `date_modify`) VALUES
(11, 256, '8', '2341123441231234', '8765432187654321', 'Dewa Wahyu', '2003-12-06', '2022-11-23', '006', '007', 'Tidak Ada', '', 'e0b87dd86798544a917ea7f0497371b0.pdf', '063e86355c6e7c0f943a6f00ad707624.pdf', '173c7a4b2c2e1eee5ca6e11accfd2bd5.pdf', 'Admin', 1, 1669190145, 1669191445),
(10, NULL, '8', '2341123441231234', '8765432187654321', 'Dewa Wahyu', '2003-12-06', NULL, '006', '007', 'Tidak ada', NULL, '1f2335a1ac68b207cb155e231c52cc2b.pdf', 'beda7680484f1a13915a5630e03a5e29.pdf', '27242fb6b97d5bffc14577e58480443d.pdf', NULL, 2, 1669189579, 1669189579),
(12, 117, '13', '2341123441231234', '8765432187654321', 'Dewa Wahyu', '2003-12-06', '2022-11-23', '006', '007', '', '', '47738fc5dc1b7ef7559cef49ef0c05d7.pdf', 'faf045a3d615adf88f11ad1b8ebfec3f.pdf', '0168af516599eb6549b51bf19ec1b1ca.pdf', 'Admin', 1, 1669191854, 1669198962);

-- --------------------------------------------------------

--
-- Table structure for table `usaha`
--

CREATE TABLE `usaha` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(255) DEFAULT '',
  `gambar` varchar(255) DEFAULT '',
  `jenis_toko` varchar(255) DEFAULT '',
  `hari` varchar(50) DEFAULT NULL,
  `buka` time DEFAULT NULL,
  `tutup` time DEFAULT NULL,
  `deskripsi` text DEFAULT '',
  `alamat` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT '',
  `aktif` int(11) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usaha`
--

INSERT INTO `usaha` (`id`, `nama_toko`, `gambar`, `jenis_toko`, `hari`, `buka`, `tutup`, `deskripsi`, `alamat`, `kontak`, `aktif`, `date_created`, `date_modify`) VALUES
(3, 'Bakso GOTAN', '93ffe38b316fc836a51922b3781211a9.jpg', 'Kuliner', 'Senin-Minggu', '09:00:00', '21:00:00', '<p><b>menu</b></p><p><br></p>', 'Jl.Cimanuk Gg.Jayawaras Kelurahan Jayawaras', '', 1, 1655796092, 1655796092),
(8, 'Mie JEBEW', 'd7cb6f994085a1fc516dcb12f73938d3.jpg', 'Kuliner', 'Senin-Minggu', '09:00:00', '21:00:00', '<p><br></p>', 'Jl.Pembangunan Kp.Umbul Tengah RW.10 Kel.Jayawaras', '', 1, 1655796318, 1655796318);
INSERT INTO `usaha` (`id`, `nama_toko`, `gambar`, `jenis_toko`, `hari`, `buka`, `tutup`, `deskripsi`, `alamat`, `kontak`, `aktif`, `date_created`, `date_modify`) VALUES
(9, 'Bakso CEUCEU', '51c61cbc408ed61703ae86422635366f.jpg', 'Kuliner', 'Senin-Minggu', '09:00:00', '17:00:00', '<p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wgARCAPUA9QDASIAAhEBAxEB/8QAGwAAAgMBAQEAAAAAAAAAAAAAAwQAAgUBBgf/xAAaAQADAQEBAQAAAAAAAAAAAAAAAQIDBAUG/9oADAMBAAIQAxAAAAHz1e15O3lLcZ20vNXuNkS3o+fQ+jmqftOjl7WsDk7wXJIE5OB3kgSSBJIEkgdk4HeSqfeSoEk6ydr1HZUaCcTDFOASVx00l8guN6Y8xXHRkGWpj0amesnvXs8bF0RH4r3m0Y4tRt0Kg7GIpKpvqnE3OpdJb4pBt2S6hzqUE9ZCw9A+R0n0LnlZUe50Pm7N5fSOeL2ejn6R4vfysZmhm1DXzn6XmdWWeoXU2yLu+d0eTXXWR3c78p533/juvH1ml4B/DX2g8zR59MPXN5rSPQ4+wmCvoPOuBsTnctZJAkkDs5A7ORC3z36YqV8Xp6zy3L2U7yKpJAJW1E6d50C3ESXb0y30bo5oboujltznBSSBKzgSc4FuSBJIEnIE7WBaVgWlYOSRHe86ydoFBxKK500NRXn1czMtbk69LOCtj0M8z603gq8oNwYbGRztzRldcNQC1EGqPlBOVvRXrIUC7SBeDIE6R2pz+bI0s2+mapymXlRL6FfQVHlc/YDN5fdrJm5dOsVp2zL1nraXnb64+29J8eb3w+m4ODt7YBj/ALLbLy/qQIwH83sh0lfK9wnR5fc8l6y53vB+o0sNPPremURnddQud8/nfRY7dnOzUkgSSBJIHeSIW+f/AEhUr4yP0/mubsk7Jq4yCROS6fdpT6ptjZnounjnJBSSBK9qGI3geiy2a7JrjOd4E7yB2cgSTgdkgSSJ95ygECtnZaPq5OVx9Gsllrc3RtZSgzVgYKVTS9aaSStOUFtV64Rq2JIHZRleXGOdnGdleptHZ2s5w6+gz2vN90AVoExtZxbfg3hKaAEAIoy1F2uMQjSieHqKmKoG5U0Zo8tYt9Dst1Ymi48SL2Wc6yEtfJH6n2Xx/wBdtz/R8n59v6c7/rDZW2WxkZgql4m3kpoen8lttaeVqTHZBBL0GueN6HzeiGx2l8tZJAkkCSQJJ0OSdQh83+r5RXySakw6swZB46VbD9L2yd1JTo5JWRqScFOTgSkgAYkHTnnS4begoI2+Pe1gW5SBfnOh3vKBfgkIpxGZ/PqnkjR4ezohmqwjsW2pXobLwPWmRD61btYxj2vgnNcqFU0ufSgdkNzjCOCbryFoqVp+4Qd6tK0wKkys4XNlzg6bZXIGbtOA1dAhexQhBDLQssIbWX6DH0c3UetM7yjEvrKw2esVYXIqZVPe5SXZLS8kH1eKqEygWV6rU8no68/qcdjR9Dk3Mda6l/y3qtIBNZOrlr4j3ObpNee7B6Z+m7S2HR2SBJIEkgSSB3kgdpbqMyaEpfFaX9Dx92r7PlevjlZxz3k4KcnGdpIiSQJzvE/Eh3MbxvWcayXPU8/0DIy7YzsgTvKhdcSONkzVC8nTu+XUzjVqliJguRe4rDSln52iVvJFq3Tw+7OOV2Usy0kR1hbst+q12uA6Eo462GxKFYHo2UG0eacoOmLTWcDZpGY8cNTzoeS3V+XpBS1PPU8/VxNx06KWnKhGOZUiyFcDWXJYdF9SruxnHEadoIaLylzlZ+3iDauqSK9Zt/PWdsfc3bF18b4xPuDDxPRJsckjXzsr3fn9HOd5+i051kkgSSBJIEkgSSB2ciPkf1DN3FfBTl5yTjU5yClZwJJE5zio1llkfN7Lx7Z1WY4zOvmLOSp7OCRdMWRy7lyBoeZ3MqLi10I6o/vkWlqa4dAbjXAXjdiisg6ihm65uqonj+gB6xpKjJRY2Z7RUPNepW40r5D2vkJ0vL1WlLK1BrVzNwlw1bLPQajRKXH1YopUrzTlETooNgTPMo+kDV+e3es1N7m48udXomwA4aKwo5da9g1ln1LRzpOQ163FUqYvoc+jH0F7DNa1MK2Nrx2mn6v0fnq+jwesJ5T1NTecyEZTSentluTk59uysC852iSQJJAkkCSQJJAGG4RS9LNd5IzlZUU7Xodr2qfBlg/LO7a+d3klxfo7MtTq8l0KYfJ0tYvE/O7rAM1qZ1dEXRmN9R7TKtThEKxK0hzpU0cp7PdGZRPSORckm+xlahPLHpU9X6iB6JsNVzWElWasyA0DcZxubSOlmOGVsTtuZ5nDYz2hjqbk0twwppeGuCcMwxFkhxCkWkMPhKFxy41ltLjWM/KN9ESk1YfLIou8vtkMLFQwwba7aoeyTvVuY9O/9D+R6d5fUeKzv8/uNbnRgT1QmcrkkzvvJ0K2pduSRqSQJJAkkCSQFB3q1LV6LtZRqTkH2TiJB2HOc4EnOhOSInarp9zuo8nQHIZU5OtYtXaANlT0gXF3aRL85pmu0mQC0NRnE9bPVZZHgKszrKGkd5TSEX1avZWhWg7hfLczI0V0DKXLylnUsFH0gVfkmKOU9LUVbg50SwejdxtMlw4r5hRsLpjTaFN0sLoynScc1ZASldN6qM5otgWXc4PMjyEUUReBkHLmKmejsGohpg3wyowBWAb+PNZVh0sYFcUamYUfyrW+gfLti+f390dTu5C3UaqeyRLvOQOWkDskokkCSQJJAkkEjJGuyVZyteh2SBJKo5ysH3nIHZzgd5Ao7mdzOXoez9TzWey8hI0dasfXLOUa5DUvylDyvSVKW3nNoeztDzYaouM5aZgHs/DbqplOrFfq49o9W1lekJsrSsiiqFFesnqJ3n1rHKToMWzhuLIbw8M7Gfnobg+0mPU+MKz31/Keizk9lxSyrEEquNtdUrsYumDKhg1OqEJaigjDVDZGVpRLRUmgSnZqZOsumC8ZpNJNedvP1eUZprK89q5E1mCcV0V7CtPQw2izi3CUDjpofSPl2ppj9NEk/wB/CeyrFxJbjVL94jskokkDkkDskCSQEZJUUrOBJIO3ORErzg5JwJKwO8lA4lzJ5dg6uM3j0Y9csa113PP+w1yFg6nqry8XrptS8oVkpvRJmykUGBwPSp4tx+rmSbNnGF4pjN08SpR9P5j6FpCpz8c5ufp+cy1QKEms6mniNkM5u4qIdc6jfSqrN6YVHoYTX4MjyG4GR67zO9lTOM3nId1/MegDV7Ck46u3nZ6MRbibGj57S0zNQCSetMooNBGwxbsNLDzklosrOWUw99YmmgumimD6rxWucUlarva9na72ceG1qZBcdNSmQWa2/pXyv1/Ry+lKQHZxuQB6nskZJOBOd6EkgSSBJICI+0qZznQknQlO1Tkp0JOcCTlQilszHSYZEvP7dfy9ldbsdVmkuxuL1kK+UAHdLzRKnW0hemkyyOJUs1falLLx/Q0T8rn+2g/Dz0uTcPZRtCdHPUGus1xdoxfy3rPGzpVleaTpuIa0lKNkl+artK0sthftyg4eIKs1RVraqx4MsgyzdKVlAdzC2Ir1JV2XlFjDmkEm/O4b7N84tTYyR0UbT0XJWRduQw4kwp6GbL44GwHTdwqlVcydHpPPOs6x4yj6RpO87Ny4zqS3gIo91uq99LNZiPp1/APbYe+f81qb461gH1z5y3A7OdokkCSQJJAy6ytT21eh3teJwdxIneRk5IFK9RzoC6mVw9VErvZ9OPz1Z+jPz/o4OsWcDWSRmJmVNFzAZG96XyTDj6Ah531jzyhvrUDDcLLqtEkABjjIlpqpn18HXS6i8jTnkfX4CrGOJ21sB0/P51uUys4NwmNpS18jUytc9omM41Hs3YT1Fw3hrNlFFrA6pYbQy3Jfsiq6LxAG1ovqGuAfmZtBjTGu2POrNWDpB+h4Fw9HLbz2lgODnEtTze952kJQ4rObuB6rXLwSxCmi5O8hsmoXn5OIvrVdR0Jr0w9TRXoHPOOXn6nL1crfiY958n+h5N1AGbnv62/iL6Ye675P1XTNpztuSQMjlbVM7yD5S0k5KQO87RlqdDIHN7kcnSZd82Ow3RtJhoPPi7g0j75ZaOp5vWCDO2VloMJqtLlWanG9x53TqfXqaK8xnp6ImIF6uxitnxIgJFSVqoTWz3zXo2aXntZZnj9oyafoUzshm5Pq+J+Evo9YqfZcc+OnpcwM8ZE6N17yO9D9Iu4DJ4mbqq1QNRa7WtteTKT6prJZhvcFypsMl5rFo+xN4xT58tyVq1Ohalhz9LHBooCIf89vYrSvLk0Rxu4GueZOlbS4QU24wi9z4dpBLNftObdhbLXoZaDIXodDx30PTPC9bg+h4bFk7fmKz37ec1JVfWfPvXdWG/zynmOnX6nPMS4d7ya5dr2qclYn2koItJGczGs3DWkJbLSiTrY/NTcYz0w++kWpIOKsXnXy/q8IeToIvFRVzgI05ahRxNsfu2cLZnNQrSzRF7MtLK6gWecE7mTfMppCbqPQHSoJJSo2dHyXpE/RnHdUSyhQUxN88V57XDmFaSrtCVMvbpU+S30q0/ZCz2MSWscahKdaTG1l2vazNfzCv5DKHRQFNo2b1DOMdfPTsKceY6rwT2J6bFcq3uGbezOqo6yvzWbKPYF5l7KWgUvRVy1OyVrYtMHbVVRoZgMpXqd/ofztyo9Pum6culibPhM6oXM9L5uqOTveX0Rk2edOz85Ofm+gzofcwJOcDk51PnacFYYc2LuClsNik60KWKJMbKY2aAV6Nd5Wg3sXRVR5C5M9ausJROp81/WZHEk9vN5kQfXreZ9PWIe2uhThK0J5G0EPNZvqFleFZ1FpVHZG1i+y8p6RXswBEFdRaqQj1sqGLzPpfJZ6+nzFjVL1kiJcwd7HZoaChHJagBNN5ncmk3peZZ0j1D3nT5abiyFpvWbwSh6NTMETulwdNUyws9JiUsVVrDU0NMs5PYzZecs3WdE6ifaGq0prlwEJolas9Gsqfia3X+jRKyBOpVjBytqq+lpM9Nr6X8i9NWfrcH1+bzc+Kvr+L8+wkxdPuzpoXKsWoaVh6qlqexpW3Kp25yifUpTLReG5na9y9RY0oIq4bjXjTVpDrbIDX0ApZdXLKvELei8saaGU8oPjmWak9Sq4Wry6ovuvI+qhbBQFrJjPfhOULRBTQciIPee1wy/OqeiBR4zczXC/SRdmWSLWE+sqdAktEE15/M9sizx+mkalBbO0LIF64SXi+e1YT8fT2LAePZ9iyL54P3XmnWbduKxFNxoMoSQLZrS3FfQZudIMraIIAUWWnp7+a2tMDZW1A8w1sdTwO+gE1mK6RaWa+wbSctp8oZfNVVJcZiBk4Xt0lXipoZxqNgLwxMh7hr9O2vmn0vp4c3w30M7y+YKfT/l0LdSml5VpRqRp6mvOfS8lqzifREtz7L3l4oIW0wr0ZAKPh2pZtaWFHZCqA5D6Z16QKZOVzxG+b/RM6b8HQ1avP1szbsdE9jSANuO535v0GyGER7M1NMuHCNy2IJ0lMv0Pnyj0P1mc1ZdmDje880WfQwdYdrDIi9C0cs+a2Uc9BOKsxWaXRFUH0g6umXaORzny62eh3kHBM3XDUkIQrWd5r2ajrxfRqTs6fLcl+n4iQjXx6JRdb8FRZON56rsrcIJppuiY6A4hjYsEKxfXNe7FqSnHICloJkESssSOnmy1cf0AW/JzTzK0bqJmLc99873MF9KWMv6fnaHy76bdz49r1A8L+bzZnHto17X1eadqWK6Mo8NeUlExU7wKUuFh9ERie9uQAHmcN0WVYHGc8gEyjLy3D5XQwcf6D4svHjuVb0VbEH7DSx9yJdazlKk2h5/dAoXBJJP4mjCJXPtSY4Kw6hRg3RDILMcvnumCDWKaXoojRROjGl+oHzs+ji+o0ya0F3tufhAkEgu2tlqQjdhCJxilJBVIw4vk509d5DJ1Kotj0lvWo+NRhiAAB7p4FH8qdNR5Z95kYAeH0siKnJa5lwEqTkXqJuL1T6pwYyL9SysZct9WbrotcUcf0ACvKXOkaO6GU9zae33fBeq6OTYdytLt5bzktLRmI83W1WRpRnO+rnpjotVnia9z3cgIUQGqisGisnQbChhJl5QgXiwQMEI1UyPTYsXx1rQqPA5XqfN3XD8IPY9x86+iKAZu4nLX0Mu7W7Xq9SfzjmZDVdoBjzWcZwYNxp36nYKLt6LWXW+OtXcrL0h72Jueba8/cNtsvReo8n6HJ+kcx9BwwUJA4LqE1t0UYpEJSid8juHhpkLCY1rIL1XWdFjDcVbZ8EKPSaPhfXVDS+phS1gJ7UW0zowlI9XctOGE7UiOU9RKOBqUwO58WDTzNGH3H9Dl0l19vLKpxojkNSUBQTfEZ+J6rOnTyTgoa63o/M6vOvZPeV2+zk2+iJ18/YGB52StFmVnMdAmpTK7cHGqhIIYlz1TFUtAlbxlLQoIYHoUYvI9Xm7FFBNccJLE5lfWsLXpeMB6/wA0aKMAYb3vR4vo5zgnAXKMqAdrYXWtZe+fIwrZ8YGFAi0uDMSuyngEesycq+ciA6maUhl9NVl9K2iwevs3mHfTZmt1rzDiXq7Z/o5Xnxv5kXoP4YWt7NWyZpkTugq+fX975rWM7B9X56ktcdLDjFwC+18Luo9Vk5ys1va3lfRA+oVrNqaNF4raaztOohQNuaBMKgaulM6xdM1E7L3s0PM189nTrxFKyJ14QdKyjoB+ZxvS4UbE9r4j0EHq389vp5NQoGOnHkkR5mlqN80M3Txsa7KuWlur0AyVVwPO1Dgms5NrSxNS1nuGykaNBET7dW6bJwsWueP934uG2oUoW81uZs3m6+L6uhza8r6FwcmaRq+Rp1TypnWB+SiYKhfzobaXdI0FJkRCYNPXnmzWdhnnj5s4WvdouP0+bXQrblKsVD9BLu1Ya/dQsiP0HxnsyB4u6hKxMf0vnY1zm0dd1vtov685Wlrgjj+vSD5qD2Pmnqnm+g85edr9YHwotSKY08W0X6ZvN0pixYBi+7gNS9xpJ3TMozBpQBpLVaCvnVu8vFTP0RWs2FHFdvO2g8Nmg8MoAzsP1eZN+ZfScy09v6TwXuunlI1m6HVz2kgeXCULq7WeTDRhKUw0gKjGe6x6UlutUHoUBImP1PUWHZAtPMuN8MiO42fhWekQxNmz0GeIGb9Ll1sjC9Th+npS6ycVL4+zc6RsJkVkqZzeuPyZGeiv5v1wuL01s2nzuPy8un7HxzOp6fLranjMaS+3SipqGowh7XWeed0ryzLLuy0zX4zQ9V4H2l4lTcWmc3z+xg5a01QaWo+yAtY34u3NMlofWPP4nr8bLXwON7HGq85sfNIZaWDLHyt89Deg88KT6RzPbM1rE0lWDvBzGvYl8t6XTOLambLhF3pYLd4EDUU0VN2oZbFhAYJKsgrLp0x9fEHkEUAtPSeq+fenzn2elhaffxuwc0nzY7iVV5auVwuMvy9GmKqyDVUzw2r+d7ZuF8sMW6LDGV6jEzJS9Gz5KwvU63zY4em8rdWnTSSeuFO+h1ZfmFPU5Sa+z5TSZ7LyTIEIm7dnBFpSX9V5n1KXiu6mYXydGTtmyKQmnh7AChGobjQdG5x7H66WtXlzXgWSuBj0PNzdJCa0m8BhrX2/IazjfzhiMssDl+LPOYZWHuspO92leisjRLmO3N1HxI8z5/2vm898AGry2kDWu5wG9VcaImHJPRFx+kv6OCzL2ETCFR9U6NFd8Us5gy5lb8Dy1yq8fZ6Oy7HXydpLMWA7ny+pAz8uh5CpprGLo5TzT9Fk3Ob2e15/S1rfmfO3nzqEG3F2E8tKef1s3k663GsAk2K0s/SqtrJ8wtqTb+bsSk0tVYMCEpTmxlL1HpszNbYH0CDeV+he8ySTc8xXJBZlbX0Q3ESp2lGWkx32nKvq+NyeZyfQpxp48W5zXPGJsZNL1r/j/S4U/cLYGvQVKweWZCoPWk7WST0KDTltgZXmkyNrAdVboX0slxKt193l5EjKv8/VxtMneOFoa4FoZzYaXQP7Z5uJ6TNzvyWf6jOnbNtD6ZiGYI1TL3HpFUuRc4JL3D+eTF6TW8j6CK2bVYrMSzYBt1WKGCDaweLr0tFF7pwl+90zGuxRPy6Hscbm6sgjFQyMdxffC75yTh6I6pc+hueYlV6ivR+jxznNLDXFzfVZvNtgV0I6y2WbaTnh1BIx67JGYFtSwKdeu5wE9sapDN3kxpP6Bwz6aK1AdlyE4Pn/AE3ZfitVvL0VzaUHhuaAgDwXHM0wMZ1uJwU1g5u9i6SCwWNMibiL3P0abvnN8zbKHlSmci7auiu1Sz77XlE97OJZMWbaxVYu0LhluJ0cpUT80UY57b3nNTh6VCmU1vVfyNHr52IAomSJluW19Re4ws/02Rlr5e9qNxdoQ0s/bx6LkzLNbJENgnN6bSTxdFdnDo9cHzmeuLUd8fZR7U/g231+zd8a9S9C953S0zbHUkucpdky9nLT8+DtJvzw7juu/Qfn+ppO6z430PHroSsqdYZRd3IN1PVy0LzvJQE9Lk1gV2lnSaOiJi3Gkx3oG0vtHL1KY9IQ8HR0GkeV9em1omM111yIJKC8Xai2O5MjTyaWkTHaK0Yoaa0Hh+nMvEd3MudLO4dIrYw5TfJFmp2Qq62e3bqja9brfNPT1z+otDAghq4w9fC9CpNKr5W9rKynocSKDdTtJ9Xc0wxRnFL9DnauVgs5ukzs1hJ1Ww7hv6Z6bQG7zvLccVKhKTy4+DysnfzY0RVZSKy81zuud2bbdTmMMJSNIpYqre7V/G88mi3yceUVzOnPq4u9GmhdQtbautgO66erUrIZ4sekyq3GvB0aRV2z34zA0lvS6ZZWoszzbtQMHs0tTu5a7WJrxROw0NFxU0F+dICqewuPMFsLs8yfVHOle8lwvTRuPK42mw0MJzbkMyXoJHlE382dWMx9UWTo5T1p97J0Y0a9n4n3kznZO9lhjc0AU01tU1T57QeqAhsRCFH6Jp5foACD6Xxu8Tp5W2jNGcyXQyNFnLou2zA8nzdxm/Sm876CoUWLYVyCMmua2Nnp2jqfPs1q4en0Yv63ndshhfgJVx9TDQsk5pHc9tKLSQ18svKzdTO1jZ3fG7N57Ga9WDO896PxbeztefJhO6NUPNi7sZuvhnFWsJSOy7O8z0fn3H6+8tnjNdrVxtvbnMrn49LNzbdd1bQUrPSpnWXI9u+Xbnb0kWkdPpK9r381dXKdy0LoeU9PmVGYAmjKMUXFaoD73ssQWrhmU04zOj4GJCcXHmlZXHQtyiSVczZpbH2MxtdV5VtANh6Z6ZxWnTV914L3Mxp5WumlkLaPFeSV5mpxg7vAww7dE8JT0Kc1kFfaaw2dXMJ1sLzm050a2qq100NVndbB0KKJPqTabpeXIiFA4XfQOqpj6uTlrSxiTRXgm3xmxlUyrVGozKSomJmtq4DlycUJL5icRHVLTBazX129Y3DYelM4ybC3PzFIClbu5+xiZ5aWn5tnLJyvO559rKad2mfNNHpHbBoSbAM/J6OZzTXy5BJvpdPnl6qUmKG6GYR9Wb5BxP6Pyw+zWk5Tm6ML2XjNTG/Yrzu3PUsGhuDoy3LVH04bC6Ze1IlRUE1BWbMveyF+tUDyeR6Tz2WywC1sWQ0EWZoTo6567eeyrd+j/LfQSvdHVKoaFYSIMkAIxqy3lR3BHJZy1o9dElRr+M0cRYnaxdDPL0BMnSLqQk26RnqCht3zTaeySttIFRlJAZFc7Lj6BMtliMU2zr6Mw7yzD9Rx110UHFPl2m26fHlxih1oPIIwAAUMJma7mH1z9G4kjMqIO5+HPvrZ+tpAhNYMJhETem2gTM2ufZQOjauld1U6pzN6q4e9N5/G1j0SWR3Gbt55L4zkKuZu0EXRDGYM0OSKvfVvTq6Bqs5PH0qc6/OrnovIei259AtCqLVlqQektIKMVYoyv1BR8vSGTpA7enKCKW5LD5r0+Xnp5TjatNdF8Q/Pp7+DtmR7OYG5p5z819JYxNqc2AMckBKqJh5UE1yCR59s9V8L04CA6eUCL2cYA00Zrq7r+bPhh6WZ2etvbLNdt5a2nzFLFKjSdOjo7XzA9H5tVs26owG4tS1oCCaSmZtLZaZWbt4dO29n7l5qNRCRsEDQbP6qwtb8zMMB5XK0PvcpZuuNvL0rr3m6lrBzzwruqdPTqZbIZs+ljDz309Lz2sqWHalJ4aC7ls6HpXzZALVyzb5VUhyZcutPqNk25nRn1EZVt91859Ti6knVTvQbOTSl9KuqxfL01LueUPBjt2o+CtRFGAWExAkpcoZcDDrxO4rkT83i+y8nGiazitPNy93E1lYgrXDraOjGntd3yfqol4qDZIcHVy8dGK8Robx3R8vQqw67m/H5jyPfziEzWOSlr8sDz1+bd+drtpVor6XH5B7vPzqcb0VwVvE+iyHp0zvM7/nS/Z3IKiqD6k2ZsNyYwNYYM3Uzxq7WH6FrGM3ZNQLQqRhLBkZsyhCxXspmuU3oPIfQI2H301cY8zie6w98/HtIPmOS7cq0Cs6Crz7XFvfTAYWjNl282oO9Ky7CsRiiBtlLIpuypyDaCVHBEGa8j8uvqecSmOyqOhl4brdXCa9jX0Dqy+ee++byF9Nqm1XOyRNRmqFY4rCGSak7VBu8NcrVLwB0ZonGk22reI975yb8ippIzqDI182pyNTL2unHOfy9DLb2XofO+kzkzqLAh5r/AJ/OnFotnrlbuUPn6faaHlTdnDiZ4qXQy5exDfR1DaYCdSdrVrGMFpvPosijeZ6DLNH0apQ0FjZWqyM/WzI119HF0WmhN8GCjGDN6hEepuYO5mWk/VeB9nRVV1OV3NIogmnjegQXC3kMXhk9crnp5bbAXVfQWPL6e/G3gaHinmnwKmUaLOMZLTXvxLHfOt0b1UbWdUNdJhL14o9Vmavmt5swB7jyHykqIgYF6Qg3Xq7NGaV6PtIqLn37hthqeiyufpS9H5oWy9b4n23idoL6nyRMH9QDh+grnpYlGp0dkcKM4WvSlySDuHbIOBatuAyAN0/G5fpfN47r5761vAaXp085G0zxt6j2PhfXc1adaNVkl5vaHzdCXpcMKBGLoU08rbwN8cvK3B6SuYXaoweVdOizay9QKVou1BI6Q+5hUvD6er8+1IXs1llEPZCxW3N80Ay5ay0RcZy1YAclpALNKEtQgBVztDz8luiYTvvJMubIt34ddB1Q3lWHK2s3pFgVv1pBDcydclFXFOjhC0po1NrE7CNlu1nqze2nUaOfv4rjPMLot1VP1W8eTey2uaa86GZ7K0rQurmel0vRjs6JPS9MqCs6rz7gINLHZ3JduVm57qF1LC6hvhKvP02j5LReO53zfoBNmpVpgidXLh8F4ehVYgPXULc3pekvH8f7byOG2eFhB6ZarivTjGQXVbftvCa/Ht613Na0wmaPJy2086xc9W8lpIY867fTz4mr6HKsRIfWp+fqy7zb+YU9wDXLyjNXNpCg8igTHb1kiRsVSIelaTNfYVzz1vXfP/YlPJvIFZ7STM2+l2saFbyNG56vy9JbzO7ipsMK9k9IFQULR3s7V8jQYrL8+iYGluyoC3N03l+uQufFpbNN+TE1wGvlPUo40EGjNdZM50FUKoO9GEC8Gsgb/n2hbOQAJRRQmd0tG1pqbiWz04El5tnatq41VdgWGxNLzS+OvpMvzTbtkBtUXib7QiqU48QTJ4rotXcx9TTDB0T4eOnuHvIasGl1mrmnQ9B0uf2pbAvSW1mPXl+EzdvNjpzFjD3maiBtcKbeFtcXY167zW5MIA18C4LPPo6TtTGGs2foXy/22lEEuXHdnRIveXPP+hzlbXm9XPmsrQYU7MVtzO0nPlWuUzvgHKE2LnXM9kVXefC+oW2u6DeUiU0fGg914RctgqaeXSK7iOtZy5KCKEyqbeni+o5qcgMTkz0mswp07jKOjyCiWyrR5oe8t0VgA9Ji9OWKyxToxIUbk45DGoJ9uYeHHlJa2R084T1muVylBJ0BamlGhM56r+z8l7TSavKt9XJ2dlTblqZVQRQc+vcnR5zb+dc1bVXMPVQqHS57tSJcqU1ng01XXsH/AB+l1c3kDk0cdaralc7a9F49ys/T3yhRO9BMC5cVhs1XKLD8N9K+fZb4Q7i6Vos5/pZMy9pjWls4ugQ14b0OBb4u6pogDdWqOey8V75PK0k9bLQ1KkcBl0GmD+b22qp6PaefqBbZ4gOiiXQ40lLWfqS45vj0Ia2x5f1ZAPPep8tjWalqJVv6HU8n6Vyzjb1ZPI33PJ0P9Fx5uIt52WW/o+fLzbMpt1OZ9izfH6bBb25QClUNqYNnuUXoZMgLV3AyxbPE86+gQWEl6NPUw8f0yfZHmXV6ejzmp2qXaX4acaCTPRv0Pn96p0TVv28cnY1et5hQhMD5d0M5zJ5um+rlv7zpO+Pprk3oI8h0czCJmT1kQ7M/0m0avlGT64HR8zTPT0+p4b1GkoauGCD1Ns7K5r9u94F+X7JdIjRfLekwFflVWB6szZtiHg6+V7RTjYx3JyNksI3uZCMvJVtoRhl+ux9x6q8KF6aVsrQEHC3V54vOQY5Wnp+YLWu9t+M0a30sl1d6qpsu2shpc7RiZrmUZ3qskUL22IVbnpFDUB07qaebyq95by0jLZ8qF20FHQzRO2I7zcC2kuHOLv3e5vYsx17m0XAdbMSIdfWeUWtbP1bWkYoRbAJZVsbKnOaqtINi64q9Sy803PU5ahOC0WL2rS5waUW/rJaeuLXed6OeSQDXqXGuKaiXJvgAfQy2aTC7pSSTqYbybyLzrcAw01C8qcLZy92Zp5z2nknzgN2kpYTQaddDKvo/QjRfwRKNJrdF5e8Uyi3VaJrOc1WbsLyxXeT0hIGO1c9DctT54Wpm54ol3lZ21Gw8oXMYLa4nVI5ar2DnxP5khplg3O1pkPldfReuuZdeGLfxrSVDj0hFPUz5w0Jm6GK9JlbWXyUlxRbt7X+lEq1YF3nw8u3Kdaby9zKVN609ZxZeWB6pHn0tQ4+XpdoMDAHVjehxC9cC6eyIdHuyOsCZM+noNYpm9G4gwdRaydgWLbP9Xna18KdXO0EdFZrgM7adx9GL39bI2+jnv2c0z7BRDdu3zqLEHybZoj0LXC2hOi3ClDTzWu1GQtpZ8aahE37wC5jZGPPvefh9lZja8/M7ZfIe3o8a0bKu/TAyyF6CucTHUoQ8rFm6hdDu75XdNta50XPTY75K1TgjN68muq/nfeeCD1en4HZm/SW89UWsqmOAd+5ay0r5W4oUFiGM9kuI29BbuRuR37IktiZQW1UWspTWS3zzXs4JzUcUPmeqzNHvDHiG6V9LqowSuUObatudIIHY6Nncz0uAtH/S+O3OPTR7wnBVi3GAV6593cS49raIsfLJlpI2Msp3xtMbZ71O7mV0s9uerSIEHJsvjny/SzBbpO3mTb9AlvlmnQvmBs3Wb5o5Wgun0uvi7XTzWle1PJWQ9Y6RYZELj49kxNBmlk9FUvM0FHtC175uuTAFWYvrpB3igmFnn5cy3oszOtnz97XojrUlmTfQoPOK3V6LqurPRcl6vnEFgWoHQV7V+2zJTHHLirpixaP10Vkz62b84+u1ly8Ju7nEZ67JTVztc7RqMpgoAIg2Bmj6zzuvy7LepxiD1trPa1587PZW4epHN0qb5YLNea8kLQmcH3/D+hyk+dsr53lTTuLpaIjwfUeR9F29WtkPTHRH1YtTzNQ9vzAZznMyxRGd6Nwjh7obvG8MRHITKFMfZxtuA1uV9HhSYCfn9g4CZMWjWnPTxYZyvQbYF8q2tWfT9XyVq8uXNfL9A93dwDPTjOdq1SXkN3klSfMZry6jGx3PRNZ2uV5xxk0dc/QJawtVG0vP0QNuFhaeNPOVPWFn1Z7JvR6SnNsFZeNT9Opl0ZS25yl56awjHKZZWesD0e+a0JCNV7H2MckkN7P58UGB27OqXVcy7BInf2y88R9R8xyFWhaOJ6DJL07OYl6LhYYKzujO16wBRcHVRlSUvQafkdrXHUSaHnWSm+Ln6EMneU7OPNaRDXNpK2LlBtLyEK9cTzAc69DjKd130PX+I9ThroaVmuKgmGlLLBZ7epmuUyrNowLWkDtP6Cz5u55Zon1gzkdbG14Hwd52cqjmUGPRcwuc64rS9NZr6DI3t489OEwXQ1IN1SuiWX1AdPU73lak3K3pWnZSLOyTnOQfLV5nRkHR82y+cyLLTNIyiaO5J2anJ2KM1nnaD2Zpm7mMnaY9R889vI4BnsinTUmlwt0TQQ2Vh+WyfZZSvBQ0F9Maq2Dpno2X6mysynhjKca22Wm8jGqTjmpo8LJ3/OGZYfkZt2Hw1MiPutc2sXbi81Hbyx7YMkmG/tlfJncad8XWlt+gx8Wo3egJlalmB9GPnFNHO1zrwbRI1te2VZHS2t8OVrHcXssH1nBWjUlJy6o4nloskajt5VkOAtc4Aroge68a9DIdV7LRV0DZOqmeqPv43lO82yTNSVVGlfVaT5n1nlvd9J80u7m4aGYD1PvrsTep6bIia595In0lb0pJKR5KwcnYOtbcHztRc2iuZuZ/F05xLu1QHCZe2TmYUUPmfN+gGSXSqc31a/Reqso5WQB15nfRX4MAyiBdDQTVYGfpqMy1tXl5LX3cfLCh61kzNfCLtv6VLPPG2nmHx+jMFTLOXyouZR6dYzZ0Zw9J1Hi32sc0qP1WZGvmWwzfm2309nl3zSQE0w8nV56raDmuNrKGov5fb8zRjHpysfQjz9fmSiewgFWE2Z7zej8z7DkZGbZWSdz988PyunSyo9+X55UDe2gdgK/ZjABVx1bCjmaJjEnfQ5J1jP6Mii7VMouDC85Knpw8vX6x4XB16MgnGceh/wBFx7fmuMvHIGBGKvbndM+yQGeXrJStqBydg6UKPO6JMp8PSBEMy36luiua80akZjjLABKTumdb040TbxtkUluopL3YATYwz1NLKi8dHVzhjV0L6Zs5w2uXj83riW6C42NCfUU0MnWVzG9VkXhitDX6sznxd7KtGMJ5VrBJmhRAwTQywxGiauiDfk1pQ0VV2tRP9i2OlHwP6Z5TSZtYPlthDzs4Qtpd/OyKaGcw8Csh1ebtY9Bjei4q6Za+Kbz4lD7pCbk7QyKLLiU6Z1k+D1SJ1LG2fkEQ7+JgJTXyBDogoTPxyhPrtaaNmLWLTpJ6a2vbLoE25ra5HerbfnlLCRGhFpd7yVPZyA9QnZFO34E52BQZxKl1GQ8fR5Say/N1m2FNSsaCaMSv1qlytRkLAEHruWi2NUA60Jgu8Enak8/npdFmnH1op6CHTgTUSe3x88g+qGhq+S9DLRDe2PYjqC06yu9n6FZJ4Wxm6LzPdLbWouAPMspEVir9XYboNtSN0hGZ6ORi7wxZxmlGuW1snNtnGLXMPYxQHjwg80R9PPoZRcQyarNW9OK2vma/J3amvlucgVfq3O7NkYSWswvYtmaGVe1lWU9pblVKyL3Hy+uOW4Pfj0Nrz/q9MPJLbAJ0V1M9285Vheha4RvS/Vm46SdE1l06HoFX+nk7OSorS5k+25NM+9rGdnIGnQtEhcIMdZaqK8tUdBHVy0F1fG5+jedyNfE0JfumYRHCgAjiKFt5Oq50DCprlxbg8dBOdZZ57E3S8vT5025lJ5FWR9GViU0prz6G+vnr599xnQA1bOa9BTyjF46583SFVM7OeueDiUbZWwozqjcTYMu14apZyt7yc3sqaIdsekRPFDcjNIKTPbzliCkNjvtsTYz6UgIbYYai2ulnHLG7n0X1a7vJvUfFuZNM0ZzRx86p7UKxSa0V7eglc3K6ed9dQ3RyEtc65lZqrya/pPnIuut7M4LGe2qfSYNyWZdC0dhvfanZLbM83e/KaZ2tzodJS1zbnI1LV6HZIzWoaiQuXoFKX5LrO2TFUlU85fYpjslqpUxeyTN0kqBPRNcLIZddJTQudBB1G4FSw8dHmlTb5xRkENHL283LXIA4kaX2sLQw0qror5a3cyLNBRYvvKrR764hijmOtuX7JmC2Mw0FQtXoDrj8zm6Uf6ORWmrNMvO830B4rV+Tpl7vnXGr3KbbNxFGZkKazExGBRpY2njo0QovY819I+lw9+SwAeOjFRro3LYXJNkGNn6G1mZlezPRt3UnkQz9TG62g+sLWtVvGbx59TGo6dGWff5sZ1yZ5LIbdfPenOUgWpQs+upu3Z2e1svwMllvwlz2clT2cjO95GWnILdEwIQa3qnUd6p8vTkuo756p21bsGu2LJr7mC9hppVJJS4WYqmknqaQDPMHN0DEMtPRmAbqxgmhoTT0wZ3hZ3oMzPbHeUU5+hxGsNCVJeX14LOuFu2q4Ws1YdeWT1jq8Ry6Ilbr1fc6jlLO1l6nTyEJce2HBFDJTE2EstcjI9EgadKhob5dsmllfrBp5O+G0uCFEztHs1j6QeZx7oAR+X1ZlleaUNandk0BFXRaQEqb5tg6C4v6TzLWUamZYCOM1X0n0OZbepB1SJZ7Cyd0uN+aX3ErMyMB6uEXbkpK9YpJu64Gtr6kziZ7PP5G0K9q96cOzka7OdDskakkZ6MZxqVxsBVC4QaK1JVUOhQw79raiUvRMKzgMq0XvMeizrpKtyi3snUgCRfm2w4hr5bekOsx2cpejvUjE2CaSz9ZPLTzufr5HB3KtUf6JVaZZyEL3NmWq7zpyThWAxcz2KeenjzeuVNPF7yjT0bp1+Mk3zK9fMeiVLhvs1KnOpqo53xDXy085i3NETI9XTSPHMayOGqHLKK3GWdTkrLPpWmci7uSVlLgnarVe2qz8mv7le58VT0uLZOiCq1CZhstNNdcUyayE3z9Bp+TYRs6GEfj3c6sPOrJpd6s7UUZ6OYumy9rkuyxLROIMKsxBnnJ27Dwyd/B2clR2c6zska7JGScgerDopQgCYGxehqJiqSqYwFksfbVbtzvB0rdaKoIApfsdDD1M0wlK5MWVqjw1w9JohRjBvtkci5Kk1axglHFovLzt0HNtksOksVu1KnKeOGXdbmKWzoZAML9RMEiWpilRWqE2m3Wd6RPU35VU3c5znHX06NHUy3+nBDEJXg7X1eNVKXTE0hJm1Lg9FmRI5Xq1s6EfOd8ze4pjWc8/rh71jj0U+iKHGSL0CZ91Mz2lts1xmlAnBtZ6jX7e4F7PFZ2wxxX7zdHXAlx0p1m0ivWvc75eHb1xdOAyGE585d4+G5ydvtggZ29HOya5SSC7ORne8jXZzjOzsD36L3MjJGylZYSiuVv8x9Bhq8tU1GXgxTsikvO+tFHRgvBdp4vpvJzXk9sr4rU5dfcXxtvN8l+yD7eqfO96Er2NdG0uwFSVih8gAMCnW5xkiMHL3R8nWGjKuLXeG5pLxLE6udUOgHNgaVOxfE1sQrumk5tGgwmzU+bNUXF213PJescjIau+AhtUpKAdDIs+g1c9sloS1E/SUh+cPr0VJTSPcYKvqBD8nz0wYrxeZ9A87sefCzXYCxxctlD0fn6z1PUeDaJ9Othnl6d8xzm0ZjbZKbwmt8qWIPpxrW9Q4O1x8JO6RJI1O8guzkDskoneRqE5YOSsa9D6D5x7nm1MjrKaZ5mfsCKwmdAcsFGAXFZbg6cvEw+f9Cjl0YTbSi6Faa+N1+do5BDQ29/z/OTb3RPK+izD8nUSvLo66svaYTohnToMpaa0aolpPMZbTNAqDIZ92O82yyWyLKkdGp9JuShN8oysNoqhloeWg4thvG0zdEaDCBrjgnTRWJpt3mqjLVwAh5SSA6vNI8bsmFghtIKKtqm9YdADjC00TMearUnE11NSkP5ol7byL6FKPx1mr6KdyO/TzXDG9NKxvR7I9OYaprb5B6UVqguhTtWhUS8ms9kgpJGSSCkkZJI1O8OylYgleeHmWnudFDvP0/RC+O9hvzJrayFwnUtKS4mxDBW0TpwwkCoes3i4voVcu/Q8+6ztx41Sl6OZPN9l5iL0Bamfzaewc+b7ub9XFu5VdTqubXCxSaAA67KWEFW8xg3R6EyvsOnLHYBIbdOKZWu15re5t9Igi9fMSTlyFVpXKsxfQDlrn2YGOxlCNPaGSS4c1cI1pywGg44hepEJqS1LFIHKkpc0reqJYYh3VAjnbpk2GnjKEqW7Ls3IvL+xWivBD9dm8/RgZ/o0tDFu8S2P1+LvdHL2xra5Drwdri/Vpq1L3Cney5knGuznWSSCneRnZyNdnDhcBFRD8YbK59uSTPX6JBEnS+/57tR9Jpheh35s0GojcLcJRi42Ry1oTgxS0CuNt5UdGD6LBYz6rI+owezzGKpakmNtt9zvCyPYIw1fWeA1NZ3OWrzWMXk+Ya+iUy0IrRTX7O5ighTf075YXXL6AiP0unPneS9Qtz74vpM3Yztgg7dHMStai4K9IoImKFKruBzpQbA86hgkQZpRvWDHCWgpBk0zMI9dJzz05nVqgSVaY8HPH6TK82gr218Hs6e40Pn+7UetPjCI2yYNYPYTzXo+jFfP2F86w1thTDXE67fZMadGeznqGBaGHvEw1JS1JW1qSQU52M5JBSSMkkFJLMtcNBTyhcLDakky2kkF71gDMaVr2gr+w8MXWPpos/W158wOmlcrVLRpcbI0w8JUB0ONUHpcRaa1MSRqEO7mdHKxo+fek0hl5nSOR6YYeeY0QNYANpDj3zk9NEYyyGkG4TLVbrAht+r8R3TP6jjs4WvO/PFTn29aHxkp+v749tP1TXgrC+jW8JrSvRBU7mzUHTKjdV6PaJkt9GbjAiVBbLgQ7XPz5erhIJrVZJlS75w51eYXormdsZAtQWyJPm4vkl0NE/NSG2Zjox9Euuz2coEn18dMl3r2kzlh9OaYz0TAMoaK1tWlWSgXklLs5BSSMkkCd5ZrnINHfPXwMdB07MtqzsHWdiPfsqtTYwkoFOWq0b3XzhnTP6iFLS1580OmncrUPRiw2xJgqWg6BPE/Ma2hnZ9OH6Xyb87XU27dPBka2Nyo9FzL08tOC5npOLojGultdR5su+DOsjSN7ONfDB+rBH8l77vz2d5EtXG1hl5VhHoDmwlIu5CwOrDJl6LurmSHs9wq53tmxyO9HR8rzXL6Ab50SsfWi8fXO/RZKVld6mabznldAFmKUy1FDNiC6RicH19QXTjjm2GczO0Rc2zeFUmsWnLVNgGsmI0ttFAnEIIGVbQQmCVUZKs5JBTvI1JIySQJJxqVuFHcfmNy7hCWuWwud5c8kjOTsD3zCh4vlL0FAHXGPnYnoe5+fs6ZfSRIau3Pmi009JVoajQBsUGvwtUBqXhQMncSjbOVKaOrQzzLacq1tnO25qt5cHp5paCKkPdHTrN+fXP3c7MD2afiaXP0N35xsy/Q+Y1QZ6eSD9J5ht8x79DVjTwI92kVi820ZsYWgKlCscBPjQdKYZnv7z8eT6Wl08fycO1m8PYn1gmVpzWXEpo0Ygzr6tnOabTYqczTuTXHVPi36cdWiN7m8LYlc8IHOEvU8t3tKTvKXJ2MoO4gCvcDdBEELkkZzneBJIySRqSXAdICS+XE+Lpoo2tz9CoyD3itb0uZJxrkkH9Clb51ykjQ69qyl5eXL8vLP7Dxh9MvoXMHf6OdMGmtco0YpSVqyMa3SDRSW4MCz9VfnE/SDy7G8ZcznVz+hrKonyaZ4w9ktRg90a50jbZZqfO6enWWsF7mVp1e5DztJYbNSZtZcFbmVr1YmdqLacmsyupIrJpr8s9D6VbB7uTNQOTj6MfmzXm0xTuHHmDacoVaZJtirHCa5593+WliMd0gNzSl20vcUl4iTtmVJXrVpOik7VlqdoFAEWZRcgR1HaoTkgckjJJGpLUC6/FYCZJVfP7L0t3m3CEotUmFgO+da25SrJGqyRr3xBFysfLr2oLtQMRc6d71vAUoyBzbw5pH0EnhPYb891dIdxmUaFcrjY4NajNBr8JVFaEuqVQ1Ir88P0q09GQ06injemwNWdFAHPy3Zyp+ji7zvd8xy0AfC0kHKlHWSIqM0QPh4heN8Glx3iecPS4N/CdM0lHh4aLS3MmNmMdOYoeXIbEjVe2lSLrFWCvawVqboq2lqXOzoc7OiklkVvyMtzkDgrDYAJlgoG4wrXsb5JBckjOXqACBotjV07zyu8ITim5ehmJhOLWVAmFvmPl60q8tVqskc+/KEmOlBEppNeU6PpeET7bnYCFARO/BFaXLVbSPd7Hyz1G+Hq1GSOcmmmnpCo2qMXGzUavGKgvLcT5JxFRlqVy1oKs7CpWdF2dgcreAK9uopUsAIWwp06SBWWqjs50OctVnL9jOVJEVEfOw05OuZ1YtudeE5bjJOwVe96znewXeyNTvOh2SIkkDs50OzkZ3nOinO8CgyBaAEomxDuIfJyBOdqHaDDIRVUfLuW4yef1ycmVhEdbRUbVZYADS1yquwHozHW3LmnLVZWdlT701OYaVlLaTThatwy54fLVtLJbnZBGHZqi962h35GavsPnjWmf0qvmvR6YgW0x3OZVsFyEbFABRio14SqKUJUdZ3icoBiKr0nbkdpAkkZJIE7OpV4So697wJzsCstRPvLwB0N1C9yp52IVm8NeM3nVgOhutUExAXuToqX7KXOzrXOyBJOIklBm5KCJK3ZzssKvbdClS1EEB12BAQDdBWqOVoMLiErjZ0rU4esZhmx0two832l5Lqo4pQI4C0dWYXpKiKHoypS9NFXlqtVklT9BrJjpUklzwUjIaSK72SQl5JY+SNLWktTkgW5IO2lJth7okmmXFpGlxyaTSsjKVkClJExWkiujkwu3ZOnOtZEXrIHeyNzsguyQJJAkkRySBOSDnJExpycu5HpNcuyTfOdkRzsjXOyBJIHJIiWkCvZAtJGQcgFvIKXkFaSBwcjAqyAqCQcUkbEvJnQxyeZ3CrJncLI0aSZunZBjXkARZKICSkmKTozFWTSa8karJHP/xAAvEAACAgICAQQBBQACAwADAQABAgADBBESIRMFECIxIBQjMDJBM0AVJEIGNEM1/9oACAEBAAEFAofb/fYT/B94OE1zU1LUnsf+oDv+AmF5zincV/ISZzl1mil3CZWRuYmc2NZ6nk6qFp0X3OcDGFp5NDZJ5d85ynOc5znLU5zlOU5znOc5wWRbmEGXbF9QeDOpMRkeVJwi2fuV/D1LEbw5WRuyn091oGRaXqA/c1xWq4o9SfrbTRXAvxsSZOIrgW3YjYWYmSpcA7hbp3vqONctyX0i5am7x2/TWfxHuW1hx6j6f4mI1/B/vsIPr0/BN1lSLWsP/VMUa/HcLRrYzfDyr5BlKD+oJNbiuWXdm2WW7hecoRNkyuP9qOi3ZtgbcZtnc3Nzc3Nzc3Nzc3NzftubnLU5zyRLSJVm2rKvUwZyougxqiWDavVGlZXx5WCHGFUwysjHpx1x88PZaJVa1Vn2LKevU0CV+mpZjp/5Ou16rpoMOIC4zeH1I2pvLqFtan9Tj4N3IfxGWVhh6lg+Mka/E/jqen4ZulVa1r/29wtC/bGV2KZkW8bLcjlGac9TymeVoXJnKA9zc3FfUaFtDcJm5v8AHc376moFnGKvfGETFr0MhNMR7bnOCyCwiLaYmTbVF9RtmFl02W6ltQMy6rjV6P8AtZWZiX35vqH/ADD682jZX/5PKto40L6YzTzfpDjX8Yfq2m1ctPT6nRvLhNaPFZkdSp+afx2IGHqWD4yYPYRvx9Pw2yHqrWpD/wBsvC857lp8bNkdeYgl9kmeSEzc3N9v17V9ziNNoLucpv3/ANsA5JVsMhH4ARRuJVufpzPD2KoaWnBgpB3jrzvsUBbtFhjOQuJLK9Ej22YDqb1GOpzIIyrTKs7KqmNm+SWLWWxq+FVmMpsbJ8VvqNqjHxMd8SkAWVvWagW/WepX0eJcO3cdRYlVfjr9QUHEwl3hYvTYTeO/+PW5bWHX1LC8TewjQe+DinIsoqWpD+eflnHem/yD/os8azs2ajZBnn1LsksDZC85Rm63NzcEYaB+uJhBWc+j+QTY8XS9Sw9ampqIJi4vOCtKwTPETBUBNAQjcKCCvgeegAedj8YbCSfkfGpPijVkHGp3dbVXYLcNSjVsCPicjJa8h2B9Oz1iep0yrLRpkuLCMVzkVvv29RvNNOP6etVV9h8dAIrHt6iGajHsRlz1KXZL8Ih2v8Zl9S2Ln4hx7NQRoPbEx2vsxaFor/MzIU5GXTXxH85Oo1ksuAF98a2NZDZC03NzcM3N+w+gPgwnLjGJPsR+VH9aQAOClr1hrnGVV7mLTti3EDsqABZZoeXZHuxjkBVPkh6m4h64hiya9hEOoDuW1qS2OjG3FIjjUX+3jptrF1uOcTP8koCir1QmtKfU1cYBOVl/c9ReuujGuFuJi3eRfbO/9bNtTy0UfvYfpr88UfxiEbmXSLa8jDZLYZ9SmprbMHFXFr+hv+CupVMZgsDb9x/DuM8tfSWXS22eQwvC0LTlNzfty69wdTKxKv0XL41gCdEsOyNQ+24o2R9joqxEFp4nftwYSuvUr2AAYvR0xhqgrAhM3D3LFmbWpxks8ddtfC2yrU1qCbhE1PqCb3HGoGl9HllleiOpU+oDys/XWUpj+qfqFycJKsX0279MwtQJiV/qbcnCV5aMnGuxrRbXLueR6qPqsePP9POr/wCQRl3LKgWhiryPpOEMeuH+P1O3vCvGltVvw3+JhaWWdyxW1c2y0/0VExlIKJyV1K++/wAv1VvgEHEL6ZSLcrIqIm9xvZV7VRK6QabAEr5ieSC3lKjEAI4AHqbEXUJhMEaH73oZNrFhYzDwhctCfNRYN2Dc2hni61OIli9wRhsa00uqDyyrU+oram+Ywq67obLqLENdszU1jY/qVQqGU00ti8P0zw45OaZm/HMUmr1D+bXtrc9GwdexP8mZV4rwCIrwXPMezmD3+TPOfI2Ei1V+Gfl+ZgAAE2TXD0ANs6cQ52hHbLqa/gBgbRa12hOvbehygJhM5QdkfWNV2q7lYKqOwV17K4A5QTcY9zMbVNVm7we9CMu4K+ncsA/ELkarZywH3YNj/VYECOJ9Row2bqtCVtqMZieo9L4li3ENZQnMAs+BaDLypqwW543t6r1Zd/8A6A/m3BPSsP8AUWAaB/l9RZSAdKmxE7la6H4bjvGtAa23VlbCZeY18T2+puHs72D9MhjY4VPAwHiUyzF6YaPtqa9gZuajdQmfcUdwCMO0GpVWDFEQd6GvoqQYaxPEdshmzAdRRuHQnqNitKF+Vc3AYPpl3GSFdRdiKZ/licjriK37PcPsejb3LDplM1AZRfZQ2Garsf8AVV7FaWA468bccpXj1iqr29UP/tWHl6l7D+XDx2ueipaaz/GZbY2zY0t+60fkMf41VKv4k6jvL7ZY+5z1LbTYREHuR0YPoncr7G++XZ1t7NS3Te2FieRfFWB4apZiKZZiusxcY2kJWJ6rUP0YXc46VV6+oW1B3MevcA1CeApXS8TNGA8Tvvl7EAxlgOpfktVk3H4VniKjuanxKA6AMMJhE1D9L3H6m9Stt+zdFhsMNixNkdSs7DQdTEyDTONWVXglAy2agIP4H/2fVMPT5/8AP6XjCig9Df8AHbYFluTUJ5fJMerkVAE1+LNqWvqW3/FnjNGbfsv2k37fZYT6H3B1Aa/Hy3N7AG41fdeIXIHGuACBAZcmoOgD1lFrcbsH7DtqM2/ZZj9ARV8tkX61Cveo55TnAYT7XY9dksxg9VmLzlWPxgqM8JniYTToQdjU1LOgp2CssTYCEkKyGWdwGOIwjCVfbQxTKLSjLwyhleVq8E5Owfb1HLGNRQv6LA9Mq8VH8+uid/yMoMyfTVsanESuATX4s0eyZTajNCdzU4zjK13FXrXIa6UEQzU1LD0zcYpgOp9HUxh+yT7DqBo3ZtGoQa5yAFqC4HoH2EqGzUdz6FXRXub17a3OHXCFRB1GG346L9NtzORgJBDfHyATmCCBNThCrCWbIU6g7DQT7ghmtT7jJLVlKndnXurTGyDU+NcmTWygBbNDKz6sdcSiy+6o/r8oDX/QY/zsvf4s0sbqy2O8J3AIqbjjs/VM/wAGta7H1GBEDAjIPdylov1voNsctDGzFCgbPCFI3UvfQrv2Dsi5OS1bVT9ke2txBxFI0P8AV/tWYD8tfgY3UEK9BZqa0x0D8tN1K9criHb6Aab2dbjUifU3uH6+oIwh9mMbscZYd2Hqb37AzFyXofFvF9d2Hzi10YzMbvUWoqWmv/omD+Qzf42Pqcy8sd4zdkRV0FHJmIUbEX5Mq6n1GOmP1ud6B6s6ZhtyRreoD2p0WbbY+OXmP0CZvpjtsg92IwlVpD3EGcNx6f3Ll0f9q+6xybXvhACWNq1W37N7GE971Fs5An5b6B01agRpYkX646DIOISMmoJuMNw9SvXCU9sRLB7ah7lnxX6JMXof7FmLe2OcK7zpfiVPEHGA/wDRP/TZtB7FjH5ZNmyo7B3YE5QVd3CEELSNRuoewRuBoFJi72F0bBs8Onr3GxjrRBI2cCpbLbDoeXZjGO2o7bNZBpJAIO66lhOjkVh6DU0oX41DU30zahaYrcgF7VdTfdnRP0ZrrXbfQMZtqeoQOJ6UjpVhjdTeox2sHftavXLZJ3K/sH9t13LF0PuAamQ2y0EY+wiDUB7pteqYWYMhGXSg6g7/AO1ub/Nm1LbJTT5Za3ke06KDcUAEajmXDcRR+nq1o9jUY6bHqrfHPEL1q+79RGrXjx2SIeo53CZjW+K+x+sQbJn3LiAF08IKy36rsQV02KIFdpQV4WIuxj+Q2FlZX6Jm5Vaa7ce5Nrapin5E7I+t7jWaMsOgjbNQXx/cf4S0cTqb0odjCDZdYOZI0GGjWeJY9x01aFhE+gtusgoNPT43sOlt7J/Bfveop65Si1q7MDIW9WrimD8ANf8AV1D7Gb92Oozbg3ZZnW/psWsDjYva7UKP2hWpxSNl1+Kni11fG1WJG9GwAtgv4zk2LASYp1KrEVPjt52ws6n3ADMX6rAE5dl1VMiws2Ofl9ixPi1ZU45USj/kyuSE2khGWiWgWDXjh7n+aisRMe3uowniWuXYaBNtrpl3B8GrbS71LO5U+q26Y/S/ZbUSwIx7je1g3AJYIIghOpb8pi5G6rD1kt8rD0RD7qdTcLr49ytWMpsNJ9PzRkC0aZT/ANEn+UwnUJ3HfZwl4pl3/qLlsXStsgbi2NVdaeLYjHbDYYcYx2KXVQT8Vv1WuT87bgy1tpyJxhqmuLJoV5Q0KCBbVjLqulRCNBf7ZXUPZr+1slQV3bTS2rSYdhWWWqFuO5beTOfKv5TnqIYDo5K8hWdHGO5l2Tcqs7X7Ubli6NqwdGogqx+OIPLcyaLg6rI23TBtzlHigaI+IbbZIAKxDuXf8Q/tTVxjODM1IuvK9nMn3Bi9gdnVSEtyiusx7jXZXZymiIh/6B/iPuTqWPLLtGhDbb6lk+NCYO5S4R6Kq8mYPH9R6h6dQcfFrS2lMjYusUzlK25GyzQdtnnDaxi2EH9TP1SgDNQlm8ksXQttDqq6s18o3XtaT5NwCVwDlMgVC+z/AI2JrW1TySzhGUqKmgM6Js4oUHIlWarjqUnS32Dx2aD1ni+O3IiBY67liHVPZyDpaiQfIS12QSvlOg8Bijsiaj60ol56TuKupcP2qagkusCBLwzOPIlw+Z/EHpfrkYTuLKhMDK1F06t8Yjb/AJt/lv8AgseWjdZPZtGJS7bO9wDjCJjsdy3IutBs4N8LsbxM0oxeMWmpIVQy3BpaV+nIDkYlBjYMsx3UEGKhc1OayuaQjdn0ihW9ljmKOrT+5/u5WOq01OM1Lvmu2I1yjaIQbNe1nJRLf+XFr4hl1GPz8vQeAbO5hnsfR5ctQ9GwBYx2MfS3WPtv7GyvT7g+qxG1G+M18TMg6WkwSzpWfgrEsxOjW/JfUk42H8V+xswmai/Igqg8hezHygMTEvOSRahKNv8A6Zn1+Vj6lxJFtpi2cJY5JPtWC8x8dQllCCfPbFoe5WNtjvoV8WFtU1NTiYysPd1Vg+CDDiWGDGsExcbd1dSVLqONTUX+1x1ZWdz/AHGJ8vIF9Rh0RGp1D8XQdGnU/qLqV3fX8q+4Y53b49w9QGP1MQ/NDP8AN7H3MlSZvsNGM7hXcrHaiDqbhMZpvkbRyIHXLjG7ryDtpZPT22uVX5KbawsI/BFM5WCGzZ+4G1OR2hiNuqtn1hInhU6Ktv8A6LfW4fv8GOpYY9oMsbbE9kTW5Vhs0ppSpfiBf0eUsG4RKhoVHcpsBH2LF1CZuco+jNLxI7UjQT9wpuWDhMBmnLppy2f99QXWRWInZop+D8VurYbtPEuTsS9AJ5Ci0nauFYrrlwWw1KolrfJV75alnY2BW/8AXF/tV8oY3UVvmRsNjq0so4EqSNnXcrXUE3NwmHuDqoHbTe7EHKvI6t/yyYD6yGG67G79gJxEEI6I7XqGARRPSaq7Zv8ASzEq36bTytstssqurbaX3cBjZBtY2qsV1b/pE6jPHuMsadk04bmfpaoKq1hYCct+1o6+y3U/0jUU6FOR+nZPVhvXIMkKQrCu4KtQ1Rk1AJoGONjCPC3ep8CpPa9t6sNiv+tCbcmZL8cjzbW7JZzXldJYrTLuAXWxUxrbyfHe5zUTezWALEG5aNTcL9ctio6OOD4qv+QQQAsIw2SOMuUEUAbPuYfaxuqRqM0Udg/t5h/eB+LzCXeVlAVLrZ46hm4vfvcIp9hARKbWptyss5DekWhsb1NRTaLdTHY+HIBeC1MdmV7bBZbVMLJtZgdj+bcsaAiX/wBVxi8qx0Rt7Pi0eI5XFQ3fKX2aHi3OTBrdCc9msjTDctTU9DtezFKxuow3CCJzi2Qt0u2llTJNGPFvgs3FlVe2yamuoq6lI4yoh6mpUs2OCMjF1CmpXTyC4duzi2CeNwSNVo/VmxMe3nPKrGo6F3ax/jan9h9Y+S1QTJ3OXazlPua7sXYbr2a3UrbY9txdlsgdA6n2VMX6yx+9roiYtfEZ76xwNQmH2rPuRuEaizc5QGDoelXcMj1JPLemGu0+rm4V01mtKR5JdSJVsWY7bE2P4D9+xOvZzLLNQt3V9BhyBUtrp7VE8pY11dtXuWJqZp01J6YKwyiVg7bhFT4+QT0xgGB2LBNgQrzl1Pjs1Fr3KtCW2E2l9x48qs8NqOrRi22dkL0V8aUYNT0v3OBhSZ1WmQqGQwn42R613dVqFtqjlZggsdcYYR8ra+Urq6YERDuKeFoBIFmop2WPamE9FdxKe82uV9EmEwnUH3lan+qYDFPV43ZF7IOhkP5rGbcH03sh1OtcgIbRCdnfvWssaY78LcqvmqHUpr6yx/6z2KK8a81y3J5La+l9Ob9v1jN4DGzrazV6rXw/Pfse4fqxtjewKgBqWjc33ysi1NxUGqK5MBlvaZw3VWCZwnAMGwq+PHiuwZadHBB/ULbq1hGWcglRNV0apSSvREuHz3HaMfk3crd6SvqdoL+o2NFygZUeRX6B1C5D7IRwXltJVqrNQMDWRHgHWVVuKNz059DybDNFHbLEEddr9M1n71e/EeojaapeZJ1OYiHRWzUubkOlDPocpvuo7lw3WR2ZXA3THbGL8Q37kt0oKbA1ppqfU5Qn8a1jNqE7gno+QLcfPVse7Bve5T9ZNNfGy1EfkPDT/Q5Vwsss5upLWeL8j7a79rGj9xRNz7PiGmrWU1AzjGWEaK9xl1M5N49PQBnITnLLOT70D3MazxXC4cq2DjUsr3K1VB7MBLln1LDN/LQMsWWJ7ET0uorVWCVPaujyyxrAscDV1QZVslPaWaMAlg6sr1Km0a22sBl/HmDC8TiWuRv1eJYwrPyGtCuz4ltqBzVB2zQ7acO665wAl4AmM3yI1GTTFYeoDGMrGoW2zfBWLOx3oQjv33BxmvZVhOh74tzUW1smXjVHxqnynri/+xi07YVqJYwAs+VllQ1ijrVn4f57b92bQazZ3FmonQ3ua7XqchDHETqN2LgZW3GPdKjosYx1K+5c3Btz6Ayr6c3/AHowifXt9x1lyaLruMmiOoe4whrJgGmp/wCAWkVLqADlfWK1bYmo50tQ3bv9vtQh2D3LB1ri+Mfb6hactDLvKrh3vvzqGGRK8qNkQWHa5DSu6eXp7O62EP12lh/rkQCU/OZC7moRosO2G2Y6GKNnIG4FAjQCN1Au4QBCfcGAATlqa2CPcTDymx2x7UyK70Ncur5stQ42sRGu2UHNcuvUqGkZ9x/pT+Jn1GtUS23kdTUX6VZqEajNqCzftuEziZvq2eoD937FI2LDo/cr/qa1IKaD5P7LFifSc02qQogh+iO9RjqHiRZTuLiu8sqZYRqbEMt+/TDzxIR8VCmnHt8ZdIfu/XGza2LlqJZcmqnULvcY7WseRqxxHKM+4W1C25ksDFiCDYitNxfZSZzOtwNqU2dD7uOhY3M61Kn4ne44lg7tUzjpbOzSNC89xng2VIh6D9kUkwYxn6czwkQ1mcTKzqFux7CCel5PisYc0arcboeoZBBD7NJaW1mysjU8OIsPsTo79ydR7YZ17ARZueSWPuE7gE7irs+OONTcPYyVPOo9ldNZ/avjs2okW5Sf1NZZk5A/KY1HJsD6gM1uOODE7gTZI1KvoItq5WOK2NQIsqZRZ2fS20v3CdDkotYji9vLH3LO49QIvx9w4zrBYwIvchrWEQkSsuRZ5FLFwFWy0jEuM/8AGGV+mGW4DVhqnrmp/i/Siampr2rPa9GzkWHUIjHpbShS7n7PXuXAiBIg0PHyY4rPFx66wyblWGzk4Nev0aCLjoIaRFQCeIGHH3Gw1l1RRiIQNRQT7IZ6Rb5KbF1LqvIMz0y4G30000YrfvHoG5QQepv8GMakmV1Ex04kDrjNQDp+p9zWoom1UEcoo17ONjx6hrmbX0W+Qs6usDT/ABFLs1AMbH4xecrbgcRy1wYAoeS/UBhGwRNd2MIX4xHOrTuV1gjIr8YsTvEPyU6iKbrBG0IDF9iwMC9Mmjk1mq2pHMqwhKqKxPF0aOQXDrE0BCJXVueOKJmV+SrxbJr4lfpZ1CewNwU/tou28ay8AEGf/wAxzafZVpU+qgQYQDPCpnhWcQI7an9pqdiAmCdTUZJrUUwnq5FYW1aJhi2cgYJg3tTah8teisr7nqFXkoUePIUm1lqCg/ZPsZv2P3uL1H7mtQmLAdQ9xa4RocZYCrVA6Htrc4wgS6sMMqnw3allO4pINcH9bOwqzxbldRral9jG+m2ZWetwjcKxk3HHar047KtWf+UZNHFwTXYjbWp9QtyIG4FAn/3l+NGKDw1W8YTuZVYeVJqIsqWampvQAgHa+2wq75xK1U34yXHIpNDbm/avs/dfiXZbQyj8dwliqArPGwNfU59AndTnQsEFm4xMCcotc8YgrnDU4wdTep9wjU4iMOuwWWXU6hinR+/ar+vo9/xtGwnR1uZ2Pacj0z0rxLk43jln9oDv3A2W7mp9QkQma7n3FE/xhyOtRk2QIBuEgQbE5d5NmmDGZ2OL65avKvHAiDcCfFGUnGxuVa1cZUicWxOLUvpvbyfu5LlcaklqrOhYd2JGqYT6C9G1RYuRTAdBeoRAYSTKmVLaKVa/Jr4XkobKKTdK6fJWq91rKhqa6IlnUB2dxD8eWp2xX3yqxdVcjVMW1OUpfRFoEN42beyeR1uEkAXxXBjHRUExF2dQjQRdDWzxi+25rc1OEca9j72DRB5Rll9E46iHXsn3iW8GocW1HooZr2ZQwysH94/h9e31Nxu4BCfZPsewXcQTW51GfjK3UsToWWhAgm5vrOxmW9txl0FtYT9RYZs79McmWNxgG1sPGuqwsBDCm2vfjNgg9x0UDjqE7hEHQU/K1O7McGY3EQnc4jw2WeSowBbQeIr3o05NtR8jlMav9utdQQDcPS2dzUVfY+OKNn6YmMdTnPUQpoB5TUH9hYoNfc+If+0U6GiJemmQ6GgW1oINBRANs30o3BAfYde56jQ+1rhV8xincKaJGwV2LqZvUU7gOjWZ6Xk8Da3N6j+Ficm9x9mfUJ9twzU+RsVNTUAgEMtyOMN7Eq4i8Q2QQDYAR9ANBbqN/TKsWy5u6x2FE+z6QiWjjys3zXKy23WdXVhuJHUyk8l2PcoqtyASLyV8hgXkm2BL9g7gMZuge2PybZh0qY963wgE3LwPlAgPVNq2Gr6SHjoWaYy1CQgmhxrK8tbg6WMdDNyfGcvJuILM5RulK8Se1SPjlbNKs3yBGi0uB0w0uKnBE7m9knUX61shdTYnFpsicpy3OWpskWclPKHuZFexphMddnUYahEsGxfVNcSDKzKjqC1SUbtT+YjQjcM1OM47nCKupqfUN4EbIJj3MZqCXIUCAkM3GM85aDvuWlyarrTTZSL63BWH+yzWp6e/DJ1xg+suvddbiq2vI5ncMBr8eS+oPsGeQgU39WBSeIn1CerTsCK2puZTKaMGv42VNQPUWsFO9wTDXUobUrPsBNwmArKB5HIAf2JmTbqZTGy1l2rgCK0W0bA+W9xMjxDzeSVGsVXMIbRu67bL8jvZZtQN3WuzFhVyKk0OMKwiMJ3Mf+uSnIfR8WwB2a9yusJGmtgiaj17GRV7I2pWxmA3y5qJU+/zX6M1NTU1APYuBLLZ5CYff69qbGQjLqiMLoyyqvmxrGnPGyitOIX9v1Jgbgu2PUXUrPGwOtgbjrIANbDqjqGM2h5u7ByfWpYRsFYBD1CYx3FQmLUSVqr3cVFlmXUssuaxsBtxrmsf1Tk1cB0cJvjWdip4DK9u47Np63sh2FgmumbUuvAFtm5daAwmSumhMW2eWF9zlMLqviGGVRwLA8sTFs1TSiTJAIVdRBoBdlOvYQf8JhGpYe9zF+nGwK9nWoerJx3CJqETUIlyS1OLLEaUytdmldRT1N+/3ANfhsRnhYw2mb37a1N+wPetyzkI1ttsxK930j5BRLkAAaWV85htwrtIVbQ3LRFZbYpHI14/dA4gEBskIx0NJ01melJ5+Sa1LrEqQZNVgWkypCtnLsnc37Y78LbnAIy+EtZroKuCMikW0qFFllYsuscQAmY4YTFt8TeVDEt3E7h5Cc2E+xV3AQI1kuthfcNL2pl470Sl9raNqT7EgzcJ1Admlo1/EWuXNJAldg35tSy/cRgTy7q7GprUUbhEJ7MNRMNZEx14qxgHs442gQkAE+4n3LVmTXtd6iNMGhcjGpoHEdSv6PuYnu1gWB+U1ua1CIUn1NzcE4wamti0HVdelFO7q1moT+3Y3A+VQLRtgVsXKoHhY/tComYu1sDM8pXgv2b1OiOLNbqXJ5bwTSeSKty8nC6i7aWuwI5aHtawrWzJsIFResYojMlMt5uK2/bZthUngQy3HlY1F7gGoV0Ft1PTLOcFXkS6vUI1PJBcYLO2t5X1V6gEupW2lvSCo/Tukya+L/jXfpWyAIbWY07Y1gVjXKBQIQIy6OKdjfW4OXI7gCD21PqHua9hLe7Nz7n3CNT/AD2s/q/UeuVzByDj2KGsg2JV9e5+qzr2MbuV9Rm1OfXl3N79jCwUhpx5Iw8WTvcA6KwDXtuAbluOj15WKaLEq2vyqlTc63r0R941XdCcGI75xWDTISGvUrIIK/H4iW9RjEUmGv8AdCcQQGVrVrFtyWWEbtUEK2MbK2qYWgMCauDAab2aaMIiW2Vmp2ulity9Pfjkox1Z8jaO2XYscozXsThL+4sX72vMDq0Dd+Mlwux+DeFTKPT777WXRAn3BVoKOZQCtcZxNcoOp/vlAFduranUgdwGDua7Y8jYCJsyrWyewfawd71CQYIZr2EaWLuZK6K9Ss9+jvo3/dR/BvrWpyhO4TDZqNYITuVgBjoe29hk2UrMQskyeLQv4xXYNGzgDaHlf3oxTogbmaOOWhNa19y08WyX7A3Zj60xMcHxtyVmsKs2QlldXYa0rbzZ5UdDKIAqO55eNTXDmbm15fIlieQHFSuYWP5F8FKQjr1IEZmKvnYlOLHUJn37fZrxi0ux0RMaxkl2yal4ZIXUb6tWET1U6FSiU9GoNsLOMUmACX0aGRV5IytXY+TbTiwDcB0ACZUvAWWASu4KVvqWuvsFJqMACOojGumo7Q8gCdT7mxu08oDCNwDQjDcddQdQexG4a38mujNTNq+CDZHZwn09p2Kz37H6inskexB22vw1NTU1qbm5s7u4kI3GKosUIBLPiKvUF45/q9njt9Zvc0vzuuY22fqDU1Vq2r6iu5WJ6edLdqV5BNWVc1ZousualF0X8U4cpk3Jjym8WVXDyT4mquhmlVYqbMYca+lsaUqLbVfhWqjjl5GyKzcf0YUNTqeCx42LYJ4WjJpsYKhsHCyysmAHheSgRvLkMf2/uOIwmbprKkEqHaCa9gpEAh7mVXxN9YsXKXVQEBnJ2WvZjHio7hiCYmUATZyn0LRzKIxDI9b4eTuc/ky7miJvdxE4hQ0rXk1hUGEbjJB9j2Ywdyyb1Mu3YXqB9Sp9THyjZF+wZv8ADc223JEPc1ATvc2IDK3EyeMayBugSQqsWCfuNYKpz5ByNZQHJkAKylDPNyCON138TZbyX0/vId1EK7juKpWweylwJZlqMq/IBRs7iuW/nq+jzaV2MhxSTW2QPMy0lSS7c2tsXdJTKbnXZZaWUctAJz1LNu1x+SjcsTkbKtTx1Ak8WL8pWeLZXkuTAZhkqY32xmVb467PryVsatQHjFJY3Hi1bbrQEwy0ApkL+245S+gQdRnlP/HkNs7iiE6m5VuH6bjKgCjiNX3VawZW0uuntNbVtsjqbmxptCeRYIe4yRNgk6m4TGhG5kr0x1N91P3itqVWhhU2xD7tL8lacmxgQ3UM3OU5ib65wXHRA21nAperBrm5V3KYQpFNii1guslF42wdSrJdFY7ImNaiW8tjEtCOzNbZZcrLl3crFM7MAjCEcJ+gSyplKsBD3AzLMaoXHn4UOVasw0aa3PDuUV6SsD2CQJxMH22yofnXXsCypTKemrILbAg4+ak7VjGfZykZiKtg1ESliDj2IIm+NmuOO2gr/EkkN2WEvxgY41DVuNSCFQgNQ7HwWCVABOKmVVc7qxP8AEofTsNx5XSbJUSz7IhQsVVBN+xl9jO+OV8gHUUgQjcsHQhOpZaohs3LtsP09thbEWqpT3jWCVGVNqbh9/tvVBvKTIK1rXkWhuQheWW6iXAvfaFP6oiHKYw3tGL2TZHtvUNrFdkH9RfDfYV3uIjOa8fka8BIuJUsXBd8v1ekU5W5XkagvLhlUzWvcwz0k6nrP/71djBRqM0oyDUq2crjiVtdx1O9iKesemwne35dE9sCI8X/AI611P7BVLDIR64loNaXCC3Y9OydrfboVruEbPMAMS8qTxsoXQbqw7iroVPAfZhLRMpO9EQrowezjc+piaj2jb8iKrTFt4nzcgQSQdDH/wCTkNA7n0SQIPa/itin5UtyUj3YRvjLXJjQGeQAb2tl3kNdJtausq9X1W2oG6996PrQBu2+qczJwyc173yH7JOv9GDkWzIw78ddGUU7hGgRMleKb370+mX3CzCx6JdZQJZbZYMJFQo4DeWqJe9Z9WJc/caritGuP2D9xoXmBT5mrrXGGQyu2QqIh9xMHvGgXY1K01PKUoqQ2VltHW4P665SttV802zagIEbbxcUgi9kI/eWm3ww2NZb+oABsL21I1jr/fQ2CYraG9hRqWHiajuCEdOu5kr0wMYksO/cxpisqqp3LLuqlLTTaxx2xg+RqrAni3OGoRG+y0EzKghAlLcZ9zUA9rF3LkKE7M1Am5lf2+pUwApO7K/67hs1D7g95PJ28bCMNxqgYaoKy8agrGDrNGaMrsZDsOI8sUK8UFye4F1ETY4LyH2GlZNpvuKm1y8H9lPWuB5RT2SNPPSsWrIiW4tMXhY+WnJalnqNQVvS8RMu/wBVxqcXIWV2vVMd/LQDo+XdJln7gRtVZSMJSflYNAMonFf1DUMs5Wm235QXcZzjWSkWbqVuTEKzLuuhRbdz/b+7BUVaASxHSLV8bEIletBtkJ247tXcZZcnKATjCNQyyUppQOyFNnPxm23cOYlcsz3MpybcZ8fK5lH5HUYzcW1d7mQOdYJBqrDKo1Nex9rEDBkjDU5cRc3y+5SaBj0PxNJ3XuXM3kPsT1WuheYYV3Namtw46gcdhqiQaNTwkzwPFptEoxXvPgKy+kb8UVFUEDddPKVVTgm2XUCEylfCuTT5jbTYhlXYu6GPV5KlMr1uxOttWtbisen2ubnMLcZkWbiuyOftYO2xiVatuUIIlbCEg451rIZnqq7gLlbA4TnXbAKziXHQrfS9LcG7PcWzxMbDthybH6i16stbVtJ62gTYErIM5bKH4zQBOp9ThqFdyysiMssGnEYQiMkYlbFtaeTRRts4gp5RqgJTxqIs7xGBTLzfCDn3I4yvNP6hckGeQMxRTEqVCTubhPvqZQ4xjs2di37+or8bMm2r9DVkKIH3PHuH2J0K/mjVIZdjCeLU4TUAJjVsJqagWP8AGb3KreLWfI2dzh0FXT1BjWFVfEwXQaeVBZj45sQ4oNX+b6yKVM01Vgo2tVa0zxASxVceDUJL2Vrwn2Q/ysbkcqrmWpfQlKc7BUFstTjKrgk5C5MYGw1fVlejrRsQGmk85r4H4ZgH7loUhvu0eRQ3KOvGONRDuMOMWzTJwFWVX81aU2jx5XzKGIZXdoLuAw7iHUFe1br2tXRyBq4GGH2yGHk3ASZWZvkLuXGrHT9PwDW24zY8xctq6rXN0F4Vy/lg2pR23XbqJaQVv5FQdLCZv3zv+PcsOhZvcWosKuZxC8x22Nw+1h0KLdicdxq1llPXAwbBuYwH2E1NRhuLyM492p8ala18jAems/WCnClaKXsOMHvxXHG0oVc+O3luWHYYytmKhoH1Oe5VjvYWwW8GisErAJNa44axXFy8IUDSlPERZp7bAbXMx8hqj6fnhizc4eQHHY4FDjjg5P7nqO1twibltJUbXxNYQuM1NN5cWTsgdwD48SxFPjpO2n9GTQCO2gFEBgbUQwdzUI2Ecibm443LagxZeDf4zTJvaKNmqkGGoiINTnOQYeXvzgTk3j1sCp2iY1SxhofDglxU+VSF3B1Me3c4qQo0Zv2vXnW3937HEEWpCJQ7inHp3EXXu32/1jKBjTfZmtxq5xjCfcC7l5NcrbyRe4KzOMKaRQWgPFvMxjDcW0CcxOmcBKy3yOW3O3caXiLZoI0VWtYAlcK4oeXJsqsszV6GjW2Ra9sRuJssNq4+nhEsQmHcJ6/w9H0vNAIOxoFLBoVZYozFABurF9OmF1TXY9FfFq82rVgPVUQDXAOzNuz+rG9bMdhqxwJWksZVnJtq+oDoeNhKjqCzSk6lnTK+5ynKWHu5QSw0DX1avdQlYJJTgNblvwlivYGqKtjVK6rh9cAhA6ZgIwsctj2brrKuzqWS2ctikndZ3C3sIFJALccheNlj6FbS4bGuJ9MZWFbzc37uesU8sMfRE5bYdQzjuFI1c8csrDKKnpeuphZqalibg5AFjN96mwIW6rLAnuK7VrlHd25vYyOgv2sqdq7EO69kPWfiz9WEcrvpV1GnHquptIuhrcKCGpYalIXFrIyMdVmBmElbZa545NPlTALXYv8A95qENVdW9IZwX+VdicXxxvINimc3nDQY7NR1D1ACS54gtyYkk8wFVmonndpQdKTCxEaw6QzcUy7iPawaG5cNNvg9D8LNz6lhDniQLWHlqsIleUBPJynk6OpTXtOHRM6J11XtTWAo5jRt7R9ysM0ezUtuFdd1uyxMSyeXcYiJaUivpq7RaN+9n16f3i1/1104gMJi9+203qMkIM17qojIstT4qG2NmMOwIANb1MmxfDkrqagOpk/Jdyv62Z2teN+7bQoEvScASatzg4miTwnGa9upqctQuIyeSW489MZ3rCcplkUyk8LNARv3AUYMoKOyFTlVKLLatQXOy7WtN9ASptN9ln8cyLOi/eUfhgVPa6KCXfky16HJtMYxXQPe5VoBjuK+pZ8owlu5aupW3WPeynfKeMGZoC0j7pDwrshxxDdqwC1ldWumr35kQHQWf/O04+VrJipza0Hd9q1LlJeUEJEYiOxgMMUymzgwbY9m+vTT+3j2B0B2HEWKIOoTsKqbmoVnGMkA1NTQEM10hYRm3AxB3Ny2XDkre1ku/rWe1hsOvTenoGnZNiyrU1HXvUXqa1CJqFZxjqd8Z2IRuY9qUT9Vjiuwi3IexaZVdwFLhhkNKySHHCX/ADK/Oa8V7DoamtBCFdV5y4AHIr3OWoWNp4cJa60ims11lzaHOnJluTxinc2SX0JboCsbhmS0MvG66VJlew1fcLaDN+ollSqteQvjrcFrTqeTRDwXqFY8j7dziQrdKxa01rKNKt9uotXOZuSWxExDYvg0/BROMKbjqomtQDc8hHu0wD+56faBcsaGK05TkDD1BP8AdTW5wnjhSFI1TTxPDXChEVOUanQYajncYyzs6l0t+l+0EZe8S0Y9iDlFPxsBM8ZhRhCmwmKpH6KfpRp6AJXTynhBjVBRqIFnjUzK8dVbHZD8StYJarUG0iMLalsFZqtRzas7F/AEsJWGMb7YRFcNf3Cdm9RVZSh2LDjTFxgwyfnYHPClQYuhZm5FTWV2bCtoUhmNuhNla7L7Nbn3CJ/WLASDp/DWONWQfjXj9Ku2PHxMmoDqL76M3qLZsKNxE2wIBfLAFlnlNR2MyxQyXkrZuBtwqZ4oE1GWMPwslDcFXqYNpelvqfUUwnZne4DOtAz6jdT+zNXwKjZsQKSIKhLU+Fkc/ImMNwjQtXcYaUNKjsb2UIVsK5LseVdwAb+4VE1DAe2AMtln7Sb5Fv8AkVtNaRVXkWHJsArWDjuv+oAJcfLg+OPJPLWJWdHx7s3KdA60SBG1Me3jLhtNSisiXDjMTGNllIVR4trscbg+OfuW0tXYqsJUka3QJ22RYQuovUb+zTIIWyvtMPGfIGXb4a1HxyWi32ZStT458rWtIIZgkW0hlbcbcLtOyddVWARsgad2c41befNV7q6bVByrFc+YbDghllb7mjNQia/B/oDVKmYuSFZTsD7P0OovcZtHcMEPsT1Pub99T/CdzKTRtXv2aWdSxvjMfW97t5bnp15pu3FO/wADLW9uU+xmNqBizO2m3tfU7udXPjCdnH5FVbpepeAQWVqj4zUV0LCQRfakryedLaW0BZZ9kbmMnK5lM8WgXKjGx7L7simvzeXiSATeyRLNmtti60W3/QE4EwoBLRtRUxrlg7eZI2cdpg2KzZZY5JQg3VMZjsVHmE8uxbYeX3FxrGrrLCKwI4bttXpeoFXdhAgO5WVrxieRLsIoNhsq1K29m0CrmF5yjNub92+g2qFlw69MzDYSJ9SsAzQEImpqalnIrWTr2M3AdT7H1CYRCNjIrII69m+7RLgfZTKzK+soDVgYNWBxI7jntTCemPJrDqb2W2FutLxG4s53CYe7Lf7H7wnq5eX92m8bst0KdzhqXlVCr5A3xgu4AW7nIwdg9VLZ42r0wvt0v92BtoNYWM3fAkWVHnfj2Y9jW2AU0GKPip0DZpahtbdRLCabD+6e5YNRjtgJTtazUwZW0L8lVr5Emv5ALL6+9d1lq2/XW+Hk0ruInNWTe2qTkLDsKRHtRgWrEtOxbZWYG2GWAALsTkTNGampoe9v07dL0Qdn1HGFBwrvPSJub9te57mtTc339zUE1N/hlDctHyhE1L7GQTcU9n7Vww9OOqd7i9xln1LX0FlmyP6Q2OQbP2xjm6fQ3G0C32IVM8W4nwOV/wANLkWYmVVa7qljCoCDGUNZ01iMAh3Fr6ydMrANZwWpTW7NoK3NCXOyqgTlqMOUsXobXJobUt1rQ8alQeW7Mk6BabYGtttZ3GXTFZUdxj+4fkWxgxbFEp2jV/OWJ2Mhqgu3PiM+oRN6geUZTVv201LRqCLMenBtxmK12i3U8sa4zzmedzBZZPK85t7fUtcmMJvR/wDm7Lb9L6Rbq4H33N6G9wGbh9wet+xJE3qfcJ9iAZl1aOu3GoZf0G46glZiHTYTqaN9VHcb+qjib2/cU/HnHPxu6NaAiurUzjpo3/LZWOYXsrNTRlz83XWq7Aj4F9IyFXnMi3a+XnLHErG58VF1xceoTRNVYlo4Mn9ali9VniYxHOw6Lro0nTOemymA2LJ5SsDbPARjUK6x1G+VoGx4+DV4YY+IJPqXVqVzqtV13hZzBGt3LWDCGlm421n9jwYEdSvcKsYwOlQkagXsjZP2TNExaSZxA9j7ERoRLBFQuxV6zasxrPFdW4sWCD24zUb2M3BNGCN9QGfcEAmVVyrYd2e1oBGQP3BFginc9LOzsGL1N/G0EDW2Y6m9EsCorNjcCkqpM9UbfqAEME3GaV4lLJkenLrKwAsrxy7PiWrMUBZa984EDYWpy+UVrRaLEBDfE5PyAPR+jzWtABZ2TvYX+lR7sMtbRCk3KksCmV8EBHkn/HC5M+246XJPGlW1De0JLT0xvNR49jwrGq6z6ueLXTxgx2eNjWA1IVjfZhHeodkgdLsTnpbH5QbEbZl1Rpavt/EhgrUTXbQzc/0J1YBGWMI6wgiNc1pt7n6PJFGDltQ9TK66n+zfs24ohOzqfU3uah9tQnUU7iCMsyF1Y/sZkjcENK/+NUyuelr+2o7EU6lx5KSEH213UsOziWCxEdeW1nq9i23heCqZUgNluMqi2goPTttj8Lkeoh8bFRHsZeA8NdsW7xGt7mrrxmdqlCwkE2fdzc3sX44Q1iLoxmbjWrO2SpRa7gKxaONQLixdzJZ0OLd+/aP2Qp8do2qsEqYzXWBSLTZ3MpfJKqTUx4WtbXSg9Hbx2Kfaz6uMt6ZchxDkuGN3Ka3La0AfUUY4pNcYaiO9ZfJe0/ZAnomP5Mj1F93Y8MU9R/o+yDZVDrkzTsxw4jsY7mAyizhZsWLm0HGyMbIfHbCyVy6zPJqFu1t0PJG+U/8AnfsB7H26hAgGpWe9bnqGPousMIl31PT/AJokrM9Kb4b7EB6YgS4srVhw13KwEjiP25inhLs4Vg7WzOyN14xPKv7Vtm0qkC+PIe7hZ5UW/vFzMk7lWyb/AIXYOv0uikVhANjLbsj45HS4t3IBP3WrnLw3FSQobkrfqH5mqY9is+ZWLBSSmXzbd5EJ6sMHcO5QukbqOJUg4XYSvP0Y2tOjRklQuSkuy8ZBnZZyJx4Anv7myYjco3cSpNa4NZZK1ZyKm2y6KxjP/wAefrM/5caHRBM3Gb3xhAOtzeoz7WyqWJqNN9el5Xfra7o3o62PS83cKzjOPtqam+xAdTc1r3HtvRV5kjy12DQ3DLRDMW3wZI1tTPS2Jt38QdqtShsghRos1P7VmO3kmQytbbi2mjwFZlgeTJBWMOsVdG0hY7+SdbGS8LbiDyF0HIv4p+o4x7xYnpGT4nY7hlZYCztm6mjbZjlKchHrdwxE2ORvbaruVoK4a/3GJVh/bIoX9WPgDu17XBZjuKNShOdgAVmMt7KpxCdC2oMWGmjLuWViFNxgRGE6gG54o/QxzLiwtgs1MWwiZJ7g7HorePN9TThfSY30TNw++PWBK1+PtvRNzKCosFlWiRqElT5P1mAYvXtgeoDx1srAwtCwAFgIB37gkTcI6rD71BCIQRO9eoV8S4hlibDT/B7YBIeoNB02panJhVOAEsFcqRVUWhRZZuD/AJrWFuTkCo122IrVEa3CYxi3QNyYbEZeQ3obmpW70mjPtV683GYPn1A25LXT0or5l+Q1qP2NJ4bDq0DZ2wGl0w5DfM2ghefIXnTWOWZRP8wE/bP2YKu6iAN6hPxsIMPLYOo3ct6lzoyb6buU3cVtOprZUabKs+JHVPAWPUKLclRoQHUWzg/qlYyKB1Ffo9+25uUqWahOwOvZoYCYbS8tpliamLlfpm5QmKYsLeJsbP2vPmFdhCdxVIAYznOU33NgRTuD3J1PUe6WPsxlwAMEXuYexZj2iw//AEp3LTHsAFos5j7ewJLX+Vbs0svMrx3tgqFS/theGodlr0aqEiD+1R1aTF+rV0/Hc1+2U1AugV2OM1K28MwMmzyjoksa7OgV7rbcJDRh4xjuBErDQqiPcnAZR44wJ2h2bIpJxzaK0ofyioHiftiJbdNkze4ATY1WhdWwllYhBBP2o5ADQKFRX/X7OtixeJ8zmdwKzQjRE9OzRii/Gx3vvq8Tb90XZqTQoXQ/AxhqM5WV3FmY85djupI0TF6lfcyF6wqrchsvCycIJ6gwmJnYpjXGxZvU8ojH5V3bmwYOoJygh1Mj+ly8WMtOpYuxqCA6OM+pTZwKsHU9V23A1lbTBSxJxnAC85xU3W6AxcE2S4ba0hpTV8/0pZbUemyhlsQ41SV5eHWK6xyNmOyBCUNjcmXsAzXXHU0VgA401M5sUhksbHbHu0N9PLW1MUKSrDVymJ9NWoTamMeV3qB+AEQalp6x3avHs+YoVVWt+K2HjAQ0euFZoiYneXxqMtXYIhrBjMolMXjq0w/2AhOo3Y3Cese4VhlLCKgIKqJubg9qejSsQaH4ONTHFTt+iw7gcL0+qW5lFUBLHIr+LfajZr6DfIjLerHfKtZ8Khsy7K9FsporsaqU51iTHyKsgvVPHAup8BA0DQHc3o2NuVKJ6jVPuXJuA6hGjqZacPTqZX9U2lIEDzKS/bV3aFtghtZy2TXzbOrKtcCGT45DhUWkCBPDAXC5VT2RQ1V4v4jKzXMpVhGtdjsM2DiVZC1njHGxomb0a2GgvkLcSpBmJjm4LX4D+qaxt7F7TBflVWTz3uFereSxHrAA8UybPKwHQ+rPpDpcMbKHt71qi3eaxjKjscF4mpDLMcGWUuk3cQ6lWfbR1JlRZYg2fuKpY61NdhZagVmm5W2oRB1D3NTUAmu8fDrqxEEH4v2ChEcMRrvQEr7jVN+nGILS2CwsUbgTQufTU1Nc6YvqGG1XrOakyPUKbqUbdjKqzGyvkGBjdTYM1BNGENNmBSI/yreorPJ44zcms+qvlMiw5FqdPWw2ybrxTzoZ+IybBWP1HjFt1rysjV4ErMF3PEFa8aTwsoANJLmN/TKUWhby1fgBjVcavqf3mJYUrzEC3VHcP3amiw6ptNTVWLY1VSbpKivn8bk6FrCO3WNb4rivy5QKZaewXORdsx59QdC1u6gXascVezxVq3O2sabZlPygbcZdhhqN3OMasEXVFZqFNwclindSy5TF2xHUvEP1RS99tlbVNYWZfbftqAd2NK/xPtuNCJTA9YWxi5xG6zCSiLqWHcvlTGs1esMZk+DOxd90txJyDxst2cTM7FqtB7a1NQfbAEBNQACZ66lojQncxX8UxK+ZsErMFrtMT40O2pk2tbco4BgSdbmohCNVUKKG6FNOighJ8iIzFkr44raFtaPLu1dPi9I/TcFODkA8kUk/URkmTpVH1VSQyZe1B5SqjYsr3MhPk1Wg4M9Ou8mKPjGZt38i3IpdZk7NZ5RdEkdWamKoUCwS9vMd6lIKpWJWDpgZyIl1kNgCrB0bRsKuz4FjY8FLGCqePUevZKNsr1fVxNVhpuy7v1F9Z9zBAxlI5W73Yg6/Awma3OAnjUzwrHpOjURKjxg+UtbUU7lw1AOwul9IPkybKnqtqwC9OR6YcdKfT+cFdNMrQ2WXJlYwryG3W4uUaA3ubnLU83KZOnry10WEESUBf07O1ZFSaxLb8VcS6vjk2mwuhEazdRMotNVlpPPfTHdQ7NTsI4stlfHeUSIxPBMzxWeRXVHDxQBY16paLAabl52jpmG4RFVVgorMx8Zo2JUg9PtFsyHVhfZffUVKradtvUpuNZoPNdTiNX0K1QE+kD8BryBm+Vdq68nOH4rUNmocpWJX1Es4W2WRm2FEVgIxEdtypNQ6hOzAJxjARkjVyyva2JxKia1D9r3DFPtjni1PcH1+DDrjqWPqNYY2zMTHvuDpdj22ZGJ4Ngt9B+y6LVXcPjSnJ8j4j0e3x5nqeAmbKt1t+qH6eq7GNOPUrNRjWXtl5GQcrFH6kul1AW9jKbeUUg+zEliZnj9yxNDUWizx49HIZC8Z6XSmQ+VVxltep5OFTNF4A2sCceo3WNigRsbRs+KBdUh2VzZs+TQZhvLLaDcYG0VubmclAKLf1EY7jAayKtxEY13L1S8LgzHyvExydgKRMPI8ors5U2/8tzDj4Y3iFGFfXXPuECZ9nixK9R4TOfJVqi17PFawdaqqZqkHQ+wSRaxMastFrWWn5Rm3FXcUaBm9TcC6Vn3PqGMe5mEb1P8ADEYadtwRRKk+NI/LUeW6IPRHcpzcmlbbLLbQZjgE5LaH+L27Da19NltPTMdrfTsPz4+T67dVZZYNzbLEcCYeczYeXhfpq8O66i7P9TycqcnArvINedZUaspnBuYT9XU1nqzorWuzzWpZmNZiY9aFcp924prx/T79szKtVTPuWgtNNqtFB8tSw5Kx/mQkuO1YftLZyNjioHcyVFgsR6jub7qtauaV2rzvkcjcd1i7F7ILIa/C/BZbVxioAraMJ4g/FWYGXKBDiuK7OM115L65+rvSZN92QKyHRhD94tbsSNPy0fk7UUbPD5KIH4Cx9TcPZYMs3ttxQS1a6hPRafcQS5uRA6MJlnRNlddYYuQ+oWEYwewgTqodVD8dQCXdAiUUeW3KvQQDq1dEH5Y41XYNtSvktytU3odqw1LTtvTvUDiV35+XaF+yOvESmpYBK0Anp+UtGbk+oDLbsiqpHmQt2NEZ1huawZFz3kjUZY0U8bbMs1ykK7+VarD5nWqolzjeM/TXI1VzGNMVQ9mGflyLnSkr+5Hr7rX5GzpeXkIrsBxa7JbTbV7DqUl3yRiNv9EJ4gs+pZ861GplVym0pAVaBf3GG0VCTlWEMjWUy23mF6R6VqdV8q6OsY6jRx2jGkVYVrg4jizFDeRRoBZUJdx0TCVExyJaOUdPakchoiMeuUVxA+x/rNCZa2o1kut5Gq0pKszVNh5MYPbEtWuxbQZT2K/xWaMuWMIdgqvbdAnlXr9wHSP9q3B/U23l43ddv14uZxMHkHwxYLeIddR33ACQazD9Upyayl1iPxNd5TLvLWSsaUjQq7jHSk9V0+SHF+VmNY0oxuIA41jZh6lf9d9Z3da/OVJSEYeI41XGi49V0l0vsUQsvGzsZDoznlr/AD7iNxljUGcalnpwG/k0EsrAVxP/ALI1NNGXtpTs21jqxvGPIQBafK/iZaSQjBhbj9TMPDMx7QuTdolxMHp06F33tmOox1FbS2OANEKDCYLZ9zgCy6AY92tqbm5We96H3D9XPuX2b9gZv2JitCYo7rWUDQUdfgJ5Ja2401Nd5B0EEA/cABF41NS07GD/AFvHQA1T6gcUZHqd2UbCRYAzyvGsYpxrjUh676/HdhsyNg0/rLbrXF5uU2s22a3jPKWgdgGsJnZlJ3SF2eELhQBsKTyQqmTrj7WD4M3gagrcqrWasryiwhKHbJOmIcDbF/hBktLX3FYqf9qAZrj4kblccI6FTrWMirS62Ll+LLHjWmuy6s2Vssx7Pl9WZw/Z3OKeCux0ZLtmmpxKis9RH/sa7AJpYabCP7pccy+yBEHbcCpTijlBGaAznANwbEWbltujZsxvtemVoIehdZqW2dGajT9Lf46hWrZNtNk1NwGVfdUX6/ALuEali6hE1P8Ab+zWIw1Kz8bQGjJoEd451LexbWa0bo8uMqQNAi+OzMYxHYNjPuvNC8qyQeTbHdQ6nL3BInmU08zx9Obr+td1pBxXZrca8O2QODMORDcYql5Rxpe0d42VZhsvqtZP68ZBa0sAu4yt5a8qkV25JyCLRya6uxP1Nqlcoz9WVlDWWU1o7Li1WWVjYsVS8tEaMJcvVo5Cux6zp73apq66j5FPzVqiraIixvtDtANTPP8A7ONXs1cgLxMZ9EfuMq6mpWNjx/tfSueu+JMUxX1A25ublpPmAZpwPjUaiTehY3VrRu4o2bDoem1V1UZefZcd7izUPH2UESiD8K+M5DTdx/o+xloi9Mw2mGZl+KpuQIZFM0CdbrOQtJs/fj1ASj4tWdjJwyli0Pz2Kpb+7ZoICZ5NLtSB0QO2IAVDZCAD2ZivwhPKWld2a5q3CXeRzXUxhYIebmC/Rs7bezFmAmO2Zi8DTnXg2a2QoA0di55Zq2alFYUnEbgE6wXpXGqHlNgCy0wHZybVpHl5ykAxwAyKOVpZUwLgbWIN1qjfhBC0kj9OWKACfbOd5FQhOq8nuY9fkapAs1NbioAtj7NjajPuFfjFG4E1FHu0T+tn/CIs3LDLj8hF+8HG/V5nq9gDQCDQjPv3rZnXE2YB+I7Bs7JhE1CIRCujR3HC8buJYGUU3ZN2dZbiLSOVWaNGmLUsuCBQxEDsCbHsPjJBpUTiJoQgTSxj39ADcIn1N8GD7uxX/wDXvo8rBO9Apgnddj8YppVWbnOwcoA1qNzU3sv3BkW8P/mmlo9WvYgT6jTD5PSai8FS+KofLFOweIljT5S+aWWIarPHuLTHTijVkDHu81ew4NWjwG9bn0Mt9U6mIWNZgxntNNIripuOyoK3U12BBLfpyA2gxHUGtKwEXTgCalpArYdqOrewIqkw9C+3U3uE6nKekN4hkWc3BiiOdkD2RdzFrlaaHvr3VcdQT7EeziDs5CaJXyKV1GEQZOPW4ZrcZtzLUvVV/V7uI8u4nc8Z1hPRTLcrUscmBiZxVkHc0Zqf6NgcuUZeUYalX/JjvqMSQlHKeLVlLGlzd0vY4wuRMjfGszU8epjotlmRi6dupWZaVCt961PuceU4NprwCz7YZAMps3EHKNWtcyBYkyE1CO7vq2twgOm3OQhDVyrJVoLCJ5JsmX2ikFzZKqxdfSFRQvIhdRRs8wALEcu61If6P2ePE3F7n4uJXUWi1KpA6sPbsJYGWf8A0Jd0VPXLq62MeTbhab3Cpp9Og7jN7MQvtjpuUJqb1Af4dRhNdMupVYojD9PbYFYOCI+XaaQOUxxo2gPVQ7KKqjfY1LqUq7TAIi0KJdXLMdWn6JoPTmhw3EfHcTxCFVWM2ohYGwkkfMnXKnfI3AzXCtiKyNF8o7NbdA6lh22NZ456hvzAaifIUv473JIqTd9YGnHzrOmuGwepSf3LW/8AW8VXiC0PL1YTHcotNxUVHmLOQCadQgGVf8og3L18NnJDK7KVjWVTJNbCvKtrH6+yPmXPP7TcrEw+Tinpra9BBxGbKV0Lh5bdllKaDTh2PusaJG5xlqgEqDMhf2daKvLTucwka5jGcmAbhmpjY75N3qXNa4p1N7I6LGYWO2Qa6lBAhG/ce29/iD2V2rdH+0trm9LRaVNpVg6wbJqHFLBzanFjOlYa0k4K+N/Z12FQLNQiFYyyyoEW40NeiY53Kx1b8SrcK3tLM95d7TsnYhJM2XYOTFHMUFUOQWtrTWgeJ1yb/wDnXpZ5t+33GXpqwYNqRkgKzjWK9UyrEWA8oLwFS2xJjZJcNWXysnQtrCgllAyLOUJgXl7ma1NQCKkAmJVxqqQa+4TuCtVOW+kpLPAksM1DKh3x3EZQIwI9m0RZqECPZ2UrNOxo9n/Jj0PktWXxMv1s85vR3BFNXjRCxxzwqrH4D31D+IdVWwRocnip00evRD6JAldUc6ArFIyMoTAajY8VdduTMS3zY81D7mGMIyzIq3LEn+MdH7J6loaqUa0gax7Cwauk8aqeEWqtcirm1i1qJ6nbWtSntVUj4iVjddpBmjG3Pok/BTymQO6Ts3ifMRUYV1fu2dFsl6vHVj3wLcaz5GX9IDP0e5divVDXsBtSv92KmzZjKAQYsAiJuVU6srfuu1efEggjTnct2FqE1oah6jdyodN8Q/Z3HYmMY7S2wAPYWi2NU1lr3k6C6h9vRsuvHqzbvPdhf+/6d6hh2YlqyvW+MxRKh2o/AfgT1+L6lglkXYnJmIw2M8arGOpy5tZZoV1EvzFK2WFzVi23T05BiwQw+7HXsY0sEfo2Vw1nRUksnCM3kgXojVdpVGqsDYFWT5KSdst3CZGTYDY7WMsQ6NrBytIWNQ0Q8BlVfuWr2HH6LTCWIzopgt3FUEDBUVsFVaw1hUq9plbEmsJs/eu7dCU6cn7x34seHEfRXlNaKwHUF5SVW2BP3RKsuuykPY4tbIpgc2rSy73ssNSwxRKhtncCEw26nLcseZOTwnLkZrc1qfIz6XftrZb7x8i3GswM7G9Yo9YwK8S4e2MpAoHs29Vhvx1OOvy+4RsOnWpj5CoLGluYsDcgdCZHcxsU5Fd6buxVWoO9lsUamNYHB1wJ9zCIYZZLhpoRs445WGlGW6rx2DQlj6VlimLyET7KkBgeRTqKdzHHlu2Q91gNegwLs8yqF8NC7nhvGLYgUFf3SNHFRVqDKss0wrr3D/TRK4A5veHeuu4XQ6B5bKnxqR2Pi1d2itfLHdqS1qsxHRlf/JTs+y7tfHXipPxatASgMprjRvtRKpe2mc6ABsZn1L7yAKiZpA2TUtTl9Q/KfUJ376moRKy9Vl175FcpXm6KqhRr8FH4nv8AEwfZjx/oCWpufUxx8bq2JFO4tQEVNDXv9QPtfw1CIwjiZA9iJx0eYMytMSBzprNqXJ47lr1Kx+42PocNC7jYV6mNWgbIyv1Ffpg/cbqzQsgHfm4tfZzruCIbb5k5C2hm+WpQeI6hEoO5ZXPi0spLuXdWquCoXU47t5R6kFBPcJ7o8ei7rORIx8kJHfnZWNypQJSe792jhqMwQW2Ezssk+p9SwCK0X+t527nbUa5ZRFbcwSz7mtwDUYbiTU17EQCGagE0RDUSMWk7pXXuTAOx+R/Ew9SxtSyzlEeKOQ8IDIsI7UbgHtr23KkNpVeI17a9tQiNLLVl3ftqeP4gmsh3YXASlXOSy90U7hzNSly6rx0MUsbE02S21E9KI8lw/csboE8bRzu0alqTSceblNRatr1McstPlU2N/WnYuyGVa+T+as8mKclrPC7ce1PHnf0XW605AIVWzYs1FQSoaYStYB19QPsWECfZVetab/LW0TY2ixBSwyw9juDQGU37nGKmvatOUaKIqbnATjqa7KdGV/1An0cfsVJqAexhIAXv8iJ/v4tLR0w0U6NJ7A3NdBIE1Nex9q0NjKAo1NTjNanWiYToW3crCN2PsmKIQAuT3adiVWJcBWmNN6Zmew/pP3Kcd6SHa6vSRdBcjGGonLYbYP0XN4u3yrvEG2aldS1flYeC4yLYW6C1CytrDTGUmXDZtt1YUJeuzm1qayfGsT5jx7GRV4jQs5sBk9sYncqGmRdyus8eSlV0YSEgHM8J/nI6vtKA2kzluWHqkkB2lZG83KQSxvJdUQGYamHiCzGc6ZixlRnXsxm9QvsNNGtw0J3MURB17GBdwDX5ma/Gz63sXU7bwndNWjrUA3As1NQiGGYy8alE1NQtqE7m/a+3y2ArCdnI+JH3X1LHBVvtojeK31B+Tg6hdGvsBEVuePhXVVWOFK3HjMgmyvGxDa2RWuLjYtm6S/Q6Ldk1eODupupX/wA2d/bEqIhr714TkcLlxedRZdray2ys16eoWtcL2FLsY3YYbGRpwtqLLSOG/IPHqBZSO1MqbR3uctT7asaCnttCH7y/+NipD/Ef7/l9yon62xYdsdah+6+bi+m44/haqwkGKNRSs60Y3RhMNjWncprNhqqUH31B/N9S1BUivWx2ghtmPUbpoCa9jDDNRfqsbjallmzuaNjAT1FtHWop0d7j9wCARazq4aZoe5TVucV8q0hErHlLVK8toq2cWpVsXYtMVhSPUcoPK28UGra6x2azH5ccQeGxQBjb3Zdj7rW21LRkc47EiscjuD4zHPNeOiPKTuxRfZZUKbGcW2inHtBCceR46KD5kzexUCYKbRKKwise5WuoEb23Cw1a2ylzAfZssRJZksYByEIJgWa1PRMqulsxBlTOststsAMReUFRB4zWi8AjRT1XVuVVxRofyH8jGXcyf06wPtlG5UZqahhh9xK/qw+xgXUC7OVjG31D9LWilEWXdwia9gvBb1747i4wsNtABVjRLct3P7rBVIipFsaXPs08al8hD5QiACEsYzcYlimMNsEJHhBjhkmJkeet1E1uL1F0ZwlfxhUBij1x0sxp5FcCvaenM1Rya2eyvfDmKmUjIr8fEsvyCzHSb4qbJvuodL0TadlxrcZpaOJ8irLMpmjOTBB9VrNRca2xeGpdoipuBezZ0SEGoGi6Jt46MA7I22DVUzaUlBr3H8ZmofxI3LKuUGOoirqU4/7Knl7H2Imog26QdI3t/oO4p0HhlksjCai/eNYqBwwYJMZl8tlQCufJX/xlEgWa1Nzh410dMsP9fFqrWi9QRuPfGVpBSOVtKtBjKC1Wpw1EQcanFbWa46+KMIn7q2gZNiVbs5mtrP2sfGf9RTYjBdgWV8dt/bEq3caIicYX9k7YGBoWhsAj5QEfJsafMw1NZMdlWrIQEiY3ilQh0CckrS1pMO4lTGLjwoAHHeoIYYDAOVlSSpND8B/AR+fHrXuRCI3zOO3y9yIZWNSsbLdK3t/o9iIYwlgjiGKZWvkjKASZ5Fra3JUkuTAu5xgGpbvdNXFWZnZVh0sK7iV2Gph4oqgTFo/UPkp46al0uoROMuGjrcK6Wzl5am/cXHVbBTqZIaV8hKx+34+rV5HHTizEzJ7OGdW2L88an9PD9XNFG4TomzUW9o1zGG5tM0Ykwb3iOhn3L6Tx5Rh3K2ILWTtpXjsZ4VEOlhsjWwEgcpyhIhMEpSVJBCdTnAdwfwmH8uXsTAd+2oRAdFTsexmtlRKhLzNwxTu0exEIhEdY6x19qLVrNt27WsYs9XQidxRNTUtr5DiXmoeo5gG6zkKSxU2udPQpKXA6+gPdlBmor8qrOpa3yptsYDK8TO+xQn7S7AsvVJcNE9MdsbklSaOO4GZsCP8A1c9j6ezUQMYTocoXENi7c9kxWKlMhWSx+7SOWiYKgRiUVJjlPK+Pi6hQVxyTLEYxNEWUggdQzXtrc0QaF6Uan+cuwfkIP4j+Znz8yjQ9iIZiv7tAIo7HQc7MsbiuBd5YIPYiERhHWWLGHybqKNxhor0AOlGoPbcHcAhOpY8QC0FUEICHHxzcwwtqRpt81HUQA+7GEziBGx3ePhGVBqnarku/BU1twcXM6ZyDKnp9zCq1qwVuUTIVIhIlY5WU3bNzze2st17NZqGyF9zft/kA3ApBsXcXkGbmYNmU1uZQoEa1VU2AzmJa622PUvKxYRNTcAZ46tWQSWpXSxjoWWkyn5RR/FqGEfkfyYbmypot5iH7Ud1r87DoGGepW/H0nor+BEIjCWrCALLuyOovQWskok4bKCa1NbgBEY6lhlnIgVvBiNq5DW2OusZG4n6FFejNzlqctwCa3AkYR4RplI5XY2pZRqBWrfaWQNqaEKdY1Owcdg1eL4Kq+pcBxZ9HuHcKEw0nXiea17KSCADAg0F1AA5YgMx6r1KrTVZmZddj183luIlTEV7HUvfUFpKs8FmpvkcQW1PbX+oauhF9jL7NtrZoTS/xH2MPvqGEdfkyxTxauwWKJUNn6Nh2TLGCh/nZgrqL7j3YRx1eI0UbirPqWVuqTR3r2Y6HD4NXwqVOQIQVupIzirCk/sb3PAN8OMfqF9QHlK13KagTavjsJlg6YTUHxlPAY1lYMaqPVGSMG3j0kRU74cIRyjCZBCxrNnySu1JTwQCyvWqyc1EE0Ns05agtMNsW2GzvluAmA9V2ai3NOReIAssslh5FDoNsmlOZqpVZ/aAahaMxlZ6uX9zHG3UaH8TD3Ptr3J/gdZXd4WEplh7MMv208cpGoID7bm4YY0sWNVBXAkA1LA9gFJirqf4zSyzcxsnZbs8KwHCzJuOws5aOP+41Y1GjfRlQlKainjVaQEZixV/LWwmpqankOgVaPXGp2GXx2IQw3OXd13J8nJ6sZjLNE+yOQQQSOpaxaGETUAiCHoFZwaYvpiHCtChop0RdxhsYkDc4bgx3sh9PeqU1BCBuH4i65yaXbajYmRVzGPXxH8diwj3I/AwCH8WtRYcpOWcNU+n2+XHB1CfYzxzxiBYPfcEJhhEYQpOECzXuTCZk27O9wr2lrCci04OZZVZKsckeFRK04wn4NLjoDs1iD+oIMzX/APYYfLF6jro/7qanGa1K7mWIFta6mKpoaMZaSTx3GxtxsWwTxkQCcYNwkiE7hEIg9h9WHcq+bAPTZffddCjAgQJueLcFPGamtRM4eKw8yBua1GG49G2SrUE1NfykbDiEe5H5Ga9sgMa+HjODwD5a86cS4142Jm+avIyasdMbKF0E1NTU1+Wtwiampr3J9uMufRVCbCNgV8prUqEUTU4aFx4LWvKnWleXHZrESLAdAOOKgBKez/evXtqEQiEQdHy2sFKOPFpWqMavUFcCQVw0iHGBhw64cUCHHUy7FI9vua7ImK6JkWhVYjcsyhZj4+Kt3pgSlqvENAATc1uW45V60gWa3Na9te4H8oG5ygOww2GEsENjocjI3VVdxgs3N7/An3bRlqUhgP26Rq7C+LZterkbYxMnZ/HU+vYCaIB9yYWhbcA9gNy6obrrjQmyeMysQD3uq8lWMNIZc3TROosUwSxfDbfcCayVOOdgjuahHsRGHT2ftBZS5UoA04gw0ieOBIFhG5whrhqhrmfjcYRP9InQNxSqj2xsm7Hi2kEXPFZjFG5RXuywbcKQRNQ/gB/KJv29PyPZ1jCMu5ZjAw40qpFYI1+GoRCNRxrMpr55GMf3csePJtPjvu4+PEBJHUxsncB/DfsBuBAseyEzcawCG3c3AYpgm5kqRbXp41YB3BswVgAe9agCwgs3UtO/ZYpimAy6lLD+jrYfoirqhSMNhR2rBjqEQwia3AIBqF1ZSNTcMEBgOi5DNqahWWV7F9RrsIgJEYbnj17iaiiVVbmPiM8PBF+4FmoYffX8on17PcFZGIfEv8ySxdQj2PsT+Rl9ItFOMKRuvFbIQW0p+7jsxtxPT2/auPiVW2KMzgVbY3uH2EFnGM5MJ1LMgCNczTcBnOc4rEBbNwGZA3XVXxjVbH6cQaSb3B7a3AGHtZLPcGBoDFMHY13F7ERYfthCJqBYFmoRB9GOoEJhOp5Z/vuRPUsbmugZ49zxyxTrU1FECTD9LstC49GLLLWsmtzj7GEwmD+f6BmTcKkssZ3mLaa2qsFqR1hHuRNfifbLyvHDXxbY1cvhyLB47bKWBa1yKrmWwjkuLlWY7Y2Stte5ubhaWW6jsze5m5ubivN6lduyrbg9m6lr91nYH1BDDHjCEewgMBgMqtApVtGkiylIw1Kzp3CEHuamoBAsPuIzQmWvuKe9xW6BgO/YiZeEORpZZrUK7D16nGAStZRbalX3AJqGExjDNTX8yKNE7NtgrXJuNr+yzDyPFYCCCNxhD7ke/wBD3uxltY4IMNPgFirfVX3MV+JKgipRTnNxl1XKVWtjtjeqByGDDcaETUMaGHqF55YLe8K5OSYFIOSEquVtzcvuCqbC0xewPYQwxoRCIRNQ9QGAzc3FaA9t2o9tdMNzUH471C0ss1DZFOwIOxuCLCvTLuPXqPUNtVGScOwkx69sqwLG6hJnKMZs7/nrXcsflHbiMvINre4gOp6flcfYjcYfgRD+WVkFLMl7XKgV15dWx/zV4t3NcnGF0NVuxX8b6Nzw94mR+mY91i1XBIm5sR2jPLLYX3OU3A/eFnVfp/U/m1RMB2L1c2WJwXFGk1+BhhEPYIhE47A6m4DBK15QfW/jV8oBuKujx2aOXjHXvuEx7NS68bsvEGSJg3L5D8XTsbGueiLIh3GGowliQiOm4V74yhNBR7MYx3NQzX86iM+4x0M3I5n8F9gdTAyt+zLuMIfcj8sqrkLbWsNeM9p4/HIqNba5TGt8q6moRuW1bmQh36fl+I5WKt6enrR+ks5qwvcQ5Ea0sYIOpvcHQVyp9MyhY+XjzoV3anMWX1zc3Nzc37H2aH2C7Oux7VPxC+yHR32HEWzgxPe4bFEfKrWPnpLM6WZbEtaSCfZbCBheoeJv1dSs2QpnmE86ynLVJXaLFIjCOkIhEVNytdCMOyIT37g7/l1NwnUzcnlD+KiH2VtHAyvKIywia9jCPx+4ECwwFTLE3LkNBI5THu8nuRHr3LsYyjJuxzk3VXxjuaWPqHqbijo+31FbRrvKHB9SeqHC8sP7Tlk5fqlWWeo1gn1VZ/5cQeqbn/kVi5aNBaDOe5uEzc3NwGYlfluvr8VymA+25ubj2qJk52pdkPZOZm4O4T2pHD2ExMO3Jl2PbSaqTG6GtsOUwLWR35LDCJYs13UvvY0B3Cs3/wBDcJmXkbh/ERYYT7I5VsHJ86xljCah9te+vf1EvwVPGpzi8HYtqNLcRZMe/Z9tQrGrniEsx4azDUN2qQax0w1KxDXFAhHR6PyM9HzlTEyrPNa9jb47J6JM1ua6n1Ksl1lOXuC3c5zc3NzlKbzUzXGx8ao3T+jlgJzjWalt8a4EsQZYBtliV7nAA2LttTUCSuomY9LVw9QmEcitUxsVnj0mspa3hHcMaCv5AahhhXc1qE/j3/GYTqZeRCYfxEEPtr2S01thZQyEjruEQiamoR+LrsW4tjPRQlCU2hss6Itx2E6siWWUSt1cTXsRuajKGDqySyktOBWCA6irzXxahrIjDQH1yOj2rnkzKdivrUqG2PcI7Vdm3ik3K7Cprv3BdueWeXcxr/FdZcsrtTxemZlaX5eWvlOSsbKUCzMEtvZ4qs8bkrbMoq8rW7rf/J49yujUFcwqktre0TZMWvcpx+ZNVdcW3Q/sdQdTceVjqGH2JjD3J/l3qZNwKt+a+x/BzKbWRsLKGQkZYRCPfU1+OaxFFRIRMe9xyRBbjrYunpgXcrytQHYtYgHMUR88QO7TzCClGn6dYcfUx8YCJ6ahgxKFFmLjmZHpFbS7AsoBQiDqa77igb1ucOI+SwD58iG4lpwgUEK3CctzkYDqEHWvYEiFjr31KTwszU+RXrEt/T3WfJiTxRdlViiAHdXp7OhwnRkxSYa61A6h7ijpBokbgWampr2MIjQww+2v4ydw9TIt3Gh9j+K/Z9/8jQSmw1tiZIuEZdwiah9iJqah9ioMFYE9RtNdePiDibvFcQpFuKNF9QIRBkzSWTwpLqlQirlWnLHZCrgpOJEwcrjHz6wbM6kgZVMb5C3BosOVhrXcaWEaoiH7lhYzUCkwrKTwje2utdKveulGxT6fdbL/AE16luHZ+gNzjNTU1N8l4QLAkFW4KpRi8iuJSk5YyQZRWPkM82xmvb/IA3LX5mMYYf5NzcJ1LrNxo0PsfxX792PUaL7VWFWxMpbhGG4RCPfX5ZFItF111VeDi8I3C4tcaG4B1fF1OTrAK2ga5Y9vOK3yXRChQNiM6gWZNcYW3QutUopYFLmSDNcCrKK2+ei6WYFLA+lUmN6OpjY8toAZa/HCneoRFXrUsGgn3VW1jYfpq1hSjTIyKVmd4jbrc1Aspp8hKanCVrqGvc4aKpABNTZh2Zr2AMAn1AO4PyA9jCY0P8nQhjMFjWcoTDGEb2P4jr8DNQ9xRr2AiMVOHleQQjcYQj2M1NTU17lATk+TTupODUci5iFXEta+xgNNjI4OM6zdqzyIYfDNVTVU/YnkgrvtlOMtUKzjOE4z6lOS6gZfAtnuQCONoUnjCgjVDXinjnCGuCkT0bFCpYQtbZLasHknihr1OMFcZvFB8hWmwFmoV3As4QJNTjAmoB/MYTDDD/CBuE8YTuO+hY24I3s0b817h9zCYB7CLNRDqYuX7fcZIRNexE1NfjbStk4jGqIvyZ6d0vqL8afTnIlV/kyntAY21mGlTLMdAK664tSCBZqa9te2oV3OM4TjOM1Nexmpqamp9TB//U9RyObKs1CIV64zjLq9211cQFnGcJxmprvUA/hP4kexhMMJh/hAhMJjPHO/YRh1DG/OuH3abgPuvvvRxcspFYMIyQia9tQia/FhNdJRwuy62uzM0eJ/TE+NrFWyn5uzBEyrg9NIbQPdfY/DUPtr21CJrZ4ThOE4ThOMKziZgZArx0BM1Ne4HYWcYRNa/AwGb9tQ9QfnqD8TNahh/h+oW3CYzbh+zDFh9jG/NfYzfsRqL+A996mNktS1FyXLGXcYTXvqETXv0YfbUtrDitBXWy3bspttvy6zZXUzouMCz2V7CjQmpruGHuKuv49TU4zjFAA1CuvdBuAe+oBNTUEIE1Ne2v52hh/gJ1CYW1GPu0MWGGGN7H8Uhhn+w9wQe4PuYZVa1bYmYt3sRuMkI9yJqamv4APbQmtfmRs6n+ahHW+/bU17amvYTU1Ne1h6nHYQaH/aMMMP5lpuNZD2d9QxoYn3GEMb81MPufYTXuPYHuH2VtHDztRWDCMu4V1NTXtqahHX4amv5yOuPepqH8f9m5v2PUc7I7iL/wBswwww/iTCYzajPuDv8Nxx7D7hhjfmgje5moPy/wBjQ+29HGympOPkpcIRuMkImpr21NTUMEI/gH82pr31DFSEajHc1ESfXsdz7jCLuCDv+D/d/wAZhhhh9z1CYTGeOYIBNTevb/W+jB9wwxvY/ivUYwe5ggh/Inv3ERuJxc+KwYRljLNTU1NTU1Nfjs8oI38J7/M/X4u+/atPz1NfxAdw9gfX4amvYxoYT7kzlGaMYDDF9hCPc/Rg9zG9j+TQexhgg9hB7H2b7/ETHvsqYHqGMIfzPsI39R7H8DB/0L/6ysdj+c/iP4DDGjezwww+zQQxPZYfwP4NG9j+P//EACkRAAICAQQCAgICAwEBAAAAAAABAhEQAxIgITFBEzBAUQQiFDJhUnH/2gAIAQMBAT8B4amr6X4G0WmfER0RaSHpqqIae1fW4oelFj0P0S0WhwokicG+yiNUdSJRojqddm6z/UkiD5RltZGSkuWpqel9+0jpmno99m1LwbUdYs3Zs3Z3m8+Rm9scmb6FqG4kkx6aZLQa8EtE+F+Bf18ku3Q4EW/JKO9DhSxF2uUZOJGW7hqatdLjJJL6VCyGgLRQopYs3EpF8WyLxJl8fJWe0bjonppE4NmzZ2Od9IlGkQkhq0eqIvvnGW1nyrGpOi+T0Xt3ckiERRSN1G83F5lbeN/dZci7EqNw+LEW+biamn+hw76HLvs2J+CJGJ7+mUqRKVvkjT/tDs1Y0+EYWR06Iaddsci8WWXw6ztF0SmbuMfJqUJ0bsxr2Sq+soo1dD2iUCmRbbw/P0zlu5xiqJa9eCUrzp6bZDTSOicuubkWfIbrIss3Eniy+HRLs2m36Y6ndGpoqXaJR24bpEe3+B8jzRp6VkI7USlQ5En9F5WX9yJcIxIs1dO/BLolZGNfhwiR6Q5Hlj4RJJ5lhZsv6WIssvCJYWVjU0dw41+HCBFezcbhPhGNkY0eRrEhD8ZRedtlVlEuSwyhWhypEJ7iOEaunuHH8HThY/0jbSJOjdTL74bjcz5XiWIksrzxkRxZFlDTs2srihkluIRrKeNZe/wIxNONIjGiUsUhxG+PZY+8RGLDXP1hEY2jb3iXP2LDkkRkbiR8RJfbE09MtIeoNsjl8LL4LCzLzy9F4UmjeXyWPedTyaciJZK2O7FE2LaV9UICk/Bt/ZsJSRHF4l9CzuxRWKFnbwvh64e86qICxuKW4ltRe4lChx7I6MmrNkuUUWJnyUfJYyP1LKzf0rgsPwReKHxWUjUhatC3MTo7ZVHzbYn+TxjHmvqvkiPJvG0oorh4YniX0Iiaul7RFokyzUl1wXYo/QuU48VxqhM88LOixPhZFjNqaHGs1zRZF2asNrNxZHS3n+Msx4rs64RfBSN6Y/OVmL4Q/R0MbwhlFkZZQusJ0P6k8RNWO5ZjqOJ8+I8r40LhtseHx85iWjUl+sovO08G7F4vov6IxTZKKWExCNXTpj4R41yiXliY1iI+ClWe6L4LMYEsLEiMjcKXebxEkI3G55i8T7RqadcI/RElwWJcEeCsOSRvI6opbiSKxWdpGI5l8YxJIjS4qRd4XBCJXXRJvguKJHnhGWIknwoWGSkkiX7NwkRVZo2kyLIsllSPOUbeD4PwLjuEaqp8I8tosuB0UeBnRLNHgcq7ZtcmS02zT0v/AEUuPs1BESXCJKOFw3Hk8CzXFCZqK0SWYm3rG02m3FFYbxuN2EqzZeH2LD5zR4PlkiOpKT4Ii7GvoWEVccojpHxGpUUR1X4JxNuIkPBsXnDs74SsUP2bTYbUuXVEuiLvh7HhcGka0aZo6f8AWyUeEWXyolFl5hLol5wiOr0PVJrcJUxHxYiRmjcWbjdys3cKwkVRPtCFG0NVl4jwZNbkaX+hJWhrDRZF8txf7NV7SGp+yNSXR2uCzsVm2i3wvPkqsuTJM3YQxYYiSzEnwR4zuGaVezweSSzXG8/NFGpLc7xCTR8v7K6ysvVIyv6d30xZ5JkS83jbhSx5y8x7ESa8EuCwysy00ySHhds09J7RaZPybcSY1bNN1n0SVcr4rPvEhZvFm4s3G7KJZiOXR/8ASr7+nc9x8io+SyWP4+l7ZEnNHs1BzZbFI3G94iTj9ayxElfCsbehjlSHCXkhL9iyxYUqRZd48F8feNveIo2o09KHB9snKiffFGmS6JftfVHMhC4x07Oq7JC/2xqR9o0pddnYtyN3YyPjD7EvocnZG7HHskiMuxdi6IzN/WdR94pm0o2iRpkhxVfWu8SEIeEhI0+iUlRIlJwkfKdsUaRJ0b7PZdno8iXXB8djkxw2ljHFWbqN4iJuJSw5UbxSsWEQNpPU2ko7u19Wm8Swh4irIR7JRTROPZ/wkotC00Vjb0PTRtoWbErRQiQsMihRJRtEoNFM2lYXZdHnEfJqecRxYmRZGaJw3I0v0SjZX0eDzmBOONOkh1IlNrwWWUUIRMefC+nyyOaNSPWGLs09MlHPsmuyiMXlETaJteRVhjqx9c4YkuyJJWURhZGkdVhLEYJolpsjKiXZWd1iwiJLgkLNFGppoo2o0oNeScRrGyz4iOmbCWYm1+j4/wBl0bljavI5P0R7JR4x6YyXg9kfBqr2KbQ5MWvK6FbKpHkjOj5G8PDJ+CN+CI4keKxPU2kO1Y8XjU0rI6bsWNQ8kcRNQlmJF0OaOj3jyiUa7RH9l2PjF9DI9EtTaPU3FdYaIkpvN98LPJSJCbKsqhPDIStk9VRRpXqMj0sKJLlONlHvETUyhEYomrXR8eGX0T8EJV0XRKTL66I+CsRLIk/BtafR4HqJEpSkab/eHInr34LFqNEZbuDkWQPRt6NtYo1bi6IRc2acNo3h6vrmyUu+E5ZiIi7R4xFdj8i8mpJV2bkbjdhdCsVCrHrDZZJdm1qJFdY1rrEbNxpW30eMSJM9GlI3I9GpKkLtCRLRTfZHQSdoR7GaulLyjQ1XdPlqTwszykLEfJIi6eH5Gk32Ol4I3IlCheCMbK6GKTN1kpUfIhy/tndeXGyX8dej4maehb7IxUSXTPQyUexrog6ZKRHXZOTkafggV3mMRoo2rya09iP8k0XaxKQ2bmbiOoJ2TzFixEmRXY+hsl5IxbI6Uokk2bCPRKSo8soiaohIrF8PAyMf0T7Q/JGPRPTaJeSyX7IytG1HkS6IYsiLD6x/Kl6xo/6jlQ2TyhdEnfCMzcJjLol2SXRstkZRSolKzbZGkjommyOn0SVCl2asRERVRJZ028+xDjZKNEJFmrHslAo+MjBkdJG08HnCLJarN14149ldkdRKJKdlknmJJ8kyIrOmeCR2/B4O+O41GRRIj5xCRuJViMawiUfYn1jbZKKFIl28ezayIsexHrMvOaXs1afjLP8Ap5PjsfX0QIMkdsSH/VCSXZJ3yaJdIUyIo7iMNuVHvMYm1NG5oS6JTo8kvOe12PVZpt2RxtTN3D2KJJ0amrfFCg0zwiTES5RIldF4fOPYySTVEobSPZpw2xLTJIoroiiiOHmL6JO3nbZq6SSFSIeB4S4RXZJdGrL1hMs3FmmUSkMRLkiLFK0SLy+EIbiKSJ4ohp9j/R1fRIRtPBEXk9El3m+uGmav9lRRp+Mt4ilRNF0S1q8EuxnRIQjTPBJ39UWRjZJVwllsjNRR8lkiET4iMaJWyqxGJtslpFOON1rEF2T4yk0uiE+yGmpdnjhQqo1NVeiUiUhdnxtm2sIRGVEp39kdRo3N8JC4Rxt6Is9kpY+PobpEX0IlSRqiZZEnHvG1jPWH1IhaXFyJa0rIdko2j43ZHTSNw75UP6VhPhIiV1lEcRxNG0bPJDEu0amY494ZHvC0/wC1lZscsPS3GxxGmyMaIxcj46JR6Hw042avX2rgiXUcoiR7Q3RvJM3nki0KZ5Q5KLJf2ZtPAsSRGZ0xKiiqw5cFRZKWFDuysPsemiSRtNpGlEk7f2pEk4+cIj0SlfBCmOZuHJsjCzabSNI+VGrK2RJDNOHQ+mMo7XgjqF2USNpQ45iiQ7ZHOpJxHJvDlGhs+R1X0xg2Sg1w0dTb0a/9uyMhP6kyMkliZZGXfZLyRJCI/wDDVVcJI7QtQ3G8+Q34Q/AuyWm/QoyNrN3ZqS+yUawpNEtRy4aMkn2Tkp9IfTE++SXHd0R1ETk8oQ1hTaJajl5+msKRHvhKaiS1m/Bu+z4iSslGuSNOcEjWh7WO0x2KS47TYPrEVbJxpZReKKJRwyy+CjwjOjdizUleaL+mEcyjY1y0avs1YqiS7F30xdY3NCniKI41NPcXt6ZpTo1JtrisvDzRtYo1iUfZts+MlFojIUiTH9kIcZxvnC5uh/x36JR2ilirFEUjeLULxKCkRfrG02m02lYop3lRFAoWmbcSFick+sRJy+yGn++cock6I6spf1NXSTJ6bRGWNxvPJ2R1K8nzkdVM2o2m3NFCRsJRPi7s2CjlEhsUlZ8iHJvO4v69PS9v6Z6dlcbNKXdyPVsehfg2tY6EWXeFFkXJC1/2fOhSTwsI1NVRPlk2Q7XDeh6pLUY2+Fl/Zp6Xt4f0yhZXKM+xay20j4ko37PguO4+Fj02haUmrNrQizdikJm4+Q+QeodzkJJHyHyDkkiWobzebjd96VmnpV5+2UbHGuSFqNGn/I9Pwb1KVmrtdIuMImpJPlZuNxuNwnQpYcjcX+FDTciGmo/e42SjRX0WW/tgSdfiaejfkSS/ClAr9lc2q+yKs/1RuvF/gRg5ENJL8XUw+KJePsh4NT8KPkj4+z//xAAqEQACAgICAgICAgIDAQEAAAAAAQIRAxASISAxE0EiMARRMkAUQmFxUv/aAAgBAgEBPwHwx4/t/wCg5jzIecl/IObZhk4uz+TLm7OJ8dnxnA+M+M+M+M+M4HGRGU0fO/shnixTtEZdUzBmjHo5R9E07o7izDkU/wAWTwfl+I48WUpog2umTj9+TXJEo14PUMf2/wB7mTzJGTM2ujtnAWM4HEcLPjKK3RxKOKOKKRxRwQ8RFSRGckLMn7I/yOLH/I/7DfJdEPxV/ZHO/RlivT9kZfExTt9lklT8mlIlGvDHj+34xcm/0WSyJGT+SfJJnFsWM4nEUfLk70vBbukKRY2LvXZGTohkUXZz+V0fG49sjNt9mSL9idOz07JrrzatHF6hC/OOZOfHycqMk2U2+z4z4ziUVqLVdjOHVi0oWOFDF14XvI0kRkhNa9CfhiyUyOXqpHDq4kZuP+RKr6Jyv0e4/oshG2JV5My/jk6MM+UbfhPIkfJyZPJfSFEr9He+Q+ziV5InBSPir0fGyMaJC0tNGPP9SI5P6LRJJLS/x/TGPHyfROU2+iH8e/8AIjFLebOoolkeQhFkY/p4nHfHdHHV6jL+zmc0ci9xoYt5EY8zg6foX5DEm3SJOl/oLGltsy56JXNkIkV4x/0a39eDIsWosl7JRMORx6ZQqS6Jyt/6TdGSdjXJnE9C8GKS2pW/0IfihDQkUVpkdPbGY/5Dj0zlff8ApMnO+iaS6IxOJR9b5GTJYpkXqhsXkvKPlLSLol2IRIkNGLNxdCafa/0cuVIxf/pnt2RRxtFdEdcbOB8aPhXgxeNa+tVqiRfRGqOSOWpH1qTI2JblElE+M/jS+mev35J0Saky76Etd+VlrxQ9Rl+lj9jl0fRHT39i8L1RTQ8xCT+/2ylRkyX0RgKOn50V+hkfXjHVa4nArvb09I+tMkyOmXFIlD8bMWR/ZLO+f/h/yVfZCSkrX6GzJk7oUV7Y8lHNshB7r9KH48jlqXWlrk9Xqt/Z9jELwnHsSeqJRO3jpEebdEocfZyjR/Gn9DzRTo+SPlkkcUNJnxoUEvC/1vV+FkvCiQtvS9ko96sj4V4MxSp9k4pPoyRTRkyKDME+RKPFHfjKXgvJD/S9yXgtURjp+D0j2MoiL9DMeX/rI/lYp/8AUxYpSlTPj4ej5LVeDdDyeNfp5d+Vj9as9lF0dFllnI5PxZJES3YpXr0chPxvTROJjlzQsSszY+h/j7Oe5u/GXQpPxW5M4s+tcu6HLzl/YnpLTEWJFbZ7KGR1bFEWr29LskY5cJiKsyYIyR/w3qb8qPXhYnuRyW4+934yOLRBP72yhLSZxHEorVFD0t2WSkyLe/ZliYM1qmR8Mnjf6I7YtPxUdqrK8etSyEdMrUonEcXRQtUSI64lLVD6JK0VxdmLLb8J/pXgmSI+DXh6PlSItsViL33rkPsjj1F+DYmS70hacRKhavSGIVX2Qgl4TH4SInrwkivNs+9OVMllv0L2e14WNkSRXhWutNF+EVv0Ru9V34UZD+PK414T1fhyGXqErGd77Io464jVknSIxlJ2cSMV5xJaS196kRen4ULouyXQhF9+TiQ/BkZJ7kSfer3xeqs4EY0cTorX3trbhY1XRRGPg9MiPsnk4sxZXJ7sZ6FL9EhaXUu9slkPlFOUiRilTOWpMm7lYps6ItfZa8I19jn/AEORyI29Pw7IfkSVEtL9P8iP2RlxIStaT1L9CkjitMyR7I3W3i7FiEqRODF0fM9TOLEhROJXhy3RYtctSZGVkdSlpavT8c8fxGY3QnpSOJJC0t0SgOf0jk17OZ0/B6Qv8aK7OK171XgpXtRQjjuI9y7RBVuSIlb+/L+Qn9EMf9nFIT2peEfCRLJQpOXsjTIumch+/GDsl/lte/GxRW1u9Ievvzslv60n4Po+6IxoQxeEfCQ4WT6I29fJRLIY31Zy3VbYn2J/os5Fl/oss5fpQ9P2KHerrS8FplvkSRHsnjWoxJRIwbG+qMcjqvCkMfsi6/U/QtryvV6kSjIhkvp7WmWU5Moqh9eNa+ibIL8rJiiLGSx0xVqilxpnAsvxySpkI2VXXhXlLcdS09SPloi+xC9lGTH9oim+yTpCyCysj2PUeiUtLyst2RhbJroi6Lobs4nDvdX0UI4s4s4slJGQx+hyb9i8V4ULrUNPfLuhsyK30QUmyI5NM+U7ZEyVR6PoXSF7PQ5ed6kmSToqRCLrslRKRF6ZXeu9IYtSJkZGLCpo/wAenq/BbRNfeo+xd+EnROXRGVMxytWezj2fGvCUSFD3Ryp+H2MRknxIfzFdM+ZEckWOSPZxLojkT3LslGoEvZHfAlElFMeNow5OLM6+/wBT7VCI+yyQpd6yW30K4rsjjv2Ril4SjZREo+MpiXjHwfSM86Ry7MOR6hIWpEHTEfeo9xOO4nEZMUyr9HJ1T3xdC3Ze5exEX0SJOpCZKVMl+QvYjkWieVwf/hj/AJEZElZHrbdHKxOx6kQ2ycjNLlIjCyKS9EWemRmWW9Rb2pcX0Sle8a3kI5Ir2j5f6KvcW30cFXZOkRne+RyJdoxsQnS7MvsxS+jh2KAoJskuKL7704pmPAou/BSJK0VJ9HFJCZXllkRw83bJwXos+SSFlMeRM5lnJDZjdorcjHRHeQ42fGzs9rUZUQny6ZKFixUcT1tC6kIlbJURgl6I+9IkKCR72pDYjiLos/8ApOVPoi3pi719k4WxS4mSYlyZBEyJLIz52fJIjmZiz0crW5GPciTHJ2Y//TmekRZXZj9kqqzkRpnFX2SVPo5akRMrr0R/9Iwvs7erbO3qiXgtz6ORKVmFkmct5G0cujJl/oVS9i6Z3RxJOvCJCJji0haZjjufokjjTLvs+ycuhVRL0RyP/qXL7OTFIX9mRNuy1VMb1E4pskiKWpIU1uTLHIUy/sjOyxDf0SVIiRT+hmR/0RdqxsyTPm+iTEihybVHMbshGyWPWOPZhxV2XtshrkSkiR7H6EThaI9Ev8TFFp2SYuziRZKf9HDuziiMUxxrTR3euJwrXbPjHHoeJnGkTtrohbVF0xDokk1RH8ZCfQ5pkiH+KJE6MkkQsj2cCSJGKFkIGRHHswYj/wAHBJdlnLUPW8kST030YycqRF2UvRlk4ojNtdilRbZ2UehCH2idIczj9+fFMXRKaTpkJn0Tn2QyJjH7M8OrRDLSo+R2L8ui6Rkml7M2RydI+Ox+6Rjx9DJ2VZjVEP8AEyGPG2yMaRij+XZkdva7IqlqtZcN+jgcTG/okrINIg+zPG0RhSOJzpHPs5a5URlZZmXVkJsTO0yLHqOrH6Or7E6Eycej12Yu0Sx2UyX8b7if8aRHEomeRJufZxopHpkcjo5N6XTI9i9Dx8mY8agtQX42PXGyEa8pRJxOjtHsgUl7Ks6OJXgiJLsSSZaQpqTK1yI6kRf0OH5HxH+LojZKPRDpCJdI+VFkpGeV9Cj1aJS1L2Ih6L1ji2Y8X9laxRTfZH1RKOo7XjkJoh37OkNkbkxu3R15RJTpEMqZ3Y0miMUn1vj3qzl0KTTKTJzfoUbPRH1qJLtDh2enRIzUiGSkKiTPsRHqJVsjibMeOMeitouhyTWooZHyyIybbI35yZEl6FBxYu0ciVrsxS/vblRZ9CEVqce6IqlW26Iu2OjJKjIWOR2V2KI/VEOmQh0ehSZ7OIoktKIhkV5MnGxqiNlCW+JWpTok22Yz6ES/FWJ/ZKTa7Ios5q6JIkVpP8d134TuiCGzKTkMUbZKKRCBFUJcmRxf2fVGLH9vUdy1FfqkjJNRFK/BHpDlZGJKEpM+OiBllRHOSyJkaH3qU/oi+z5Dp6o6J9Loj62tM9EpE8lsl3rkIxohgb9igl6JSotojn/Gi7ZHbVihW1+meJM4qPhEnpEh6lLskq1jiXR8jFG2fZL/AMLbdGEkhEmRlrkiMr3k6ZmyW+j2cWz4mQ/jEP48USk4sjk5IRO7Pfs4nQtx1Yl+uUbKK1FE32J9i00M9s4nohkJTRGmWkS0nTMWmSEfRXZGNEutTpol2KAo16IYmLGJGWCZCNHY+yc1AWe0Qyd+CMkqMXf7ZR0kS6RIh7Fpky6YnaJpkVbPjH+Pobdjk0Tl+JGLkR/FHIUbH0yyEqJwvtHNxHOyX8hr0fNKfQl9EcdF0ciymOLIwZxJSdUSONkI0hEUzo5WO3IjGl+7jZ6JMkmyMa0nqQ8ZGI42qI41ElIbOXdnbKMUaRIgiJlk2z2rInJlp+yWH+jJjcWY79Ix1E5obT1HUiKI0vZIdM9GFKXspaqViRHGk7809SyJEcil4SjZj6ZlxpqyWOkUV4Pw4jTvsb7McuyicXXRiuuxvsiM7XsxP6FuD6GlP2fAl6OLFE4FMx5Pp6Q+iMv7JSROSK5KzFErdfoUrESgn7I41H14SF0RfJEoUiUfDpEpeLi+RLEzHBLSdEheyMjkcUxY0h7Qi716LKHEUzkWMUXL0RwJf5CiJUNi7/RdHyCdCE/JpmOQ/R1JFfTJY2tOytcjmRjyV6nKkQf5C1I465EZ0QnQyL6OIluxy1YuycC2iMz2Y1W2ziV+ictxlWr8ZESMh9dok718cZIlhaZ61xOJjnxOHLsnBfZGK5WvFoaER1E61ZyKbPjIr6JOhZCMlInAoxEd1+mc/GMvN9HIjKyUP60m0SnaJQsWM47jNolBPs49larUmWIVcStOR7OhzRZZH2ZnQpEeS7PZJGKGl+qeT+vOM/70vHil2RZHJ/ZKKY4tHBs+JnGjoljUvQsBPC0cmjmc/BxTPiFGmKPRy6o4nFF9nVkqZzotskpcekfFKXsjjUUUcT4xR/XkzfSF+iMyy/GS66P/AILJRyTKEmS/9HEjFnoc0S4yH/H/AKP+PIaaHIs5ESGJyPjjRkdM+Q5DZ2xY2QxL7FS9ItlFHE4/rbMuf6QheC29RnQmJ+NHHs5dnyU6PkPkQ/5EExZU/RKVnE+MVocpDs4nA+NkYM/xiSnJjgz42KLfRHCfCfEcDiiiiv2Sko+zLn5ej7ER8F5RlQnZfiyhwPS1kxOTMMHH35cTgj40fGfGSjZKBRHGcEV4V+7JmUEZMzmyJ9iF4Lb8IyoUrLoT/ZX6cnSMcbF/pNmX+RXolJvURkReb2txnpS84zUvX6q1KVFObFGtV/oTyqJPM5MlpkdRF4rxXhj0vFmP3+zL7MXr/Sn6MnvT0yOoi8P/xABAEAABAwIEBAQEBQMCBQQDAQABAAIRITEDEBJBICJRYRMwMnFAQoGRBCNSYqFQscEzchSC0eHxQ1NgkiRj8KL/2gAIAQEABj8C8kGzeq0sFP6G4jamdN1SxUBc0nDP8LDDTR/FHHfyqOK/1CuYAqHAhfl4gVkZsE+PS5YmHs4pzBujhOMOWI14gEITaUA/mZF0HXI2TH4rIa3bqqU9lBVfujseqgOtsgGnmAGpRlK1+tqlqgo4GN/5XhO9B9J8yHWWplvOk+kKG0HxFPI1bKtkeieW7p7Z42gmQ23bOc5+FovWvzmIEXCBBqFywV+YId1Wm4FFOFQoseadF4hshhYLCSvzsaHHZeHimQbHLlWo+pH8T8kWUFpagHWO6g2WnZPwhY1VXBamesWK/eFof6x5kFam28yvpQDaAfHRkZUfINlTgvnKnOfhK5F5U9eKhheoqjzCrBCgjQ5QHBS9v1UB5LE8OpITi2T/AIX4TDHq1TkQ+iMf6OHv3Xg2CkOXhY1kOaWGxVF4uLyzupkz1lAEzgoY7LH1JuOzZAjfzIK1Nt5Q/T1Qa2w+OaN0HXFl0Uz5UZxxGDIVfI9KrRUytkAbKihSAquCjhk5UUB5VSSOhUGJK5qP2Kb1i6GJ83VacWndQIL3crVSvVcwUst0TQ/0rUPSNlpdsoO60hPnZMDtwsTAfsn4J2t5pBUj0+RGy0t8hgbWVb4QnojlHk04IHHPkdlAVFPDqCMqu6hppwdVZS8cgQp9l+XdEdFKBIDYUyo/FVjdCHx7qCap3iN5NimYjDrDVBvlyiXOoAmn/wBbqnh/Rfh3neBnDbboBu2yw8ZvsVhYrRvUqfNhwX7eINaEGt8kkeltPhBp82fLhcy2UZ1UmyhvBThk2Ui0+VJCpRUqFCE2U4WIpwzIWl9CU0NhDEbsodyvTsVxnCw6MyPiXNgtB9YCg+obZ4T2U1myI6hPwz6hRNm4p50FEcAa25UfMbnyiRvlVU86cqeTB4Q/CeaDVCHVHUuXybqApOVQqqmdFzKnDTaqd72QwX/6kVVPKhSLqFSiqgRQhDwiQUML8Q2p3Tzht53CF4L7FTIgI/isYX9AOwWrD5XrWdkCMsIP9LTlit2', 'Jl.Gordah Kel.Jayawaras', '', 1, 1655796643, 1655796643);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT 0,
  `date_created` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `username`, `image`, `password`, `id_type`, `active`, `date_created`) VALUES
(1, 'neko', 'NekoMorie', 'cat-4977436_1920.jpg', '$2y$10$G7Vh.u1a6.lnxtijzRT5nevEbxKXvUQn/ozbR.G9RUp/cUBr3oTd2', 1, 1, 1638277039),
(2, 'hanan', 'vinan', 'default.jpg', '$2y$10$bVDJpnFT83OYjdnqrP0SFOGHuXcVN7kHy73FdLaRGo2egCCLKXolS', 2, 1, 1638322642),
(5, 'Admin', 'admin', 'default.jpg', '$2y$10$Ti8Mjrj6iQSAiWSP03Ki7.B6LFtrvzzK.4.V.m2jWtBd7Txzxdm3m', 1, 1, 1644381587),
(6, 'Rakandiya', 'rakan', 'default.jpg', '$2y$10$.j5j6KTNP5IovB8Pwddd7uSLBm.0YalhmrmZhD3kbKFLoUFoa.xkC', 1, 1, 1644645560),
(10, 'Agus Kusnadi', 'agus', 'default.jpg', '$2y$10$XhsdO/UqY0QJ5HOr.9eDzeSWQWiMTmqh1ROER4n4LiKJpDcqq9X7S', 2, 1, 1651119734),
(9, 'agung', 'agung', 'default.jpg', '$2y$10$EH6z6Eb2M07B/Z7Nj6Yt2uSnicsMUjM/88A/1PQtJwpaUcBuR3QK6', 2, 1, 1651117955),
(11, 'admin1', 'admin1', 'default.jpg', '$2y$10$9OaPfv/IXMi7ht9EOkSwU.YtIHa37VyboZaot7pGGUvfw6dafLAXG', 1, 1, 1659414524),
(12, 'AGUS KUSNADI, SE', 'Jayawaras', 'default.jpg', '$2y$10$Ti8Mjrj6iQSAiWSP03Ki7.B6LFtrvzzK.4.V.m2jWtBd7Txzxdm3m', 1, 1, 1669098228);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `id_type` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `id_type`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'lurah');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `date_modify` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `penulis`, `gambar`, `konten`, `date_created`, `date_modify`) VALUES
(1, 'Karacak Valley', 'neko', 'karacak-valley-653x393.jpg', '<p style=\"margin-top: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif;color:black;mso-color-alt:windowtext;\r\nletter-spacing:.4pt\">Bagi Moms dan keluarga yang&nbsp;<a href=\"https://www.orami.co.id/magazine/tempat-camping-di-bandung/\"><span style=\"color: black;\">suka berkemah</span></a>&nbsp;atau&nbsp;<i>camping</i>, Karacak Valley dapat menjadi lokasi\r\npilihan yang menarik. Berkonsep perbukitan dan memiliki cuaca yang sejuk,\r\nlokasi ini akan cocok untuk bermalam di tenda.</span><span style=\"font-family:\r\n&quot;Open Sans&quot;,sans-serif;letter-spacing:.4pt\"><o:p></o:p></span></p><p style=\"margin-top: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n</p><p style=\"margin-top: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif;color:black;mso-color-alt:\r\nwindowtext;letter-spacing:.4pt\">Saat malam, terdapat pemandangan kota yang luar\r\nbiasa yang bisa dinikmati sambil makan malam di dekat tenda. Moms juga dapat\r\nmelihat indahnya matahari terbit atau terbenam di lahan yang berlokasi di Jl\r\nKaracak Valley Margawati, Sukanegla, Garut ini.</span><span style=\"font-family:\r\n&quot;Open Sans&quot;,sans-serif;letter-spacing:.4pt\"><o:p></o:p></span></p>', 1644499498, 1644499746),
(7, '1232156', 'neko', 'Screenshot_(1).png', '<p style=\"margin-top: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif;color:black;mso-color-alt:windowtext;', 1645299824, 1645299824);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_doc`
--
ALTER TABLE `kategori_doc`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kategori_sarana`
--
ALTER TABLE `kategori_sarana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lembaga_desa`
--
ALTER TABLE `lembaga_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perangkat_desa`
--
ALTER TABLE `perangkat_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarana`
--
ALTER TABLE `sarana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usaha`
--
ALTER TABLE `usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kategori_doc`
--
ALTER TABLE `kategori_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_sarana`
--
ALTER TABLE `kategori_sarana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `lembaga_desa`
--
ALTER TABLE `lembaga_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT for table `penghargaan`
--
ALTER TABLE `penghargaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `perangkat_desa`
--
ALTER TABLE `perangkat_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sarana`
--
ALTER TABLE `sarana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usaha`
--
ALTER TABLE `usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
