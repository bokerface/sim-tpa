-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2020 at 04:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lockeronline`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_users`
--

CREATE TABLE `ci_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_verify` tinyint(4) NOT NULL DEFAULT 0,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL,
  `password_reset_code` varchar(255) NOT NULL,
  `last_ip` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_prodi` int(4) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_users`
--

INSERT INTO `ci_users` (`id`, `username`, `firstname`, `jenis_kelamin`, `email`, `mobile_no`, `password`, `role`, `is_active`, `is_verify`, `is_admin`, `token`, `password_reset_code`, `last_ip`, `created_at`, `updated_at`, `id_prodi`, `photo`) VALUES
(3, 'admin', 'Admin Pasca', 'Laki-laki', 'admin@pascasarjana.umy.ac.id', '085625634563', '$2y$10$y37n4wM7DNczJq63acils.3HOS56kUdHdpSxFH0DnK4h6FDSL5kVq', 1, 0, 1, 1, '', '', '', '2017-09-29 10:09:44', '2020-01-28 00:00:00', 0, './uploads/fotoProfil/'),
(72, 'fitriarofiati', 'Fitri Arofiati, S.Kep., Ns., M', '', 'fitriarofiati@umy.ac.id', '0813', '$2y$10$G245Ti2.f4UgnxBVvdtJjeRsiPrPitthj84lwPUwFvsnWB.koWkm.', 1, 1, 1, 4, '', '', '', '2020-01-16 00:00:00', '2020-01-21 00:00:00', 2, './uploads/fotoProfil/bufitri.png'),
(69, 'erna', 'Erna Rochmawati, S.Kp., MNSc.,', '', 'erna.rochmawati@umy.ac.id', '081354519149', '', 1, 0, 1, 3, '', '', '', '2020-01-15 00:00:00', '2020-01-16 00:00:00', 0, './uploads/fotoProfil/buerna.png'),
(73, 'nurchayati', 'Nur Chayati, S.Kep., Ns., M.Ke', '', 'nurchayati@umy.ac.id', '0812', '$2y$10$LWJSL3JB3fvQKbzgTsWcsejnPr8Qow5LuarlAbpnThZvS8zQq7ttO', 1, 1, 1, 4, '', '', '', '2020-01-16 00:00:00', '2020-01-16 00:00:00', 2, ''),
(74, 'titihhuriah', 'Dr. Titih Huriah, S.Kep., Ns.,', '', 'titihhuriah@umy.ac.id', '081', '$2y$10$9eb6lQ6dEGusfbSBjxVxauKDJN/9dntSrk2YXqw4hyWzSr6QeUfu6', 1, 1, 1, 4, '', '', '', '2020-01-16 00:00:00', '2020-01-16 00:00:00', 2, ''),
(75, 'imanpermana', 'dr. Iman Permana, M.Kes., Ph.D', '', 'imanpermana@umy.ac.id', '081', '$2y$10$fPjkvvXI9r5hL3NhsIvyD.j.bQxLtYSVj4NxfR44YdgkyLCrjiBdq', 1, 1, 1, 4, '', '', '', '2020-01-16 00:00:00', '2020-01-21 00:00:00', 2, './uploads/fotoProfil/'),
(76, 'mkep', 'TU Prodi M Kep', '', 'mkep@umy.ac.id', '081', '$2y$10$GYiFq21AGvBM.FhYsZfHFefOKVEdd9gHrVTdkxBajuqOBLZJ5CtKO', 1, 1, 1, 2, '', '', '', '2020-01-16 00:00:00', '2020-01-28 00:00:00', 2, './uploads/fotoProfil/'),
(77, 'rizalyaya', 'Rizal Yaya, SE., Akt., M.Sc., Ph.D', '', 'rizalyaya@umy.ac.id', '081', '$2y$10$3K6g532YB7O/VGJTvi2eOezWwET0Qi8Ba0zTbBNWncEI0NUiY5ahO', 1, 1, 1, 4, '', '', '', '2020-01-16 00:00:00', '2020-01-16 00:00:00', 1, './uploads/fotoProfil/pak-rizal-300x400-150x150.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_user_groups`
--

CREATE TABLE `ci_user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coba`
--

CREATE TABLE `coba` (
  `id_coba` int(10) NOT NULL,
  `isi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coba`
--

INSERT INTO `coba` (`id_coba`, `isi`) VALUES
(34, 'sss'),
(35, 'ddd'),
(36, 'fff'),
(37, 'ggg');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_apt`
--

CREATE TABLE `dokumen_apt` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `tanggal_upload` datetime NOT NULL DEFAULT current_timestamp(),
  `id_prodi` int(5) DEFAULT NULL,
  `id_kategori_dokumen` varchar(30) DEFAULT NULL,
  `tahun` int(4) NOT NULL,
  `internasional` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumen_apt`
--

INSERT INTO `dokumen_apt` (`id`, `nama_dokumen`, `deskripsi`, `file`, `tanggal_upload`, `id_prodi`, `id_kategori_dokumen`, `tahun`, `internasional`) VALUES
(11, 'asdfghjk', 'ksdksdv', './uploads/dokumen/AttachedImage.docx', '2020-02-24 14:40:28', 2, '7', 2018, NULL),
(12, 'slosdvo', 'ksndcsndv', './uploads/dokumen/SIM_BORANG_BPM_UMY.docx', '2020-02-24 14:42:09', 2, '7', 2020, NULL),
(13, 'asldoas', 'slkdnvosd', './uploads/dokumen/SIM_BORANG_BPM_UMY2.docx', '2020-02-24 15:22:54', 0, '8', 2016, NULL),
(15, 'asdfaf;l;s;lk;sdksk//', 'ldknldvn', './uploads/dokumen/SIM_BORANG_BPM_UMY4.docx', '2020-02-25 16:04:58', 0, '8', 2020, NULL),
(16, 'hjklnl', 'ldknldvn', './uploads/dokumen/SIM_BORANG_BPM_UMY5.docx', '2020-02-25 16:05:21', 0, '8', 2020, NULL),
(21, 'kldnl', 'LKDMCLKDSMV', './uploads/dokumen/SIM_BORANG_BPM_UMY10.docx', '2020-02-25 16:28:59', 0, '8', 2020, NULL),
(22, 'lain1', 'lain lain', './uploads/dokumen/SIM_BORANG_BPM_UMY11.docx', '2020-02-25 17:07:50', 0, '14', 2019, NULL),
(23, 'asdfghjk', 'ksdksdv', './uploads/dokumen/AttachedImage.docx', '2020-02-24 14:40:28', 2, '7', 2018, NULL),
(26, 'dokumen1', 'sfsfsee', './uploads/dokumen/SIM_BORANG_BPM_UMY14.docx', '2020-02-28 15:11:50', 6, '7', 2222, NULL),
(27, 'sjffjp', 'lsmldsd\r\nsdsdf\r\nsdfsd', './uploads/dokumen/SIM_BORANG_BPM_UMY15.docx', '2020-02-28 15:31:23', 1, '15', 2020, NULL),
(29, 'evaluasi diri', 'evaluasi diri', './uploads/dokumen/cedis.pdf', '2020-03-16 12:53:53', 0, '7', 2019, NULL),
(30, 'nama dokumen', 'punya HI', './uploads/dokumen/cedis1.pdf', '2020-03-16 13:02:24', 10, '7', 2019, NULL),
(41, 'LKPT', 'dokumen lkpt', './uploads/dokumen/sample14.pdf', '2020-03-23 08:52:06', 0, '16', 2222, NULL),
(42, 'Lampiran LKPT', 'dokumen Lampiran LKPT', './uploads/dokumen/sample15.pdf', '2020-03-23 08:52:34', 0, '17', 2222, NULL),
(44, 'teknik sipil LKPT', 'dokumen teknik sipil LKPT`', './uploads/dokumen/sample16.pdf', '2020-03-23 08:54:10', 3, '16', 2222, NULL),
(45, 'Teknik sipil lampiran LKPT', 'dokumen Teknik sipil lampiran LKPT', './uploads/dokumen/sample17.pdf', '2020-03-23 08:55:05', 3, '17', 2222, NULL),
(46, 'evaluasi diri', 'dokumen evaluasi diri', './uploads/dokumen/sample18.pdf', '2020-03-23 08:55:43', 3, '7', 2222, NULL),
(47, 'teknik sipil hasil', 'dokumen teknik sipil hasil', './uploads/dokumen/sample19.pdf', '2020-03-23 08:56:30', 3, '15', 2022, NULL),
(48, 'teknik sipil lain lain', 'dokumen teknik sipil lain lain', './uploads/dokumen/sample20.pdf', '2020-03-23 08:57:12', 3, '14', 2222, NULL),
(49, 'sertifikasi internasional Lain', 'dokumen sertifikasi internasional Lain', './uploads/dokumen/sample21.pdf', '2020-03-23 08:58:03', 0, '18', 2222, 'ai'),
(51, 'SI lain', 'dokumen SI lain', './uploads/dokumen/sample23.pdf', '2020-03-23 09:00:29', 0, '18', 2222, 'si'),
(52, 'SI hasil', 'dokumen SI hasil', './uploads/dokumen/', '2020-03-23 09:01:02', 0, '19', 2222, 'si'),
(53, 'SI instrumen', 'dokumen SI instrumen', './uploads/dokumen/sample24.pdf', '2020-03-23 09:01:31', 0, '20', 2222, 'si'),
(56, 'APT hasil', 'dokumen apt hasil', './uploads/dokumen/sample27.pdf', '2020-03-23 09:06:40', 0, '15', 2222, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL,
  `singkatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama_fakultas`, `singkatan`) VALUES
(1, 'Teknik ', 'ft'),
(2, 'Pertanian', 'fp'),
(3, 'Ekonomi dan Bisnis', 'feb'),
(4, 'Ilmu Sosial dan Ilmu Politik', 'fisipol'),
(5, 'Hukum', 'fh'),
(6, 'Agama Islam', 'fai'),
(7, 'Pendidikan Bahasa', 'fpb'),
(8, 'Vokasi', 'vokasi'),
(9, 'Kedokteran dan Ilmu Kesehatan', 'fkik'),
(10, 'pascasarjana', 'pps');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_dokumen`
--

CREATE TABLE `kategori_dokumen` (
  `id` int(11) NOT NULL,
  `kategori_dokumen` varchar(100) NOT NULL,
  `singkatan` varchar(10) NOT NULL,
  `sort` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_dokumen`
--

INSERT INTO `kategori_dokumen` (`id`, `kategori_dokumen`, `singkatan`, `sort`) VALUES
(7, 'Evaluasi Diri', 'evaluasi', 3),
(14, 'Lain-lain', 'lain', 5),
(15, 'Hasil', 'hsl', 4),
(16, 'LKPT', 'lkpt', 1),
(17, 'Lampiran LKPT', 'llkpt', 2),
(18, 'Dokumen Lain ', 'dlinter', 6),
(19, 'Hasil Internasional', 'hinter', 7),
(20, 'Intsrumen', 'iinter', 8);

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(10) NOT NULL,
  `judul_penelitian` varchar(200) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tgl_pelaksanaan` date NOT NULL,
  `id_dosen` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `date` date NOT NULL,
  `deskripsi` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_revisi` varchar(255) NOT NULL,
  `file_akhir` varchar(255) NOT NULL,
  `id_checklist_penilaian` varchar(50) NOT NULL,
  `komentar_reviewer` text NOT NULL,
  `hasil_penilaian` int(2) NOT NULL,
  `id_prodi` int(3) NOT NULL,
  `id_pengupload` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `judul_penelitian`, `lokasi`, `tgl_pelaksanaan`, `id_dosen`, `status`, `date`, `deskripsi`, `file`, `file_revisi`, `file_akhir`, `id_checklist_penilaian`, `komentar_reviewer`, `hasil_penilaian`, `id_prodi`, `id_pengupload`) VALUES
(34, 'Hubungan Antara Dukungan Keluarga dengan Pengelolaan Diri (Self Care) pada Pasien Diabetes Mellitus Tipe 2 di RSUD MM. Dunda Limboto Kab. Gorontalo', 'RSUD MM Dunda Limboto Gorontalo', '0000-00-00', 72, 2, '2020-01-16', 'Hubungan Antara Dukungan Keluarga dengan Pengelolaan Diri (Self Care) pada Pasien Diabetes Mellitus Tipe 2 di RSUD MM. Dunda Limboto Kab. Gorontalo Hubungan Antara Dukungan Keluarga dengan Pengelolaan Diri (Self Care) pada Pasien Diabetes Mellitus Tipe 2 di RSUD MM. Dunda Limboto Kab. Gorontalo', './uploads/penelitian/HUBUNGAN_ANTARA_DUKUNGAN_KELUARGA_DENGAN_PENGELOLAAN_DIRI.docx', '', '', '1', '', 1, 2, 3),
(35, 'Pengalaman Kesiapsiagaan Perawatan dalam Penatalaksanaan Aspek Psikologis Akibat Gempa Bumi di Rumah Sakit Jiwa Mutiara Sukma Provinsi Nusa Tenggara Barat', 'Rumah Sakit Jiwa Mutiara Sukma NTB', '0000-00-00', 73, 0, '2020-01-16', 'Pengalaman Kesiapsiagaan Perawatan dalam Penatalaksanaan Aspek Psikologis Akibat Gempa Bumi di Rumah Sakit Jiwa Mutiara Sukma Provinsi Nusa Tenggara Barat Pengalaman Kesiapsiagaan Perawatan dalam Penatalaksanaan Aspek Psikologis Akibat Gempa Bumi di Rumah Sakit Jiwa Mutiara Sukma Provinsi Nusa Tenggara Barat', './uploads/penelitian/Bibliography.docx', '', '', '0', '', 0, 2, 76),
(36, 'Analisis Perbandingan Kemampuan Kognitif Pada Materi Dokumentasi Keperawatan Berbasis E-Learning dan Konvensional di Program Studi Keperawatan Untan Pontianak', 'Untan Pontianak', '0000-00-00', 74, 2, '2020-01-16', 'Analisis Perbandingan Kemampuan Kognitif Pada Materi Dokumentasi Keperawatan Berbasis E-Learning dan Konvensional di Program Studi Keperawatan Untan Pontianak Analisis Perbandingan Kemampuan Kognitif Pada Materi Dokumentasi Keperawatan Berbasis E-Learning dan Konvensional di Program Studi Keperawatan Untan Pontianak', './uploads/penelitian/Analisis_Perbandingan_Kemampuan_Kognitif_Pada_Materi_Dokumentasi_Keperawatan_Berbasis_E.docx', './uploads/penelitian/Analisis_Perbandingan_Kemampuan_Kognitif_Pada_Materi_Dokumentasi_Keperawatan_Berbasis_E.docx', '', '1,2', 'ada', 2, 2, 76),
(37, 'Judul Penelitian Deskripsi Singkat', 'Gua Selarong', '2020-05-02', 72, 0, '2020-01-19', 'test', './uploads/penelitian/01_peminjaman_tempat_FASI_2019_rev2.docx', '', '', '0', '', 0, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `id_fakultas` int(5) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `singkatan_prodi` varchar(10) NOT NULL,
  `sort` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `id_fakultas`, `nama_prodi`, `singkatan_prodi`, `sort`) VALUES
(1, 1, 'Teknik Elektro', 'te', 1),
(2, 1, 'Teknik Mesin', 'tm', 2),
(3, 1, 'Teknik Sipil', 'ts', 0),
(4, 1, 'Teknologi Informasi', 'ti', 0),
(5, 2, 'Agroteknologi', 'agro', 0),
(6, 3, 'Manajemen', 'mnj', 0),
(7, 3, 'Akuntansi', 'akt', 0),
(8, 3, 'Ekonomi', 'ipief', 0),
(9, 2, 'Agribisnis', 'agri', 0),
(10, 4, 'Hubungan Internasional', 'hi', 0),
(12, 4, 'Ilmu Pemerintahan', 'ip', 0),
(14, 4, 'Ilmu Komunikasi', 'ik', 0),
(15, 5, 'Hukum', 'hk', 0),
(17, 6, 'Komunikasi dan Penyiaran Islam', 'kpi', 0),
(18, 6, 'Pendidikan Agama Islam', 'pai', 0),
(19, 6, 'Ekonomi Syariah', 'eksya', 0),
(20, 7, 'Pendidikan Bahasa Inggris', 'pbi', 0),
(21, 7, 'Pendidikan Bahasa Arab', 'pba', 0),
(22, 7, 'Pendidikan Bahasa Jepang', 'pbj', 0),
(23, 8, 'Teknologi Elektro-medis', 'tem', 0),
(24, 8, 'Teknologi Mesin ', 'tmesin', 0),
(25, 8, 'Akuntansi ', 'aktv', 0),
(26, 9, 'Pendidikan Dokter', 'pd', 1),
(27, 9, 'Kedokteran Gigi', 'kg', 3),
(28, 9, 'Keperawatan', 'kep', 5),
(29, 9, 'Farmasi', 'far', 7),
(30, 10, 'Magister Manajemen', 'mm', 0),
(31, 10, 'Magister Studi Islam', 'msi', 0),
(32, 9, 'Pendidikan Profesi Ners', 'ners', 6),
(33, 9, 'Pendidikan Profesi Dokter', 'ppdr', 2),
(34, 9, 'Pendidikan Profesi Dokter Gigi', 'ppdg', 4),
(35, 9, 'Pendidikan Profesi Apoteker', 'apt', 8),
(36, 10, 'Magister Keperawatan', 'mkep', 0),
(37, 10, 'Magister Administrasi Rumah Sakit', 'mrs', 0),
(38, 10, 'Magister Manajemen Ilmu Hukum', 'mih', 0),
(39, 10, 'Magister Ilmu Pemerintahan', 'mip', 0),
(40, 10, 'Magister Hubungan Internasional', 'mhi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `umur` int(2) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `last_updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `telp`, `alamat`, `umur`, `photo`, `last_updated`) VALUES
(4, 'siswa44', '1234', 'fffff', 14, './uploads/fotoProfil/51.PNG', '2020-02-19 03:54:33'),
(7, 'siswa7', '324', 'asdaf', 14, './uploads/fotoProfil/', '2020-02-19 07:57:52'),
(8, 'siswa8', '123', 'asdfgg', 20, '', '2020-02-19 07:59:37'),
(9, 'siswa9', '2344', 'kkkkkk', 15, '', '2020-02-19 08:03:14'),
(12, 'siswa1', '1234', 'sssss', 16, '', '2020-02-19 10:11:10'),
(13, 'siswa2', '1234', 'lasdlknfkdj', 16, '', '2020-02-19 10:20:06'),
(16, 'asfaff', '1412', 'zjdfjsdjhfh', 17, '', '2020-02-21 03:58:56'),
(17, 'hsdgu', '52374', 'aihfueg', 16, './uploads/fotoProfil/5.PNG', '2020-02-21 04:08:36'),
(18, 'siswa55', '123', 'asfa', 13, './uploads/fotoProfil/', '2020-02-21 05:24:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_users`
--
ALTER TABLE `ci_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_user_groups`
--
ALTER TABLE `ci_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coba`
--
ALTER TABLE `coba`
  ADD PRIMARY KEY (`id_coba`);

--
-- Indexes for table `dokumen_apt`
--
ALTER TABLE `dokumen_apt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_dokumen`
--
ALTER TABLE `kategori_dokumen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_dokumen` (`kategori_dokumen`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id_penelitian`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_users`
--
ALTER TABLE `ci_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `ci_user_groups`
--
ALTER TABLE `ci_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coba`
--
ALTER TABLE `coba`
  MODIFY `id_coba` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `dokumen_apt`
--
ALTER TABLE `dokumen_apt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori_dokumen`
--
ALTER TABLE `kategori_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
