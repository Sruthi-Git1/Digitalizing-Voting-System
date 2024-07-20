-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 01:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `const`
--

-- --------------------------------------------------------

--
-- Table structure for table `malakpet`
--

CREATE TABLE `malakpet` (
  `voterid` varchar(20) NOT NULL,
  `aadhaar` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `malakpet`
--

INSERT INTO `malakpet` (`voterid`, `aadhaar`, `status`) VALUES
('FTP4387508', 648392002938, 'no'),
('FTP5729987', 497392748294, 'no'),
('FTP6382018', 739462739473, 'no'),
('FTP7396374', 894284759371, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `malakpet`
--
ALTER TABLE `malakpet`
  ADD PRIMARY KEY (`voterid`,`aadhaar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
