-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 03:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorstable`
--

CREATE TABLE `authorstable` (
  `authorID` int(11) NOT NULL,
  `authorFirstName` varchar(255) DEFAULT NULL,
  `authorLastName` varchar(255) DEFAULT NULL,
  `authorEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authorstable`
--

INSERT INTO `authorstable` (`authorID`, `authorFirstName`, `authorLastName`, `authorEmail`) VALUES
(1, 'Chirag', 'Bolakani', 'chiragbolakani@gmail.com'),
(2, 'Nayan', 'Bhatia', 'nayan@mail.com'),
(3, 'Dharmin', 'Chothani', 'dharmin@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorstable`
--
ALTER TABLE `authorstable`
  ADD PRIMARY KEY (`authorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorstable`
--
ALTER TABLE `authorstable`
  MODIFY `authorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
