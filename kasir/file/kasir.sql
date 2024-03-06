-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 02:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar`
--

CREATE TABLE `tb_bayar` (
  `id_bayar` bigint(20) NOT NULL,
  `nominal_uang` bigint(20) NOT NULL,
  `total_bayar` bigint(20) NOT NULL,
  `waktu_bayar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_bayar`
--

INSERT INTO `tb_bayar` (`id_bayar`, `nominal_uang`, `total_bayar`, `waktu_bayar`) VALUES
(1464, 150000, 102000, '2024-02-13 10:26:03'),
(2656, 50000, 40000, '2024-02-22 01:35:08'),
(3132, 200000, 124000, '2024-02-19 11:59:56'),
(5576, 50000, 32000, '2024-02-19 04:48:56'),
(5761, 100000, 50000, '2024-02-21 06:14:44'),
(6161, 100000, 54000, '2024-02-19 14:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailpjl`
--

CREATE TABLE `tb_detailpjl` (
  `id_detail` int(11) NOT NULL,
  `penjualan_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detailpjl`
--

INSERT INTO `tb_detailpjl` (`id_detail`, `penjualan_id`, `produk_id`, `jumlah_produk`) VALUES
(9, 3132, 715, 2),
(10, 3132, 931, 1),
(11, 3132, 3627, 2),
(12, 1464, 715, 1),
(13, 1464, 931, 1),
(15, 5576, 3627, 3),
(16, 5576, 715, 1),
(17, 6161, 3627, 5),
(18, 6161, 715, 2),
(19, 5761, 6142, 1),
(27, 2656, 715, 2),
(28, 2656, 2013, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telepon`) VALUES
(2158, 'nama', 'dgdddhhdx', '64656465'),
(3040, 'oleng', 'apik', '09037289126'),
(5909, 'rafli', 'dfsrfhghfhfg', '85868585'),
(6622, 'endra', 'rt 04', '0756644'),
(8203, 'pardi', 'plung kejegor', '085345678567');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL DEFAULT current_timestamp(),
  `pelanggan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id_penjualan`, `tanggal_penjualan`, `pelanggan_id`) VALUES
(1464, '2024-02-04', 8203),
(2656, '2024-03-02', 2158),
(3132, '2024-02-06', 3040),
(3718, '2024-02-10', 2158),
(5576, '2024-02-09', 2158),
(5761, '2024-02-07', 5909),
(6161, '2024-02-15', 6622);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama`, `satuan`, `harga`, `stok`) VALUES
(715, 'Korek', 'pack', 2000, 6),
(931, 'helm', 'dus', 100000, 10),
(2013, 'minyak', 'liter', 12000, 27),
(3627, 'rokok', '', 10000, 8),
(6142, 'mouse', '', 50000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'rusdi', 'rusdi', 'rusdie', 'admin'),
(2, 'amba', 'amba', 'ambatu', 'kasir'),
(9, 'Admin', 'admin@gmail.com', 'admin', 'admin'),
(10, 'kasir', 'kasir@gmail.com', 'kasir', 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bayar`
--
ALTER TABLE `tb_bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `tb_detailpjl`
--
ALTER TABLE `tb_detailpjl`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `penjualan_id` (`penjualan_id`,`produk_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `pelanggan` (`pelanggan_id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bayar`
--
ALTER TABLE `tb_bayar`
  MODIFY `id_bayar` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6162;

--
-- AUTO_INCREMENT for table `tb_detailpjl`
--
ALTER TABLE `tb_detailpjl`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6162;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6963;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_detailpjl`
--
ALTER TABLE `tb_detailpjl`
  ADD CONSTRAINT `tb_detailpjl_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tb_produk` (`id_produk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detailpjl_ibfk_2` FOREIGN KEY (`penjualan_id`) REFERENCES `tb_penjualan` (`id_penjualan`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD CONSTRAINT `tb_penjualan_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `tb_pelanggan` (`id_pelanggan`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
