-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 12:34 PM
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
-- Table structure for table `kollapur`
--

CREATE TABLE `kollapur` (
  `voterid` varchar(20) NOT NULL,
  `aadhaar` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kollapur`
--

INSERT INTO `kollapur` (`voterid`, `aadhaar`, `status`) VALUES
('ETX3470832', 284271639403, 'no'),
('ETX3565728', 374623732387, 'no'),
('ETX3792719', 874627293847, 'no'),
('ETX9372947', 782048273947, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kollapur`
--
ALTER TABLE `kollapur`
  ADD PRIMARY KEY (`voterid`,`aadhaar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
