-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 08:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `rekening`, `pemilik_rekening`, `gambar`) VALUES
(1, 'BRI', '456789123', 'paulina', 'ff2f194874a88baf6a462cfe91bbfeb4.jpg'),
(2, 'bro', '12313', '12313', 'c2f2e519ba5fa42091d7584286ab2cef.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id_barang` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL DEFAULT 1,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_sewa` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar_barang` mediumtext DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id_barang`, `id_kategori_produk`, `nama_barang`, `harga_sewa`, `deskripsi`, `gambar_barang`, `stok`, `ukuran`, `created_at`) VALUES
(1, 1, 'a', 2222, 'aaaa', 'afa1a5e062c04b31fa0ac2eb4adf034d.jpg', 6, 'besar', '2020-05-02 17:29:39'),
(2, 1, 'a', 1, 'asd', 'cf45d796e05bcd519688fed66cb16515.jpg', 2, 'kecil', '2020-06-02 17:29:08'),
(3, 1, 'Bestway Monodome Pavilio X2', 100000, 'coba', '05e2c3fc81212290a46d9062bce7dbf3.jpg', 3, 'besar', '2020-06-02 17:29:08'),
(4, 2, 'Great Outdoor Flyair', 100000, 'tenda', 'b5707d44fbe2b0a356cab845a5997159.jpg', 2, 'besar', '2020-06-02 17:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL DEFAULT 1,
  `tgl_ditambahkan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_barang`, `jumlah_barang`, `tgl_ditambahkan`) VALUES
(1, 4, 3, 1, '2020-05-22 20:02:26'),
(2, 4, 4, 2, '2020-05-22 20:02:26'),
(3, 6, 1, 1, '2020-05-26 19:50:10'),
(4, 6, 3, 1, '2020-05-26 19:50:10'),
(5, 7, 1, 1, '2020-05-27 12:57:57'),
(6, 7, 1, 1, '2020-05-27 12:58:43'),
(7, 7, 2, 1, '2020-05-27 12:58:43'),
(8, 8, 1, 2, '2020-05-28 12:54:15'),
(9, 9, 1, 1, '2020-06-02 05:49:27'),
(10, 10, 1, 5, '2020-06-03 15:41:04'),
(11, 10, 3, 2, '2020-06-03 15:41:04'),
(12, 11, 2, 1, '2020-06-04 04:39:23'),
(13, 11, 3, 1, '2020-06-04 04:39:24'),
(14, 12, 1, 4, '2020-06-06 06:44:11'),
(15, 12, 3, 1, '2020-06-06 06:44:11'),
(16, 13, 4, 2, '2020-06-06 07:48:43'),
(17, 14, 4, 1, '2020-06-13 11:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori_produk`, `nama_kategori_produk`) VALUES
(1, 'Tenda'),
(2, 'Perlengkapan'),
(3, 'Elektronik'),
(4, 'Out Bound'),
(5, 'Tour');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id_maintenance` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `status_barang` int(11) NOT NULL DEFAULT 0 COMMENT '0 = belum diperbaiki\r\n1 = proses diperbaiki\r\n2 = ready',
  `keterangan_kondisi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `finished_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`id_maintenance`, `id_barang`, `jumlah_barang`, `status_barang`, `keterangan_kondisi`, `created_at`, `finished_at`) VALUES
(1, 1, 1, 3, '', '2020-06-05 15:52:55', '2020-06-06 04:18:12'),
(2, 2, 1, 3, 'rusak bet', '2020-06-06 07:40:47', '2020-06-13 18:43:49'),
(3, 3, 1, 3, 'rusak bet', '2020-06-06 07:40:47', '2020-06-06 10:02:10'),
(4, 4, 2, 3, '', '2020-06-06 07:50:13', '2020-06-06 07:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_deadline` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL COMMENT '0 = belum\r\n1 = sudah\r\n2 = gagal/expired\r\n3 = ditolak',
  `tgl_bayar` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `bukti_bayar` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_transaksi`, `tgl_deadline`, `status`, `tgl_bayar`, `bukti_bayar`, `is_verified`, `created_at`) VALUES
(2, 4, '2020-05-23 08:02:26', 2, '2020-05-26 19:04:50', NULL, 0, '2020-05-22 20:02:26'),
(3, 6, '2020-05-27 07:50:10', 2, '2020-05-27 12:55:00', 'f185566c6e3b729ec87a5978105eeabc.jpg', 1, '2020-05-26 19:50:10'),
(4, 7, '2020-05-28 00:58:43', 2, '2020-05-28 12:46:32', NULL, 0, '2020-05-27 12:58:43'),
(5, 8, '2020-05-29 00:54:15', 2, '2020-06-02 05:49:35', '6b5450f994cd8900bd582214cbc0d45d.jpg', 1, '2020-05-28 12:54:15'),
(6, 9, '2020-06-02 17:49:27', 1, '2020-06-03 15:14:42', '7dfa30ec6ac27267821b792d9b52bd41.jpg', 1, '2020-06-02 05:49:27'),
(7, 10, '2020-06-04 03:41:04', 3, '2020-06-03 16:01:36', 'e799320b828da580482b85380cac2c95.png', 1, '2020-06-03 15:41:04'),
(8, 11, '2020-06-04 16:39:24', 1, '2020-06-04 06:10:16', '14984ffd68492390dc8f7b6a852e32f1.jpg', 1, '2020-06-04 04:39:24'),
(9, 12, '2020-06-06 18:44:11', 1, '2020-06-06 07:38:37', 'd5a58f2e951181cb0a8d6a896adea431.png', 1, '2020-06-06 06:44:11'),
(10, 13, '2020-06-06 19:48:43', 1, '2020-06-06 07:49:22', '813e7952d4fc13ee8ead00c75bc77de9.png', 1, '2020-06-06 07:48:43'),
(11, 14, '2020-06-13 23:06:02', 2, '2020-06-17 16:24:34', NULL, 0, '2020-06-13 11:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `kondisi_barang` varchar(100) NOT NULL,
  `denda` bigint(20) NOT NULL DEFAULT 0,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_transaksi`, `kondisi_barang`, `denda`, `keterangan`, `created_at`) VALUES
(1, 9, 'baik', 0, '0', NULL),
(3, 11, 'rusak', 50000, 'rusak bet', NULL),
(4, 13, 'baik', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp_customer`
--

CREATE TABLE `temp_customer` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `security_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `temp_detail_transaksi`
--

CREATE TABLE `temp_detail_transaksi` (
  `id_temp_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL DEFAULT 1,
  `tgl_ditambahkan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_detail_transaksi`
--

INSERT INTO `temp_detail_transaksi` (`id_temp_detail_transaksi`, `id_transaksi`, `id_barang`, `jumlah_barang`, `tgl_ditambahkan`) VALUES
(6, 1, 3, 5, '2020-05-18 02:22:48'),
(8, 3, 4, 1, '2020-05-19 10:45:53'),
(12, 5, 1, 1, '2020-05-19 16:33:31'),
(13, 5, 4, 1, '2020-05-19 16:33:38'),
(37, 15, 3, 1, '2020-06-17 05:17:07'),
(38, 15, 1, 1, '2020-06-17 07:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_transaksi` int(11) NOT NULL DEFAULT 0 COMMENT '0 = sementara\r\n1 = transaksi\r\n2 = siap\r\n3 = keluar\r\n4 = kembali\r\n',
  `subtotal` bigint(20) DEFAULT NULL,
  `tgl_pemesanan` timestamp NULL DEFAULT NULL,
  `tgl_sewa` date DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `id_tujuan` int(11) DEFAULT NULL,
  `metode_pengambilan` varchar(100) DEFAULT NULL,
  `alamat_pengiriman` text DEFAULT NULL,
  `jarak` float DEFAULT NULL,
  `kode_kendaraan` int(11) DEFAULT NULL,
  `biaya_pengiriman` int(11) DEFAULT NULL,
  `jaminan` varchar(100) DEFAULT NULL,
  `foto_jaminan` varchar(255) DEFAULT NULL,
  `no_identitas` varchar(50) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `total_harga` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `status_transaksi`, `subtotal`, `tgl_pemesanan`, `tgl_sewa`, `tgl_pengembalian`, `id_tujuan`, `metode_pengambilan`, `alamat_pengiriman`, `jarak`, `kode_kendaraan`, `biaya_pengiriman`, `jaminan`, `foto_jaminan`, `no_identitas`, `no_telp`, `total_harga`) VALUES
(1, 5, 0, NULL, '0000-00-00 00:00:00', '2020-05-20', '2020-05-22', 1, 'Diambil', NULL, 0, 0, 0, 'KTP', '28173d6eec49cc44d36511b7269a0baf.png', '1231', '123213', 300000),
(3, 11, 0, 100000, '2020-05-20 08:09:40', '2020-05-20', '2020-05-22', 1, 'Dikirim', 'daasdasd', 0.6, 2, 4800, 'KTP', 'c8d79768f4e95f61425782c26062e943.png', '1231231', '23123', 104800),
(4, 8, 1, 300000, '2020-05-22 19:48:25', '2020-05-20', '2020-05-22', 1, 'Dikirim', 'Jalan kaliurang', 2.5, 2, 20000, 'KTP', 'b66539fcbc8d73a240fc700037ccfca9.jpg', '123', '213', 320000),
(5, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', NULL, '', NULL),
(6, 8, 1, 102222, '2020-05-26 19:50:02', '2020-05-28', '2020-06-05', 5, 'Dikirim', 'jalan jalan', 6, 2, 48000, 'KTP', '14dddef21dc23b4d14acab51d022254a.jpg', '999', '321654', 150222),
(7, 8, 1, 2223, '2020-05-27 12:57:49', '2020-05-27', '2020-05-29', 1, 'Dikirim', 'asd', 1.5, 2, 12000, 'KTP', 'b94a0d8f56eaa6e632704bb656ca8d40.jpg', '12331', '123123', 14223),
(8, 8, 1, 4444, '2020-05-28 12:54:08', '2020-05-07', '2020-05-29', 1, 'Diambil', NULL, 0, 2, 0, 'KTP', '165fe3bae006223d0bc0cb8ac20a5f1c.jpg', '123123', '123123', 4444),
(9, 8, 4, 2222, '2020-06-02 05:49:26', '2020-06-02', '2020-06-03', 1, 'Diambil', NULL, 0, 2, 0, 'KTP', '564369816860dfa64f38c3b73d259fb1.jpg', '123123', '123123', 2222),
(10, 8, 1, 211110, '2020-06-03 15:40:54', '2020-06-08', '2020-06-30', 1, 'Diambil', NULL, 0, 2, 0, 'KTP', 'eaedb6a7eeb06224582a96cde988a1bd.jpg', '123123', '123213', 211110),
(11, 8, 4, 600006, '2020-06-04 04:38:41', '2020-06-04', '2020-06-10', 1, 'Dikirim', 'lop', 4.4, 2, 35200, 'KTP', '10b1bb744ef21feecf92e435798d5518.png', '123456', '21346', 635206),
(12, 8, 3, 653328, '2020-06-06 06:44:05', '2020-06-06', '2020-06-12', 1, 'Dikirim', 'adasd', 4.9, 2, 39200, 'KTP', '5ad6046e334a53796ddf18d642f54f20.jpg', '12312', '3123123', 692528),
(13, 8, 4, 0, '2020-06-06 07:48:41', '2020-06-06', '2020-06-06', 4, 'Diambil', NULL, 0, 2, 0, 'KTP', 'b11f79a5097eda6b4f3aaef4890f9957.jpg', '123123', '123123', 200000),
(14, 8, 1, 700000, '2020-06-13 11:06:00', '2020-06-13', '2020-06-20', 2, 'Diambil', NULL, 0, 2, 0, 'KTP', '39525f3f225e999527b91451c77136a6.png', '123123', '123123', 700000),
(15, 8, 0, 200000, '2020-06-17 05:40:38', '2020-06-17', '2020-06-19', 6, 'Diambil', NULL, 0, 2, 0, 'KTP', 'f7d13b1e7bef0efab86443182c94795d.jpg', '1213', '12312', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `tujuan`
--

CREATE TABLE `tujuan` (
  `id` int(11) NOT NULL,
  `tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tujuan`
--

INSERT INTO `tujuan` (`id`, `tujuan`) VALUES
(1, 'Pantai'),
(2, 'Gunung'),
(3, 'Camping Ground'),
(4, 'Sekolah'),
(5, 'Lapangan'),
(6, 'Event'),
(7, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `alamat`, `no_telp`, `email`, `username`, `password`, `level`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 0, '2020-06-02 16:50:09', '2020-06-02 16:50:42'),
(2, 'bayu', 'malang', '2147483647', 'bayu@gamil.com', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', 1, 0, '2020-05-06 16:50:09', '2020-06-02 16:57:38'),
(3, 'ivfa', 'malang', '2147483647', 'ivfatut@gmail.com', 'ivfa', 'e70c7e007a4fb1f0781da38df3319235', 1, 0, '2020-05-02 16:50:09', '2020-06-02 16:57:13'),
(4, 'mila', 'malang', '2147483647', 'mila@gmail.com', 'mila', '38cb862715ae650d05f745edfe66576a', 2, 0, '2020-06-02 16:50:09', '2020-06-02 16:50:42'),
(5, 'dewi', 'mana saja', '2147483647', 'dewiina@gmail.com', 'dewi', 'ed1d859c50262701d92e5cbf39652792', 2, 0, '2020-06-02 16:50:09', '2020-06-17 14:38:17'),
(8, 'acacacac', 'acacacac', '12314321', 'aca@ca.ca', 'aca', '2671eb6e9150cf9b53eb39752a1fb21c', 1, 0, '2020-06-02 16:50:09', '2020-06-17 08:47:51'),
(14, 'afa', NULL, '82232221741', 'afa@afa.afa', 'afa', 'dcf5500c7e53721d4b016e4793d5dd66', 1, 0, '2020-06-04 04:54:26', '2020-06-17 17:18:20'),
(19, 'lol', NULL, '82232221741', 'lol@lol.com', 'lol', '9cdfb439c7876e703e307864c9167a15', 1, 1, '2020-06-17 18:23:36', '2020-06-17 18:23:36'),
(20, '21', NULL, '82232221741', 'aba@avba.cac', '4215', '1d54c76f48f146c3b2d66daf9d7f845e', 1, 1, '2020-06-17 18:34:33', '2020-06-17 18:34:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `barang_pk` (`id_barang`),
  ADD KEY `id_kategori_produk` (`id_kategori_produk`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id_maintenance`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD UNIQUE KEY `pembayaran_pk` (`id_pembayaran`),
  ADD KEY `dapat_fk` (`id_transaksi`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD UNIQUE KEY `pengembalian_pk` (`id_pengembalian`),
  ADD KEY `dapat_fk` (`id_transaksi`);

--
-- Indexes for table `temp_customer`
--
ALTER TABLE `temp_customer`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `temp_detail_transaksi`
--
ALTER TABLE `temp_detail_transaksi`
  ADD PRIMARY KEY (`id_temp_detail_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`,`id_barang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_tujuan` (`id_tujuan`);

--
-- Indexes for table `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id_maintenance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_customer`
--
ALTER TABLE `temp_customer`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `temp_detail_transaksi`
--
ALTER TABLE `temp_detail_transaksi`
  MODIFY `id_temp_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
