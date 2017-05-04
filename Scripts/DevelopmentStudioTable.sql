
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
-- Table structure for table `Development_Studio`
--

DROP TABLE IF EXISTS `Development_Studio`;
CREATE TABLE `Development_Studio` (
  `StudioID` int(11) NOT NULL,
  `Address` varchar(75) NOT NULL,
  `Studio_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Development_Studio`:
--

--
-- Dumping data for table `Development_Studio`
--

INSERT INTO `Development_Studio` (`StudioID`, `Address`, `Studio_Name`) VALUES
(1, '207 E Monroe St, Thomasville, GA 31792', 'Red Fly Studio'),
(2, '12345 N Lamar Blvd #300, Austin, TX 78753', 'Retro Studios'),
(3, '5000 Plaza On The Lk Ste 350, Austin, TX 78746-1092', 'Bluepoint Games'),
(4, '8300 N Mo Pac Expy Austin, TX 78759', 'BioWare Austin'),
(5, '333 S. Jefferson Ave. Suite 104, Springfield, MO 65806', 'Black Lantern Games'),
(6, '9111 Jollyville Road #212-B, Austin, TX 78759', 'Blazing Lizard'),
(7, 'P.O. Box 302799, Austin TX 78703', 'Certain Affinity'),
(8, '6500 Riverplace Boulevard, Austin, TX 78703', 'Edge of Reality'),
(9, 'PO Box 3109 #91828, Houston, TX 77253', 'Ghostfire Games'),
(10, '7800 Shoal Creek BLVD STE 250E, Austin TX 78703', 'Junction Point Games (Disney Interactive)'),
(11, 'P.O. Box 10612, Austin, TX 78766', 'Iron Will Games'),
(12, '1611 Chisholm Trail Suite 650, Round Rock TX 78681', 'Midnight Studios'),
(13, '3520 Executive Center Drive Suite 159. Austin, TX 78703', 'Mock Science'),
(14, '6801 N. Capital of Texas Hwy, Bldg 1 Austin, TX 78731', 'NCsoft Austin'),
(15, '12405 John Simpson Court. Austin, TX 78732', 'Pangea Software'),
(16, '9737 Great Hills Trail #300, Austin, TX 78759', 'Panic Button Games'),
(17, '2716 Charlesworth Dr, Austin, TX 78745-5108', 'Playtechtonics'),
(18, '9513 Lynnhaven Street, Austin, TX 78749', 'Renegade Kid'),
(19, '3601 S Congress Ave b300, Austin, TX 78704', 'Twisted Pixel Games');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Development_Studio`
--
ALTER TABLE `Development_Studio`
  ADD PRIMARY KEY (`StudioID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Development_Studio`
--
ALTER TABLE `Development_Studio`
  MODIFY `StudioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
