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
-- Table structure for table `G_CreatedAt_DS`
--

CREATE TABLE `G_CreatedAt_DS` (
  `StudioID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `G_CreatedAt_DS`
--

INSERT INTO `G_CreatedAt_DS` (`StudioID`, `GameID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 12),
(3, 13),
(4, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(6, 22),
(7, 23),
(7, 24),
(7, 25),
(8, 26),
(8, 27),
(8, 28),
(9, 29),
(10, 30),
(11, 31),
(11, 32),
(12, 26),
(13, 33),
(13, 34),
(13, 35),
(13, 36),
(13, 37),
(14, 41),
(14, 42),
(14, 43),
(15, 44),
(15, 46),
(15, 47),
(15, 50),
(16, 52),
(16, 53),
(16, 54),
(16, 55),
(17, 56),
(18, 57),
(18, 58),
(18, 59),
(18, 60),
(18, 61),
(19, 62),
(19, 63),
(19, 64),
(19, 65),
(19, 66);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `G_CreatedAt_DS`
--
ALTER TABLE `G_CreatedAt_DS`
  ADD PRIMARY KEY (`GameID`,`StudioID`),
  ADD KEY `StudioID` (`StudioID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `G_CreatedAt_DS`
--
ALTER TABLE `G_CreatedAt_DS`
  ADD CONSTRAINT `G_CreatedAt_DS_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`),
  ADD CONSTRAINT `G_CreatedAt_DS_ibfk_2` FOREIGN KEY (`StudioID`) REFERENCES `Development_Studio` (`StudioID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
