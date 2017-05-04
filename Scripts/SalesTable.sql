-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2017 at 12:07 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
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
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
CREATE TABLE `Sales` (
  `SalesID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL,
  `Unit_Price` double NOT NULL,
  `Units_Sold` int(11) NOT NULL,
  `Total_Revenue` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Sales`:
--   `GameID`
--       `Game` -> `GameID`
--

--
-- Dumping data for table `Sales`
--

INSERT INTO `Sales` (`SalesID`, `GameID`, `Unit_Price`, `Units_Sold`, `Total_Revenue`) VALUES
(1, 1, 19.99, 28393, 567568),
(2, 1, 19.99, 28393, 567568),
(3, 2, 12.55, 233, 2924.15),
(4, 3, 9.99, 438927, 4384880.73),
(5, 4, 59.99, 6700000, 401933000),
(6, 5, 39.99, 98, 3919.02),
(7, 6, 79.99, 1987, 158940.13),
(8, 7, 29.99, 887, 26601.13),
(9, 8, 84.76, 5569, 472028.44),
(10, 9, 23.84, 2331, 55582.93),
(11, 10, 19.98, 7424, 148341.38),
(12, 11, 12.01, 28393, 567568),
(13, 12, 49.99, 583, 29144.6),
(14, 13, 9.99, 8793, 87847.05),
(15, 14, 15, 9274, 139108.31),
(16, 15, 23.49, 3760, 88311.55),
(17, 16, 8.98, 3902, 35036.55),
(18, 17, 9.99, 6000, 59935.37),
(19, 18, 10, 5519, 55186.29),
(20, 19, 12, 4459, 53506.94),
(21, 20, 4.85, 6492, 31488.62),
(22, 21, 9.98, 8306, 82889.18),
(23, 22, 9.99, 63, 632.03),
(24, 23, 12.49, 511, 6387.27),
(25, 24, 6.99, 6475, 45261.02),
(26, 25, 6.99, 6475, 45261.02),
(27, 26, 0.99, 6376, 6311.94),
(28, 27, 8.99, 2685, 24138.58),
(29, 28, 4.49, 3766, 16909.8),
(30, 29, 2.99, 9175, 27431.78),
(31, 30, 1.99, 6480, 12895.66),
(32, 31, 7.99, 3920, 31321.27),
(33, 32, 4.99, 7027, 35063.43),
(34, 33, 12.99, 7750, 100668.71),
(35, 34, 8.99, 3192, 28692.7),
(36, 35, 0.99, 7235, 50575.26),
(37, 36, 59.99, 7411, 444581.24),
(38, 37, 29.99, 4574, 137164.1),
(39, 38, 34.99, 6877, 240631.16),
(40, 39, 44.45, 5959, 264862.5),
(41, 40, 8.99, 6202, 55757.95),
(42, 41, 6.99, 7546, 52747.95),
(43, 42, 39.99, 722, 28887.15),
(44, 43, 6.99, 6202, 55757.95),
(45, 44, 39.99, 722, 28887.15),
(46, 45, 23.99, 8507, 204080.33),
(47, 46, 9.99, 6164, 61575.33),
(48, 47, 8.99, 613, 5514.13),
(49, 48, 9.99, 8501, 84922.44),
(50, 49, 6.99, 3100, 21666.85),
(51, 50, 29.99, 4401, 131984.83),
(52, 51, 24.99, 9069, 226636.77),
(53, 52, 59.99, 1010, 60602.38),
(54, 53, 34.99, 9516, 332982.22),
(55, 54, 34.99, 9516, 332982.22),
(56, 55, 79.99, 7919, 633453.24),
(57, 56, 19.99, 5255, 633453.24),
(58, 57, 54.99, 3377, 185714.41),
(59, 58, 9.99, 3265, 32621.11),
(60, 59, 23.49, 6287, 147670.5),
(61, 60, 8.99, 6232, 56022.24),
(62, 61, 7.99, 2751, 21977.14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Sales`
--
ALTER TABLE `Sales`
  ADD PRIMARY KEY (`SalesID`),
  ADD KEY `GameID` (`GameID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Sales`
--
ALTER TABLE `Sales`
  MODIFY `SalesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Sales`
--
ALTER TABLE `Sales`
  ADD CONSTRAINT `Sales_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
