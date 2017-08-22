-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2017 at 08:53 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meechok`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ser` int(11) NOT NULL,
  `id_card` int(14) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `hbd` date NOT NULL,
  `address` text NOT NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ser`, `id_card`, `fname`, `lname`, `hbd`, `address`, `tel`, `email`, `password`, `type`) VALUES
(1, 2147483647, 'Meechok', 'Admin', '2017-08-18', 'Chaingmai', '0987654321', 'admin@admin', 'admin', '0'),
(2, 2147483647, 'Meechok', 'Member', '2017-08-18', 'Chaingmai', '0987654321', 'user@user', 'user', '0');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `no.` int(11) NOT NULL,
  `ser_zone` int(11) NOT NULL COMMENT 'zone number',
  `id_card` int(14) NOT NULL COMMENT 'เลข ปชช',
  `pic_file` blob NOT NULL COMMENT 'ไฟล์รูปภาพ(สลิป)',
  `pay_time` datetime NOT NULL COMMENT 'วันเวลาที่จ่ายเงิน',
  `channel` varchar(50) NOT NULL COMMENT 'bank , credit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `no.` int(11) NOT NULL,
  `ser_zone` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `id_card` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `ser_zone` int(11) NOT NULL,
  `id_zone` varchar(2) NOT NULL,
  `num_zone` int(11) NOT NULL,
  `name_zone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`ser_zone`, `id_zone`, `num_zone`, `name_zone`) VALUES
(1, 'A', 1, 'อาหาร'),
(2, 'A', 2, 'อาหาร'),
(3, 'A', 3, 'อาหาร'),
(4, 'A', 4, 'อาหาร'),
(5, 'B', 1, 'ผลไม้'),
(6, 'B', 2, 'ผลไม้'),
(7, 'B', 3, 'ผลไม้'),
(8, 'B', 4, 'ผลไม้'),
(9, 'C', 1, 'Gifshop'),
(10, 'C', 2, 'Gifshop'),
(11, 'C', 3, 'Gifshop'),
(12, 'C', 4, 'Gifshop'),
(13, 'D', 1, 'เสื้อผ้า'),
(14, 'D', 2, 'เสื้อผ้า'),
(15, 'D', 3, 'เสื้อผ้า'),
(16, 'D', 4, 'เสื้อผ้า');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ser`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`no.`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`no.`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`ser_zone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `ser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `no.` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `no.` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `ser_zone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
