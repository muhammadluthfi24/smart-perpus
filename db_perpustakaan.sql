-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 05:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id` int(11) NOT NULL,
  `nim` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jk` varchar(200) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id`, `nim`, `nama`, `jk`, `jurusan`, `alamat`, `gambar`) VALUES
(1, '12191124', 'Siti Hartati', 'Perempuan', 'Sistem Informasi', 'Tokyo, Japan\r\n', '1491590012565.jpg'),
(2, '12192509', 'Lee Eunsang', 'Laki-laki', 'Teknik Informatika', 'South Jakarta, Indonesia', 'Lee Eunsang.jpeg'),
(3, '12190102', 'Lee Hangyul', 'Laki-laki', 'Sistem Informasi', 'Bandung Lautan Api, Indonesia', 'Lee Hangyul.jpeg'),
(4, '12191124', 'Nam Dohyon', 'Laki-laki', 'Sistem Informasi Akuntansi', 'London', 'Nam Dohyon.jpeg'),
(9, '11128772', 'Kim Go Eun', 'Wanita', 'Teknik Komputer', 'Busan, South Korea', 'kim go eun.jpg'),
(10, '12180029', 'Shawn Mendes', 'Laki-laki', 'Sistem Informasi Akuntansi', 'Pickering, Kanada', 'shawn mendes.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(200) NOT NULL,
  `penerbit` varchar(200) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak 1','rak 2','rak 3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `gambar`, `isbn`, `jumlah_buku`, `lokasi`) VALUES
(1, 'PHP Komplet Vol. 1', 'Jubilee Edward Clark', 'Alex Media Komputindo', '2018', 'phpkomplet.jpg', '', 90, 'rak 2'),
(2, 'Pemrograman Bootstrap Untuk Pemula	', 'Jubilee Enterprise', 'Alex Media Komputindo', '2016', 'bootstrap.jpg', '345372539', 25, 'rak 3'),
(11, 'Otodidak Pemrograman Python', 'Jubilee Enterprise', 'Alex Media Komputindo	', '2017', 'phyton.jpg', '', 56, 'rak 1'),
(12, 'Aplikasi Menggunakan Codeigniter', 'Moch Kautsar Sophan', 'Deepublish', '2016', 'codeigniter.jpg', '', 8, 'rak 1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `nim` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
(1, 'PHP Komplet', '12191124', 'Siti Hartati', '2020-06-01', '2020-06-09', 'pinjam'),
(2, 'Otodidak Pemrograman Python', '12192509', 'Lee Eunsang', '2020-05-03', '2020-06-30', 'kembali'),
(3, 'Pemrograman Bootstrap Untuk Pemula', '12190102', 'Lee Hangyul', '2020-06-10', '2020-06-16', 'pinjam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'Lee_Eunsang.jpg'),
(2, 'tati', '2411', 'Siti Hartati', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
