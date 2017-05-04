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
-- Table structure for table `Platform`
--

DROP TABLE IF EXISTS `Platform`;
CREATE TABLE `Platform` (
  `PlatformID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Year_Released` int(11) NOT NULL,
  `Company` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Platform`:
--

--
-- Dumping data for table `Platform`
--

INSERT INTO `Platform` (`PlatformID`, `Name`, `Year_Released`, `Company`) VALUES
(1, 'Playstation 2', 2000, 'Sony'),
(2, 'Playstation 3', 2006, 'Sony'),
(3, 'Wii', 2006, 'Nintendo'),
(4, 'Nintendo DS', 2004, 'Nintendo'),
(5, 'Xbox 360', 2005, 'Microsoft'),
(6, 'Nintendo 3DS', 2011, 'Nintendo'),
(7, 'Wii U', 2012, 'Nintendo'),
(8, 'Playstation 4', 2013, 'Sony'),
(9, 'GameCube', 2001, 'Nintendo'),
(10, 'Nintendo 64', 1996, 'Nintendo'),
(11, 'Super Nintendo Entertainment System', 1990, 'Nintendo'),
(12, 'Nintendo Entertainment System', 1983, 'Nintendo'),
(13, 'Nintendo Switch', 2017, 'Nintendo'),
(14, 'Xbox', 2001, 'Microsoft'),
(15, 'Xbox One', 2013, 'Sony'),
(16, 'PC', 1962, 'Various'),
(17, 'Sega Genesis', 1988, 'Sega'),
(18, 'Playstation Portable', 2004, 'Sony'),
(19, 'Playstation Vita', 2011, 'Sony');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Platform`
--
ALTER TABLE `Platform`
  ADD PRIMARY KEY (`PlatformID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Platform`
--
ALTER TABLE `Platform`
  MODIFY `PlatformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
