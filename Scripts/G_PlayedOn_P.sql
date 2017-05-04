-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2017 at 07:38 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kcgames`
--

-- --------------------------------------------------------

--
-- Table structure for table `G_PlayedOn_P`
--

CREATE TABLE `G_PlayedOn_P` (
  `PlatformID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `G_PlayedOn_P`
--

INSERT INTO `G_PlayedOn_P` (`PlatformID`, `GameID`) VALUES
(1, 28),
(2, 12),
(2, 13),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 34),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 9),
(3, 10),
(3, 11),
(3, 15),
(3, 16),
(3, 19),
(3, 20),
(3, 22),
(3, 24),
(3, 25),
(3, 26),
(3, 28),
(3, 29),
(3, 30),
(3, 33),
(3, 52),
(3, 53),
(3, 54),
(3, 55),
(4, 7),
(4, 8),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 21),
(4, 22),
(4, 24),
(4, 25),
(4, 26),
(4, 57),
(4, 58),
(4, 59),
(4, 60),
(5, 20),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 34),
(5, 52),
(5, 61),
(5, 62),
(5, 63),
(5, 64),
(5, 65),
(5, 66),
(6, 61),
(7, 14),
(7, 15),
(7, 16),
(7, 24),
(7, 25),
(7, 26),
(7, 28),
(7, 31),
(7, 32),
(7, 34),
(7, 35),
(7, 36),
(7, 37),
(7, 38),
(7, 39),
(7, 40),
(7, 41),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(7, 46),
(7, 47),
(7, 48),
(7, 49),
(7, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `G_PlayedOn_P`
--
ALTER TABLE `G_PlayedOn_P`
  ADD PRIMARY KEY (`GameID`,`PlatformID`),
  ADD KEY `PlatformID` (`PlatformID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `G_PlayedOn_P`
--
ALTER TABLE `G_PlayedOn_P`
  ADD CONSTRAINT `G_PlayedOn_P_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`),
  ADD CONSTRAINT `G_PlayedOn_P_ibfk_2` FOREIGN KEY (`PlatformID`) REFERENCES `Platform` (`PlatformID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
