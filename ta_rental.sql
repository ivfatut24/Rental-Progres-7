-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2020 at 02:13 PM
-- Server version: 10.3.23-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalc1_igni526`
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
(1, 'BRI', '123456789', 'paul', '97f583f1de59878bcd00bc610bfa3b8c.png');

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_sewa` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar_barang` mediumtext DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_kategori_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id_barang`, `nama_barang`, `harga_sewa`, `deskripsi`, `gambar_barang`, `stok`, `ukuran`, `created_at`, `id_kategori_produk`) VALUES
(1, 'Tenda Dome Great Outdoor Flyair', 30000, 'Kap 3-4 orang', '3d30a80bef8ed7d3aecc21224f71e20c.jpg', 6, 'sedang', '2020-06-21 11:25:11', 1),
(2, 'Tenda Dome Great Outdoor Explorer 2', 30000, 'Kap 1-2 orang', '204087bf47a1d9834bc125ea25ef7cea.jpg', 7, 'sedang', '2020-06-21 11:25:11', 1),
(3, 'Tenda Dome Pro exclusive Backside', 40000, 'Kap 6-8 orang', 'de853a59cc014dea97468b4395f66342.jpg', 2, 'besar', '2020-06-21 11:25:11', 1),
(4, 'Tenda Dome Pro exclusive Eureka', 30000, 'Kap 6-8 orang', '69ee45290e6b6d33e2814a43ff17e942.jpg', 5, 'sedang', '2020-06-22 01:11:42', 1),
(5, 'Tenda Dome Pro exclusive Coleman', 40000, 'Kap 10-12 orang', 'a4dee68b483463c11f3885ec7c0c5201.jpg', 5, 'besar', '2020-06-19 06:26:19', 1),
(6, 'Tenda Dome Bestway Monodome Pavilillo x2', 30000, 'Kap 1-2 orang', '0c21bfcbcbd97ee48d33a968ce9a662b.jpg', 5, 'sedang', '2020-06-19 06:19:35', 1),
(7, 'Tenda Dome Columbia', 30000, 'Kap 3-4 orang', '3dcfb9507d4ce156fba3f232f53f09f0.jpg', 5, 'sedang', '2020-06-19 06:30:13', 1),
(8, 'Tenda Dome Lafuma Summertime', 30000, 'Kap 4-5 orang', '1838dbe5f967480ff9bb24d1944ed646.jpg', 5, 'sedang', '2020-06-19 06:32:02', 1),
(9, 'Tenda Dome Great Outdoor Java Yellow', 30000, 'Kap 4-5 orang', 'be08c748aa496eb0c99ee365940d9d73.jpg', 5, 'sedang', '2020-06-19 06:34:17', 1),
(10, 'Tenda Dome Pro exclusive Husky Boston 8', 40000, 'Kap 10-15 orang', '258a572235eb0ff0faf165916cc43124.jpg', 5, 'besar', '2020-06-19 06:36:17', 1),
(11, 'Tenda Dome Eiger Amphibole 3.0', 30000, 'Kap 3-4 orang', 'daca25a589bda1b9b612d77cdc80c829.jpg', 5, 'sedang', '2020-06-19 06:38:18', 1),
(12, 'Tenda Dome Lafuma Compo', 30000, 'Kap 4-5 orang', '9b0241518532878bc58e603190874a82.jpg', 5, 'sedang', '2020-06-19 06:40:37', 1),
(13, 'Tenda Dome Pro exclusive Black Pine', 30000, 'Kap 3-4 orang', '69fcabc819d69839bdd2eb12de13917b.jpg', 5, 'sedang', '2020-06-19 06:56:36', 1),
(14, 'Tenda Dome Great Outdoor Monodome 2', 30000, 'Kap 1-2 orang', 'a5f3cd2eaa453117ba77208eb65d3435.jpg', 5, 'sedang', '2020-06-19 06:58:16', 1),
(15, 'Tenda Rofi', 40000, 'Kap 15-20 orang', '537d335d5b16da8e4a6094e510388d1d.jpg', 5, 'besar', '2020-06-19 06:59:39', 1),
(16, 'Tenda Komando Rofi', 40000, 'Kap 50 orang', 'd6741493896152923f5a6ba700435765.jpg', 5, 'besar', '2020-06-19 07:01:20', 1),
(17, 'Lampu tenda', 10000, 'Daya 0.5 watt', '3772edb6c17611e311ee74b1033f668e.jpg', 5, 'kecil', '2020-06-19 07:09:09', 1),
(18, 'Headlamp', 10000, 'Jarak sorot lebar 15m, tahan 25jam, Baterai 2 LR03', '40ff1c2931b226f84595a3decdd917fa.jpg', 5, 'kecil', '2020-06-19 07:11:38', 2),
(19, 'Lampu Halogen LED', 10000, '50w', '6726d3d5b53ef95ed3c9f153063102c9.jpg', 5, 'kecil', '2020-06-19 07:18:32', 4),
(20, 'Bendera', 10000, 'Warna warni', 'a2e70dada590f52d74fa10f01ce7e5b2.jpg', 5, 'kecil', '2020-06-19 07:21:32', 4),
(21, 'Toa Besar', 15000, '6 Baterai seri C', '1e03a9305936edddc612f189b738d946.jpg', 5, 'sedang', '2020-06-19 07:23:47', 3),
(22, 'Toa Kecil', 15000, '4 baterai seri D', '50f9c457237ceb56017398848b35f5b1.jpg', 5, 'sedang', '2020-06-19 07:25:11', 3),
(23, 'Termos', 15000, 'Besar', '5a5a7e28dbf3ecf0d1a3a32f18776528.jpg', 5, 'sedang', '2020-06-19 07:27:58', 4),
(24, 'Cooling Box', 20000, 'Pendingin makanan dan minuman', '12baff9cef22fb3518bfb07525567f7c.jpg', 5, 'besar', '2020-06-19 07:36:20', 4),
(25, 'Genset', 20000, '2500 W, 3800 W', '57d32f5d2252e7db7c2a7c15340e35de.jpg', 5, 'besar', '2020-06-19 07:38:30', 4),
(26, 'Lampu Hias', 10000, 'Warna-warni', '58738eb50ef8042dccaca93928623cc4.jpg', 5, 'kecil', '2020-06-19 07:40:01', 4),
(27, 'Kompor Lapang', 10000, 'Bahan Bakar : Gas Butana', '224f77cb295eecc3d80cf8093a00ced9.jpg', 5, 'kecil', '2020-06-19 07:41:32', 2),
(28, 'Nesting / Panci Susun', 15000, '1 pegangan', '48a194127b4aca83f2054a1a92042e34.jpg', 5, 'sedang', '2020-06-19 07:43:34', 2),
(29, 'Trangia / Cooking Set', 20000, '2panci 2 rumahan, 1 penjepit 1 teko', 'e4d9f929958cc332b4a49224ba8308a7.jpg', 5, 'sedang', '2020-06-19 07:49:24', 2),
(30, 'Panggangan', 20000, 'Besar', '5a86c908773880fce0e913af35c3883c.jpg', 5, 'besar', '2020-06-19 07:50:41', 1),
(31, 'Masker Anti Debu', 10000, '18x12cm', '13e9bd3516b279867a1ea92c99e7475f.jpg', 3, 'kecil', '2020-06-22 01:11:42', 5),
(32, 'Cover Bag', 10000, '60-75L, 80-100L, 100-120L', 'dba0c6cf14d3ff0d08367dfe15d09cbc.jpg', 5, 'kecil', '2020-06-19 07:54:36', 2);

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
(5, 5, 1, 1, '2020-05-28 02:24:14'),
(6, 5, 4, 1, '2020-05-28 02:24:14'),
(7, 7, 3, 1, '2020-05-28 12:18:59'),
(8, 8, 3, 1, '2020-05-28 14:33:05'),
(9, 9, 1, 2, '2020-05-30 11:26:55'),
(10, 9, 2, 3, '2020-05-30 11:26:56'),
(11, 9, 3, 3, '2020-05-30 11:26:56'),
(12, 10, 4, 2, '2020-05-30 14:19:38'),
(13, 11, 4, 1, '2020-05-30 14:37:18'),
(14, 12, 3, 1, '2020-06-01 04:01:24'),
(15, 13, 2, 2, '2020-06-02 03:08:21'),
(16, 14, 2, 2, '2020-06-02 05:01:36'),
(17, 16, 2, 2, '2020-06-05 07:39:54'),
(18, 17, 4, 3, '2020-06-05 08:15:33'),
(19, 18, 3, 2, '2020-06-05 08:23:28'),
(20, 19, 4, 1, '2020-06-12 21:55:51'),
(21, 20, 3, 1, '2020-06-17 04:42:59'),
(22, 20, 4, 2, '2020-06-17 04:42:59'),
(23, 22, 1, 1, '2020-06-18 23:40:15'),
(24, 22, 3, 2, '2020-06-18 23:40:15'),
(25, 22, 4, 1, '2020-06-18 23:40:15'),
(26, 21, 3, 1, '2020-06-19 08:44:59'),
(27, 23, 1, 1, '2020-06-19 16:34:30'),
(28, 25, 3, 2, '2020-06-19 20:07:10'),
(29, 25, 2, 2, '2020-06-19 20:07:10'),
(30, 25, 31, 2, '2020-06-19 20:07:10'),
(31, 26, 3, 1, '2020-06-19 22:39:16'),
(32, 27, 3, 2, '2020-06-19 23:04:49'),
(33, 28, 4, 4, '2020-06-20 23:08:24'),
(34, 29, 4, 1, '2020-06-22 01:11:42'),
(35, 29, 31, 2, '2020-06-22 01:11:42');

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
(12, 4, 1, 1, 'robek', '2020-06-12 22:20:35', '2020-06-12 22:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_deadline` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL COMMENT '0 = belum\r\n1 = sudah\r\n2 = gagal/expired',
  `tgl_bayar` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `bukti_bayar` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_transaksi`, `tgl_deadline`, `status`, `tgl_bayar`, `bukti_bayar`, `is_verified`, `created_at`) VALUES
(23, 27, '2020-06-20 11:04:49', 1, '2020-06-19 23:12:17', 'd1c0e5e2267abb4ecc23cbc39e24ffe6.jpg', 1, '2020-06-19 23:04:49'),
(24, 28, '2020-06-21 11:08:24', 2, '2020-06-21 11:25:11', NULL, 0, '2020-06-20 23:08:24'),
(25, 29, '2020-06-22 13:11:42', 1, '2020-06-22 01:12:09', 'ee0482d16d40657d2f253d8ba120e79d.png', 0, '2020-06-22 01:11:42');

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
(10, 19, 'rusak', 3000, 'robek', NULL);

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

--
-- Dumping data for table `temp_customer`
--

INSERT INTO `temp_customer` (`id_user`, `nama`, `alamat`, `no_telp`, `email`, `username`, `password`, `security_code`, `created_at`, `updated_at`) VALUES
(25, 'Nila S', NULL, '85755827424', 'Nila@gmail.com', 'Nila', '3b5ad5ec49b4297fc5f9fa697e7169cb', '63998', '2020-06-18 08:47:55', '2020-06-18 08:47:55'),
(27, 'Dian Nada', NULL, '85755827424', 'dian@gmail.com', 'Dian', 'd096dd8f02bdac9358a28bac34b42d3c', '97838', '2020-06-18 23:17:04', '2020-06-18 23:17:04'),
(29, 'Mamang', NULL, '87856937689', 'mamang@mail.crot', 'engineer', '9d127ff383d595262c67036f50493133', '17919', '2020-06-19 12:27:45', '2020-06-19 12:27:45');

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
(19, 15, 2, 0, '2020-06-02 05:18:41'),
(31, 24, 3, 1, '2020-06-19 13:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_transaksi` int(11) NOT NULL DEFAULT 0 COMMENT '0 = sementara\r\n1 = transaksi',
  `subtotal` bigint(20) DEFAULT NULL,
  `tgl_pemesanan` timestamp NULL DEFAULT NULL,
  `tgl_sewa` date DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `id_tujuan` int(11) DEFAULT NULL,
  `metode_pengambilan` varchar(100) DEFAULT NULL,
  `alamat_pengiriman` text DEFAULT NULL,
  `jarak` float DEFAULT NULL,
  `kode_kendaraan` int(11) DEFAULT NULL COMMENT '0=ambil sendir, 1=motor, 2=mobil',
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
(27, 3, 3, 80000, '2020-06-19 23:04:44', '2020-06-21', '2020-06-23', 1, 'Diambil', NULL, 0, 2, 0, 'KTP', '58d60c774e88c98c50c23fa330cd8b22.png', '35041460039999000', '123456', 80000),
(28, 3, 1, 240000, '2020-06-20 23:08:17', '2020-06-22', '2020-06-24', 1, 'Dikirim', 'tamam gotong royong', 0.9, 1, 3600, 'KTP', 'eb991db281c04d76e8a7937aef846da9.png', '35041460039999000', '1234', 240000),
(29, 3, 1, 50000, '2020-06-22 01:11:30', '2020-06-23', '2020-06-24', 1, 'Dikirim', 'asdfghj', 1.6, 1, 6400, 'KTP', 'd34dd9f3f2a8fbce8a24ffc1f5f6ae7c.png', '35041460039999000', '1234567890', 56400);

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
(1, 'pantai'),
(2, 'gunung'),
(3, 'camping ground'),
(4, 'sekolah'),
(5, 'lapangan'),
(6, 'event');

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
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `alamat`, `no_telp`, `email`, `username`, `password`, `level`, `created_at`, `update_at`, `is_active`) VALUES
(1, 'admin', '', '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, '2020-06-05 07:50:13', '0000-00-00 00:00:00', 0),
(2, 'bayu', 'malang', '2147483647', 'bayu@gamil.com', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', 1, '2020-06-05 07:50:13', '0000-00-00 00:00:00', 0),
(3, 'ivfa tut t', 'malang', '2147483647', 'ivfatut@gmail.com', 'ivfa', '1a8142ff8c59ff997ac7bb63d2b530e5', 1, '2020-06-19 08:46:16', '0000-00-00 00:00:00', 0),
(4, 'mila', 'malang', '2147483647', 'mila@gmail.com', 'mila', '38cb862715ae650d05f745edfe66576a', 2, '2020-06-05 07:50:13', '0000-00-00 00:00:00', 0),
(5, 'dewi', 'malng', '2147483647', 'dewiina@gmail.com', 'dewi', 'ed1d859c50262701d92e5cbf39652792', 2, '2020-06-05 07:50:13', '0000-00-00 00:00:00', 0);

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
  ADD UNIQUE KEY `barang_pk` (`id_barang`);

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
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id_maintenance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `temp_customer`
--
ALTER TABLE `temp_customer`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `temp_detail_transaksi`
--
ALTER TABLE `temp_detail_transaksi`
  MODIFY `id_temp_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
