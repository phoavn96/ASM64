-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 04:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asmspring`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `name_district` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `name_district`) VALUES
(1, 'Ba Đình'),
(5, 'Hai Bà Trưng'),
(2, 'Hoàn Kiếm'),
(4, 'Hoàng Mai'),
(3, 'Đống Đa');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(15);

-- --------------------------------------------------------

--
-- Table structure for table `street`
--

CREATE TABLE `street` (
  `street_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `creat_at` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_district` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `street`
--

INSERT INTO `street` (`street_id`, `status`, `creat_at`, `description`, `name`, `name_district`) VALUES
(1, 1, 1622769830490, 'ok', 'Lý Nam Đế', 'Ba Đình'),
(2, 1, 1622769830490, 'ok', 'Hoàng Hoa Thám', 'Ba Đình'),
(3, 1, 1622769830490, 'ok', 'Vĩnh Tuy', 'Hai Bà Trưng'),
(4, 1, 1622769830490, 'ok', 'Trần Hưng Đạo', 'Hai Bà Trưng'),
(5, 1, 1622769830490, 'ok', 'Trường Chinh', 'Hoàng Mai'),
(6, 1, 1622769830490, 'ok', 'Giải Phóng', 'Hoàng Mai'),
(7, 1, 1622769830490, 'ok', 'Trần Phú', 'Hoàn Kiếm'),
(8, 1, 1622769830490, 'ok', 'Phan Đình Phùng', 'Hoàn Kiếm'),
(9, 1, 1622769830490, 'ok', 'Nam Đồng', 'Đống Đa'),
(10, 1, 1622769830490, 'ok', 'Lê Đại Hành', 'Đống Đa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`),
  ADD UNIQUE KEY `UK_nlyysi5h19adx6wkspdis62gm` (`name_district`);

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`street_id`),
  ADD KEY `FKk3j8sm558d9webemysoke980y` (`name_district`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `street`
--
ALTER TABLE `street`
  ADD CONSTRAINT `FKk3j8sm558d9webemysoke980y` FOREIGN KEY (`name_district`) REFERENCES `district` (`name_district`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
