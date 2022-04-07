-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Okt 2021 pada 05.50
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apk_materai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `materai`
--

CREATE TABLE `materai` (
  `id` int(11) NOT NULL,
  `nilai` varchar(100) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materai`
--

INSERT INTO `materai` (`id`, `nilai`, `harga`, `foto`) VALUES
(8, '6000', '7000', ''),
(9, '10000', '12000', ''),
(10, '3000', '4.000', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `no_hp`, `password`) VALUES
(2, 'raihan', '09877765342', 'Ag11'),
(3, 'lala', '098432155567', 'l21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `tanggal` date NOT NULL,
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pegawai` varchar(40) NOT NULL,
  `jenis_materai` text NOT NULL,
  `banyaknya` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `foto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`tanggal`, `id`, `nama`, `pegawai`, `jenis_materai`, `banyaknya`, `jumlah`, `foto`) VALUES
('2021-10-14', 1, 'utika futami', 'iis', '10.000', '2', '24.000', ''),
('2021-10-13', 5, 'nurul', 'dewi', '10.000', '50', '600000', ''),
('2021-10-01', 8, 'utika', 'agung g', '6000', '2', '14.000', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materai`
--
ALTER TABLE `materai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materai`
--
ALTER TABLE `materai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
