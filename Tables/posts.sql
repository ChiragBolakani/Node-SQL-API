-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 03:32 PM
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `postTitle` text NOT NULL,
  `postDescription` text NOT NULL,
  `authorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `postTitle`, `postDescription`, `authorID`) VALUES
(1, 'MongoDB Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 1),
(26, 'Python Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 3),
(28, 'Java Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 2),
(31, 'Kotlin Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 1),
(32, 'OOPS Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 3),
(33, 'Web Dev Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 1),
(34, 'PHP Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 2),
(36, 'NodeJS Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 1),
(37, 'SQL Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 3),
(38, 'Django Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 2),
(39, 'ASP .NET Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 3),
(40, 'C++ Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 2),
(42, 'GRPC Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 2),
(43, 'Deep Learning Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 1),
(44, 'Machine Learning Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 3),
(47, 'NodeMailer Tutorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
