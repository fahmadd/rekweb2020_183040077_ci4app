-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 09:54 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `comics`
--

CREATE TABLE `comics` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comics`
--

INSERT INTO `comics` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto_komik.png', '0000-00-00', '2020-10-10'),
(2, 'Yu-Gi-Oh', 'yu-gi-oh', 'Kazuki Takahashi', 'Konami', 'yugioh_komik.jpg', '0000-00-00', '0000-00-00'),
(6, 'Dragon Ball', 'dragon-ball', 'Akira Toriyama', 'Rajawali Grafiti', 'goku-sampul.jpg', '2020-10-13', '2020-10-13'),
(7, 'Detektif Conanssss', 'detektif-conanssss', 'Gosho Aoyama', 'Shonen Star', '1602581610_9a9c0b4baf8217c3505c.jpg', '2020-10-13', '2020-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-13-103008', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1602585455, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Fikri Ahmad Fauzi', 'Jl.Bandung no 40', '2020-10-13 05:52:59', '2020-10-13 05:52:59'),
(2, 'Fikri Ahmad Fauzi', 'Jl.Bandung no 40', '2020-10-13 05:55:56', '2020-10-13 05:55:56'),
(3, 'Rizki Ahmad Fauzi', 'Jl.Bandung no 40', '2020-10-13 05:55:56', '2020-10-13 05:55:56'),
(4, 'Adit Ahmad Fauzi', 'Jl.Bandung no 40', '2020-10-13 05:55:56', '2020-10-13 05:55:56'),
(5, 'Prof. Cornell Zboncak', '182 Marty Springs Apt. 500\nSouth Yvonne, ME 40788-1274', '2020-10-13 06:04:42', '2020-10-13 06:04:42'),
(6, 'Lea Paucek', '712 Nickolas Walks Suite 272\nWest Theodorachester, NM 15749', '2012-12-10 19:55:59', '2020-10-13 06:07:25'),
(7, '青田 あすか', '3712358  島根県井上市北区渚町三宅3-7-6', '1998-06-11 00:26:58', '2020-10-13 06:10:33'),
(8, 'Alice Klein', '70, boulevard de Raynaud\n38150 Laine-la-Forêt', '1973-10-08 12:15:42', '2020-10-13 06:10:58'),
(9, 'Bakijan Sitorus', 'Psr. Flores No. 282, Ternate 26526, KepR', '2005-09-27 20:15:24', '2020-10-13 06:11:12'),
(10, 'Galak Kasusra Nainggolan', 'Kpg. Tambun No. 302, Cimahi 46734, SulTeng', '1999-06-05 09:42:18', '2020-10-13 06:12:35'),
(11, 'Rina Nuraini', 'Psr. Sudiarto No. 936, Batam 50134, KalTim', '2007-07-09 02:23:45', '2020-10-13 06:12:35'),
(12, 'Jasmani Reksa Latupono M.Farm', 'Dk. Bagis Utama No. 698, Pagar Alam 27768, Riau', '1994-01-29 02:55:38', '2020-10-13 06:12:35'),
(13, 'Carla Rahmawati', 'Psr. Perintis Kemerdekaan No. 818, Cimahi 59392, KalUt', '2006-01-11 15:49:52', '2020-10-13 06:12:35'),
(14, 'Sidiq Kajen Nainggolan S.Kom', 'Kpg. Sutarjo No. 157, Mataram 93181, KalTeng', '2012-03-16 09:21:37', '2020-10-13 06:12:35'),
(15, 'Titin Hassanah', 'Ki. Krakatau No. 918, Batam 51152, KalSel', '1991-12-23 12:56:48', '2020-10-13 06:12:35'),
(16, 'Kurnia Haryanto', 'Jr. Basudewo No. 413, Pangkal Pinang 13005, SulBar', '1999-05-26 14:40:12', '2020-10-13 06:12:35'),
(17, 'Perkasa Kawaya Hidayat S.I.Kom', 'Ds. Yap Tjwan Bing No. 450, Singkawang 52271, NTB', '1976-11-25 14:13:24', '2020-10-13 06:12:35'),
(18, 'Marsudi Manullang', 'Dk. Baiduri No. 633, Blitar 55645, KalTim', '2010-10-01 06:34:59', '2020-10-13 06:12:35'),
(19, 'Bahuwirya Samosir', 'Kpg. Gegerkalong Hilir No. 129, Batu 16342, SulSel', '2016-12-03 10:30:04', '2020-10-13 06:12:35'),
(20, 'Jasmin Pertiwi S.T.', 'Kpg. Ronggowarsito No. 151, Kotamobagu 50631, SulUt', '1982-05-25 03:53:48', '2020-10-13 06:12:35'),
(21, 'Tedi Marwata Lazuardi M.M.', 'Dk. Dago No. 476, Jambi 71129, Bengkulu', '2018-06-10 15:43:21', '2020-10-13 06:12:35'),
(22, 'Wani Purnawati', 'Psr. Dago No. 376, Singkawang 49091, SulTeng', '1992-09-11 23:32:25', '2020-10-13 06:12:35'),
(23, 'Rika Wastuti', 'Jr. Nanas No. 387, Cilegon 12867, Bengkulu', '1977-10-19 21:32:14', '2020-10-13 06:12:35'),
(24, 'Janet Nasyidah', 'Dk. Suharso No. 598, Palembang 77480, MalUt', '2009-05-02 02:55:22', '2020-10-13 06:12:35'),
(25, 'Viman Kawaca Siregar S.Kom', 'Dk. Bahagia No. 940, Semarang 76807, JaBar', '1992-05-23 00:59:58', '2020-10-13 06:12:35'),
(26, 'Eka Suci Padmasari M.Farm', 'Psr. Kebonjati No. 795, Pariaman 44148, BaBel', '2018-12-04 03:30:33', '2020-10-13 06:12:35'),
(27, 'Cornelia Permata', 'Ki. Yoga No. 27, Padangsidempuan 71784, Papua', '2002-08-21 01:09:41', '2020-10-13 06:12:35'),
(28, 'Tami Yulianti', 'Gg. Wahid Hasyim No. 484, Prabumulih 17495, BaBel', '1992-09-23 05:51:21', '2020-10-13 06:12:35'),
(29, 'Salwa Nasyiah', 'Gg. Yosodipuro No. 899, Tanjung Pinang 95750, PapBar', '2008-01-05 09:30:52', '2020-10-13 06:12:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comics`
--
ALTER TABLE `comics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
