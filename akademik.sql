-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2018 at 06:40 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(3) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nama_ibu_k` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `username`, `password`, `nama`, `umur`, `alamat`, `telp`, `email`, `tgl_lahir`, `kode_pos`, `nama_ibu_k`, `gender`) VALUES
(1, 'cust1', '91ec1f9324753048c0096d036a694f86', 'Younglex', 20, 'Sampangan', '087766525', 'cust@gmail.com', '', '', '', ''),
(3, 'reza', '827ccb0eea8a706c4c34a16891f84e7b', 'RezaArap', 22, 'jakarta', '23423423', 'reza@yahoo.com', '', '', '', ''),
(4, 'thata', '827ccb0eea8a706c4c34a16891f84e7b', 'Thata', 28, 'jakarta', '345345345', 'tt@ymail.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `prodi` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `prodi`) VALUES
('1501530078', 'Candra Dwi Saputra', 'TI-S1'),
('1501530010', 'Endy Suryo Laksono', 'TI-S1'),

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kdmk` char(6) NOT NULL,
  `nmmk` varchar(35) NOT NULL,
  `sks` int(11) NOT NULL,
  `prodi` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kdmk`, `nmmk`, `sks`, `prodi`) VALUES
('112233', 'Pemrograman Internet I', 3, 'TI-D3'),
('104531', 'Pemrograman Database', 3, 'TI-D3'),
('812345', 'Basis Data Lanjut', 3, 'TI-S1'),
('780123', 'Interpersonal Skill', 2, 'TI-S1'),
('672134', 'Kewirausahaan', 2, 'TI-S1'),
('671234', 'PTK', 3, 'TI-S1'),
('123211', 'Algoritma & Pemrograman', 3, 'TI-S1');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `thakd` char(5) NOT NULL,
  `nim` char(10) NOT NULL,
  `kdmk` char(6) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`thakd`, `nim`, `kdmk`, `nilai`) VALUES
('20122', '09.3.00012', '112233', NULL),
('20122', '09.5.00056', '780123', NULL),
('20122', '09.5.00056', '812345', NULL),
('20122', '10.5.00001', 'M01', NULL),
('20122', '10.5.00001', 'M02', NULL),
('20122', '11.5.00001', 'M01', NULL),
('20122', '11.5.00001', 'M02', NULL),
('20122', '11.5.00001', 'M03', NULL),
('20122', '12.5.00001', 'M04', NULL),
('20122', '12.5.00001', 'M05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kdmk`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`thakd`,`nim`,`kdmk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
