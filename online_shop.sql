-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 01:08 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `kode_alamat` char(5) NOT NULL,
  `provinsi` varchar(25) NOT NULL,
  `kota` varchar(25) NOT NULL,
  `kecamatan` varchar(25) NOT NULL,
  `deskel` varchar(25) NOT NULL,
  `kode_pos` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`kode_alamat`, `provinsi`, `kota`, `kecamatan`, `deskel`, `kode_pos`) VALUES
('A0001', 'Jawa Barat', 'Bandung', 'Sukajadi', 'Sukawarna', 40164);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` char(6) NOT NULL,
  `harga_beli` int(9) NOT NULL,
  `harga_jual` int(9) NOT NULL,
  `tgl_produksi` date NOT NULL,
  `kondisi` varchar(30) NOT NULL,
  `terjual` int(5) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `harga_beli`, `harga_jual`, `tgl_produksi`, `kondisi`, `terjual`, `stok`) VALUES
('K02B01', 14000000, 15500000, '2017-06-21', 'Baru', 4, 9),
('K02B02', 1500000, 1750000, '2015-09-17', 'Bekas', 2, 8),
('K03B01', 550000, 650000, '2017-05-14', 'Baru', 22, 45),
('K03B02', 600000, 700000, '2018-01-10', 'Baru', 43, 68),
('K06B01', 4500000, 5500000, '2016-04-08', 'Bekas', 21, 75),
('K07B01', 23500, 30000, '2019-01-09', 'Baru', 46, 101),
('K02B03', 2250000, 3000000, '2019-04-16', 'Baru', 42, 75);

-- --------------------------------------------------------

--
-- Table structure for table `detailbarang`
--

CREATE TABLE `detailbarang` (
  `kode_barang` char(6) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailbarang`
--

INSERT INTO `detailbarang` (`kode_barang`, `nama_barang`, `merk`, `kategori`, `gambar`, `deskripsi`) VALUES
('K02B01', 'Asus ROG GL503GE - EN023T', 'Asus', 'Laptop', 'assets/img/laptop1.jpg', 'Processor : Intel® Core™ i7-8750H Processor 2.2 GHz (9M Cache, up to 3.9 GHz)\r\nMemory : DDR4 2666 8GB\r\nHarddisk : SATA 1TB 5400RPM 2.5’ Hybrid HDD (FireCuda)\r\nVGA card : NVIDIA GeForce GTX 1050 Ti\r\nScreen : 15.6\' FHD FHD 1920x1080 16:9\r\nOS : Windows 10 (64bit)\r\nColor : metal Black\r\nBattery : 64WHrs, 4S1P, 4-cell Li-ion\r\nDimension / Weight : 38.4(W) x 26.2(D) x 2.40 ~ 2.40(H) cm/2.60 KG\r\nGaransi : 2 tahun garansi Global'),
('K02B02', 'Samsung 32 inch HD Flat TV 32N4001', 'Samsung', 'TV', 'assets/img/tv1.jpg', 'HD TV\r\nHDMI\r\nCleanview\r\nWide Color Enhancer\r\nConnectShare Movie'),
('K02B03', 'Panasonic 32 Inch LED TV - Hitam (Model 32G302G)', 'Panasonic', 'TV', 'assets/img/tv2.jpg', 'HD Ready,HDMI\r\nUSB Movie\r\nSuper bright panel\r\nDot noise reduction\r\nAV In'),
('K03B01', 'Gildan Long Sleeve Tee', 'Represent', 'Pakaian Pria', 'assets/img/blyat.jpg', 'Official PewDiePie Merch:\r\n\r\nOnly Real Cykas\r\n\r\nA portion of proceeds will support Save The Children.\r\n\r\n** SHIPS WORLDWIDE **'),
('K03B02', 'Midweight Pullover Hoodie', 'Represent', 'Hoodie', 'assets/img/60mil.jpg', 'The vault has been opened!\r\n\r\nBack for a limited time, get your piece of history before it\'s gone for good.\r\n\r\nBe a sister and rep the 60 Mill Club.\r\n\r\n*Ships Internationally*'),
('K06B01', 'Canon EOS 3000D with lens EF-S 18-55mm III DC', 'Canon', 'Kamera', 'assets/img/kamera.jpg', '18.0 Megapixel APS-C CMOS sensor\r\nDIGIC 4+ Image Processor\r\nISO 100 \'\'\" 6400 (expandable to 12800)\r\n3 fps continuous shooting\r\n9 AF points (center cross type)\r\nFull HD video recording (1920x1080) 30p\r\n2.7\" TFT colour liquid-crystal monitor (230K pixels)\r\nBuilt-in flash (Manual pop up flash)\r\nEF and EF-S lens mount\r\nBuilt in Wifi\r\nSD/SDHC/SDXC card slot\r\n\'Creative Filter\' Image processing styles'),
('K07B01', 'Jam Tangan Casual Pria Quartz Analog Movement WK9117', 'Quartz', 'Jam Tangan', 'assets/img/jamtangan.jpg', 'Bahan Strap : PU Leather\r\nBahan Case Stainless Steel\r\nDiameter 4,7cm\r\nBahan Kaca : Mineral Glass\r\nQuartz Analog Movement\r\nPacking Rapi Dan Aman\r\nFashionable Watch');

-- --------------------------------------------------------

--
-- Table structure for table `infouser`
--

CREATE TABLE `infouser` (
  `id_user` char(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode_alamat` char(5) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(9) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infouser`
--

INSERT INTO `infouser` (`id_user`, `nama`, `kode_alamat`, `tgl_lahir`, `jk`, `no_hp`, `email`) VALUES
('U0001', 'Andi', 'A0001', '2002-07-18', 'Laki-laki', '083802596832', 'andy32@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` char(5) NOT NULL,
  `kode_barang` char(6) NOT NULL,
  `id_user` char(5) NOT NULL,
  `tgl` date NOT NULL,
  `ongkir` int(6) NOT NULL,
  `total_biaya` int(9) NOT NULL,
  `metode` varchar(30) NOT NULL,
  `dibayar` int(9) NOT NULL,
  `kembali` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `kode_barang`, `id_user`, `tgl`, `ongkir`, `total_biaya`, `metode`, `dibayar`, `kembali`) VALUES
('T0001', 'K03B01', 'U0001', '2019-05-17', 30000, 680000, 'COD', 700000, 20000),
('T0002', 'K02B01', 'U0002', '2019-02-12', 50000, 15550000, 'Transfer', 15550000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` char(5) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status_user` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `status_user`) VALUES
('U0001', 'a', 'a', '1'),
('U0002', 'asdasd', '$2y$10$pSKNZzDaSNalP8bHPShkXeHfaYex7rW83cXDj9RfQM9iaX/Y8vSBa', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`kode_alamat`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `detailbarang`
--
ALTER TABLE `detailbarang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `infouser`
--
ALTER TABLE `infouser`
  ADD KEY `kode_alamat` (`kode_alamat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `detailbarang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `infouser`
--
ALTER TABLE `infouser`
  ADD CONSTRAINT `infouser_ibfk_2` FOREIGN KEY (`kode_alamat`) REFERENCES `alamat` (`kode_alamat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infouser_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `detailbarang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
