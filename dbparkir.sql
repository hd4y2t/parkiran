-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11 Nov 2019 pada 09.08
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbparkir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password_admin` varchar(256) NOT NULL,
  `nama_admin` varchar(100) DEFAULT NULL,
  `email_admin` varchar(50) DEFAULT NULL,
  `no_hp_admin` varchar(50) DEFAULT NULL,
  `img_admin` varchar(256) DEFAULT NULL,
  `level_admin` int(11) DEFAULT NULL,
  `create_date_admin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `username_admin`, `password_admin`, `nama_admin`, `email_admin`, `no_hp_admin`, `img_admin`, `level_admin`, `create_date_admin`) VALUES
('A003', 'user1', '$2y$10$dXxNzUGcKtoQexc26jMdGuQI9ilEkE.aFx6aLTkiiqHjojEaQb9ga', 'user', 'user@gmail.com', '08123456789', 'assets/dist/img/default.png', 2, '0000-00-00 00:00:00'),
('A004', 'admin', '$2y$10$/QU9h5JnAxk/KqHkXg6Q0u5LsPLu1pHHdHGnD/WtlKyGRak5amLjm', 'Admin', 'parkirinaja@gmail.com', '089682261128', 'assets/dist/img/avatar04.png', 2, '0000-00-00 00:00:00'),
('A006', 'owner', '$2y$10$j1lDCDGnkzO01CElfAZe1e9Wxo7pZhwbkPUs5kKSGDq2GHV.aqiUm', 'OWNER', 'owner@parkrinaja.com', '089682261128', 'assets/dist/img/default.png', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keluar`
--

CREATE TABLE `tbl_keluar` (
  `kd_keluar` varchar(50) NOT NULL,
  `plat_masuk` varchar(50) DEFAULT NULL,
  `kd_member` varchar(50) DEFAULT NULL,
  `tgl_jam_masuk` datetime DEFAULT NULL,
  `tgl_jam_keluar` datetime DEFAULT NULL,
  `lama_parkir_keluar` varchar(50) DEFAULT NULL,
  `tarif_keluar` int(11) DEFAULT NULL,
  `total_keluar` int(11) DEFAULT NULL,
  `status_keluar` int(11) DEFAULT NULL,
  `create_keluar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_keluar`
--

INSERT INTO `tbl_keluar` (`kd_keluar`, `plat_masuk`, `kd_member`, `tgl_jam_masuk`, `tgl_jam_keluar`, `lama_parkir_keluar`, `tarif_keluar`, `total_keluar`, `status_keluar`, `create_keluar`) VALUES
('K00000001', 'M00000033', 'NULL', '2019-04-22 13:26:38', '2019-04-25 12:21:44', '70 Jam,55 Menit', 150000, 0, 1, 'OWNER'),
('K00000002', 'M00000034', 'NULL', '2019-04-25 12:35:09', '2019-04-25 12:43:08', '0 Jam,7 Menit', 2000, 2000, 1, 'OWNER'),
('K00000003', 'M00000032', 'NULL', '2019-04-17 22:44:53', '2019-04-25 19:44:35', '188 Jam,59 Menit', 6000, 1134000, 1, 'Kang Parkir'),
('K00000004', 'M00000035', 'MBR00000002', '2019-04-25 19:45:41', '2019-04-25 19:46:32', '0 Jam,0 Menit', 350000, 0, 1, 'Kang Parkir'),
('K00000005', 'M00000041', 'NULL', '2019-09-02 13:30:49', '2019-09-02 13:34:25', '0 Jam,3 Menit', 6000, 6000, 1, 'Kang Parkir'),
('K00000006', 'BG 2222 EE', 'NULL', '2019-09-02 13:10:47', '2019-09-02 13:40:55', '0 Jam,30 Menit', 2000, 2000, 1, 'Kang Parkir'),
('K00000007', 'BG 1234 TT', 'NULL', '2019-09-02 13:24:15', '2019-09-02 13:53:55', '0 Jam,29 Menit', 2000, 2000, 1, 'OWNER'),
('K00000008', 'BG 2222 TT', 'NULL', '2019-09-02 14:03:25', '2019-09-02 14:03:35', '0 Jam,0 Menit', 2000, 2000, 1, 'OWNER'),
('K00000009', 'B 4781 JHG', 'NULL', '2019-04-25 19:46:13', '2019-09-02 14:08:46', '3114 Jam,22 Menit', 2000, 6230000, 1, 'Kang Parkir'),
('K00000010', 'BG 5512 AA', 'NULL', '2019-09-02 22:59:44', '2019-09-02 23:00:03', '0 Jam,0 Menit', 4000, 4000, 1, 'OWNER'),
('K00000011', 'BG 1132 AA', 'NULL', '2019-09-03 00:05:33', '2019-09-03 00:06:14', '0 Jam,0 Menit', 2000, 2000, 1, 'Admin'),
('K00000012', 'BG 2123 RR', 'NULL', '2019-09-02 22:45:11', '2019-09-03 01:33:21', '2 Jam,48 Menit', 2000, 6000, 1, 'Admin'),
('K00000013', 'BG 2223 EE', 'NULL', '2019-09-02 13:14:53', '2019-09-03 01:33:29', '12 Jam,18 Menit', 2000, 26000, 1, 'Admin'),
('K00000014', 'BG 1231 RR', 'NULL', '2019-09-09 14:09:24', '2019-09-09 14:10:09', '0 Jam,0 Menit', 2000, 2000, 1, 'Admin'),
('K00000015', 'BG 2545 YU', 'NULL', '2019-09-09 14:17:03', '2019-09-09 14:17:55', '0 Jam,0 Menit', 4000, 4000, 1, 'Admin'),
('K00000016', 'BG 1113 OA', 'NULL', '2019-09-15 13:58:01', '2019-09-15 13:58:42', '0 Jam,0 Menit', 2000, 2000, 1, 'Admin'),
('K00000017', 'BG 8888 QQ', 'NULL', '2019-09-15 13:59:20', '2019-10-03 15:51:03', '433 Jam,51 Menit', 0, 0, 1, 'Admin'),
('K00000018', 'BG 1241 RA', 'NULL', '2019-10-03 15:51:21', '2019-10-03 15:51:30', '0 Jam,0 Menit', 0, 0, 1, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kendaraan`
--

CREATE TABLE `tbl_kendaraan` (
  `kd_kendaraan` varchar(50) NOT NULL,
  `nama_kendaraan` varchar(50) DEFAULT NULL,
  `harga_kendaraan` int(20) DEFAULT NULL,
  `jenis_kendaraan` int(11) NOT NULL,
  `create_by_kendaraan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kendaraan`
--

INSERT INTO `tbl_kendaraan` (`kd_kendaraan`, `nama_kendaraan`, `harga_kendaraan`, `jenis_kendaraan`, `create_by_kendaraan`) VALUES
('JK001', 'MOTOR', 0, 1, 'owner'),
('JK002', 'MOBIL', 0, 1, 'owner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_masuk`
--

CREATE TABLE `tbl_masuk` (
  `kd_masuk` varchar(50) NOT NULL,
  `kd_member` varchar(50) NOT NULL,
  `kd_kendaraan` varchar(50) DEFAULT NULL,
  `plat_masuk` varchar(50) DEFAULT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
  `status_masuk` int(11) DEFAULT NULL,
  `create_masuk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_masuk`
--

INSERT INTO `tbl_masuk` (`kd_masuk`, `kd_member`, `kd_kendaraan`, `plat_masuk`, `tgl_masuk`, `status_masuk`, `create_masuk`) VALUES
('M00000032', 'NULL', 'JK003', 'B 4514 VBN', '2019-04-17 22:44:53', 2, 'Kang Parkir'),
('M00000033', 'MBR00000001', 'JK004', 'B 4514 BLN', '2019-04-22 13:26:38', 2, 'Kang Parkir'),
('M00000034', 'NULL', 'JK001', 'B 4514 BLN', '2019-04-25 12:35:09', 2, 'OWNER'),
('M00000035', 'MBR00000002', 'JK005', 'B 7894 BLN', '2019-04-25 19:45:41', 2, 'Kang Parkir'),
('M00000036', 'NULL', 'JK001', 'B 4781 JHG', '2019-04-25 19:46:13', 2, 'Kang Parkir'),
('M00000038', 'NULL', 'JK001', 'BG 2222 EE', '2019-09-02 13:10:47', 2, 'Kang Parkir'),
('M00000039', 'NULL', 'JK001', 'BG 2223 EE', '2019-09-02 13:14:53', 2, 'Kang Parkir'),
('M00000040', 'NULL', 'JK001', 'BG 1234 TT', '2019-09-02 13:24:15', 2, 'Kang Parkir'),
('M00000041', 'NULL', 'JK003', 'BG 4444 WW', '2019-09-02 13:30:49', 2, 'Kang Parkir'),
('M00000042', 'NULL', 'JK001', 'BG 2222 TT', '2019-09-02 14:03:25', 2, 'OWNER'),
('M00000043', 'NULL', 'JK001', 'BG 2123 RR', '2019-09-02 22:45:11', 2, 'Kang Parkir'),
('M00000044', 'NULL', 'JK002', 'BG 5512 AA', '2019-09-02 22:59:44', 2, 'OWNER'),
('M00000045', 'NULL', 'JK001', 'BG 1132 AA', '2019-09-03 00:05:33', 2, 'Admin'),
('M00000046', 'NULL', 'JK001', 'BG 1231 RR', '2019-09-09 14:09:24', 2, 'Admin'),
('M00000047', 'NULL', 'JK002', 'BG 2545 YU', '2019-09-09 14:17:03', 2, 'Admin'),
('M00000048', 'NULL', 'JK001', 'BG 1113 OA', '2019-09-15 13:58:01', 2, 'Admin'),
('M00000049', 'NULL', 'JK002', 'BG 8888 QQ', '2019-09-15 13:59:20', 2, 'Admin'),
('M00000050', 'NULL', 'JK003', 'BG 8989 EE', '2019-09-15 14:01:48', 1, 'OWNER'),
('M00000051', 'NULL', 'JK001', 'BG 1241 RA', '2019-10-03 15:51:21', 2, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_keluar`
--
ALTER TABLE `tbl_keluar`
  ADD PRIMARY KEY (`kd_keluar`);

--
-- Indexes for table `tbl_kendaraan`
--
ALTER TABLE `tbl_kendaraan`
  ADD PRIMARY KEY (`kd_kendaraan`);

--
-- Indexes for table `tbl_masuk`
--
ALTER TABLE `tbl_masuk`
  ADD PRIMARY KEY (`kd_masuk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
