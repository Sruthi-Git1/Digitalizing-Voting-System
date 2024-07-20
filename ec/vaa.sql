-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 04:31 PM
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
-- Database: `ecdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `vaa`
--

CREATE TABLE `vaa` (
  `voterid` varchar(10) NOT NULL,
  `aadhaar` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dateofbirth` date NOT NULL DEFAULT '2004-01-16',
  `constituency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaa`
--

INSERT INTO `vaa` (`voterid`, `aadhaar`, `name`, `fathername`, `gender`, `dateofbirth`, `constituency`) VALUES
('ETX3470832', 284271639403, 'Uppalapati Prabhakar', 'Uppalapati Danayya', 'Male', '1998-06-19', 'kollapur'),
('RLS0414169', 294310986521, 'Daggupati Venkatesh', 'Daggupati Rama Naidu', 'Male', '2001-11-30', 'munugode'),
('ETX3565728', 374623732387, 'Adivi Shivani ', 'Adivi Naresh', 'Female', '1981-07-12', 'kollapur'),
('RLS2124873', 396378422345, 'Ramisetti Rohitha', 'Ramisetti Anand', 'Female', '2002-02-16', 'munugode'),
('ZTS6618714', 439690600467, 'Banda Sanjana Sree', 'Banda Rajaiah', 'Female', '2004-02-06', 'lalbahadurnagar'),
('RLS6732287', 458931988548, 'Boppa Kalyani', 'Boppa Vekkana', 'Female', '1976-02-19', 'munugode'),
('FTP5729987', 497392748294, 'Kanakala Roshan', 'Kanakala Rajiv', 'Male', '1996-08-20', 'malakpet'),
('ZTS7549926', 516882192860, 'Umema Arif', 'Mohammed Arif', 'Female', '2003-09-18', 'lalbahadurnagar'),
('ZTS3568807', 578881692800, 'Gattu Shivani', 'Gattu Shekar', 'Female', '2000-05-12', 'lalbahadurnagar'),
('FTP4387508', 648392002938, 'Nara Mukesh', 'Nara Babu', 'Male', '1985-03-17', 'malakpet'),
('FTP6382018', 739462739473, 'Konidela Pawan', 'Konidela Shankar', 'Male', '1997-09-25', 'malakpet'),
('ZTS7215775', 765756885120, 'Akkala Sai Sruthi', 'Akkala Venkateshwar Goud', 'Female', '2003-07-22', 'lalbahadurnagar'),
('ETX9372947', 782048273947, 'Kakani Praneeth', 'Kakani Rajeshwar', 'Male', '1977-10-26', 'kollapur'),
('RLS2094498', 851824873415, 'Kanchanapally Renu Sree', 'Kanchanapally Ramesh', 'Female', '2003-12-12', 'munugode'),
('ETX3792719', 874627293847, 'Katta Shashi', 'Katta Shiva', 'Male', '1989-08-18', 'kollapur'),
('FTP7396374', 894284759371, 'Gattamaneni Mahesh', 'Gattamaneni Krishna', 'Male', '1999-10-29', 'malakpet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vaa`
--
ALTER TABLE `vaa`
  ADD PRIMARY KEY (`aadhaar`),
  ADD UNIQUE KEY `voterid` (`voterid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
