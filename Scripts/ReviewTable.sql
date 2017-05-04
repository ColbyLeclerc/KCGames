-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2017 at 11:35 AM
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
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
CREATE TABLE `Review` (
  `ReviewID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Post_Date` datetime NOT NULL,
  `Author` varchar(25) NOT NULL,
  `Star_Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Review`:
--   `GameID`
--       `Game` -> `GameID`
--

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`ReviewID`, `GameID`, `Description`, `Title`, `Rating`, `Post_Date`, `Author`, `Star_Rating`) VALUES
(1, 1, 'This game is meh', 'The Meh Game', 322, '2017-04-12 00:00:00', 'Jacob', 3),
(2, 1, 'This game is meh', 'The Meh Game', 322, '2017-04-12 00:00:00', 'Jacob', 3),
(3, 1, 'Great story, amazing creators', 'Good game', 18, '2017-04-12 00:00:00', 'Alice', 5),
(4, 2, 'Ive built better games than this, and im 14.', 'Poor excuse for a game', 1, '2017-04-13 00:00:00', 'Michael', 1),
(5, 3, 'GG: Good Game', 'GG', 32, '2017-04-16 00:00:00', 'Peter', 4),
(6, 4, 'I recommend this game to all my friends and family!!!!', 'Yay!!', 322, '2017-04-16 00:00:00', 'Jill', 5),
(7, 5, 'I cant login', 'Cant login to game', 58, '2017-04-13 00:00:00', 'Janice', 1),
(8, 6, 'I got an email to make a review. Where am I? What is this review site anyways?!?!', 'Cant find my keys', 58, '2017-04-11 00:00:00', 'Darlene', 2),
(9, 7, 'Who makes games like this? The story is NON EXISTANT', 'No Story', 12, '2017-04-01 00:00:00', 'Berta', 1),
(10, 8, 'Love this game!', 'Love IT', 98, '2017-04-02 00:00:00', 'Sally', 2),
(11, 9, 'This game is my coffee. Love playing it daily.', 'Good game', 83, '2017-04-03 00:00:00', 'Yerkso', 4),
(12, 10, 'Average. Nothing special.', 'The game is average', 44, '2017-02-01 00:00:00', 'Vander', 3),
(13, 11, 'The BEST game EVER', 'BEST GAME', 3, '2017-04-23 00:00:00', 'Kali', 5),
(14, 12, 'Poor performance on my GTX 1080. Like did they even test the game!?!?!', 'Low FPS', 993, '2017-02-12 00:00:00', 'Kerry', 1),
(15, 12, 'Not sure what that Kerry reviewer is saying, but this game is butter smooth on my GTX 1070. Also have an intel i7 4700k.', 'Smooth sailing', 33, '2017-03-01 00:00:00', 'Wallace', 5),
(16, 13, 'Stop mailing me to write a review!!!!', 'Stupid mailing lists', 2, '2017-03-02 00:00:00', 'Ben', 1),
(17, 14, 'This surreal game was exceptionally well built, with beautiful scenes and FPS.', 'Twas a brilliant experience', 89, '2017-04-04 00:00:00', 'Bob', 5),
(18, 15, 'WHO AM I', 'The Question', 322, '2017-03-05 00:00:00', 'Nigel', 1),
(19, 16, 'Just want to pop in here to say my name is in the credits. WOOT WOOT!', 'My Name is in the credits', 2323, '2017-04-12 00:00:00', 'Bill', 5),
(20, 19, 'Great creators, amazing story', 'Good game', 433, '2017-04-12 00:00:00', 'Beatrice', 5),
(21, 20, 'Meh Fallout 4 is better than this game, and thats saying somthing.', 'Meh', 14, '2017-04-13 00:00:00', 'Colby', 1),
(22, 23, 'Decent game', 'Okay game', 342, '2017-04-16 00:00:00', 'Cooper', 4),
(23, 24, 'Amazing GAME', 'Yay!!', 22, '2017-04-16 00:00:00', 'Mike', 5),
(24, 25, 'I cant login', 'Cant login to game', 89, '2017-04-13 00:00:00', 'Janice', 1),
(25, 28, 'I got an email to make a review. Where am I? What is this review site anyways?!?!', 'Cant find my keys', 58, '2017-04-11 00:00:00', 'Perry', 2),
(26, 31, 'Who makes games like this? The story is NON EXISTANT', 'No Story', 12, '2017-04-01 00:00:00', 'My Name', 1),
(27, 33, 'Love this game!', 'Love IT', 98, '2017-04-02 00:00:00', 'Allice', 2),
(28, 35, 'This game is my coffee. Love playing it daily.', 'Good game', 83, '2017-04-03 00:00:00', 'Sup3R_us3R_98', 4),
(29, 40, 'Average. Nothing special.', 'The game is average', 67, '2017-02-01 00:00:00', 'Vander', 3),
(30, 41, 'The BEST game EVER', 'BEST GAME', 3, '2017-04-23 00:00:00', 'Jerico', 5),
(31, 43, 'Poor performance on my GTX 1080. Like did they even test the game!?!?!', 'Low FPS', 993, '2017-02-12 00:00:00', 'Phillipae', 1),
(32, 44, 'Not sure what that Kerry reviewer is saying, but this game is butter smooth on my GTX 1070. Also have an intel i7 4700k.', 'Smooth sailing', 33, '2017-03-01 00:00:00', 'John', 54),
(33, 45, 'Stop mailing me to write a review!!!!', 'Stupid mailing lists', 42, '2017-03-02 00:00:00', 'Hermini', 1),
(34, 46, 'This surreal game was exceptionally well built, with beautiful scenes and FPS.', 'Twas a brilliant experience', 89, '2017-04-04 00:00:00', 'Vicci', 5),
(35, 47, 'WHO AM I', 'The Question', 322, '2017-03-05 00:00:00', 'Jackaline', 1),
(36, 48, 'The average game is average.', 'Average', 322, '2017-04-12 00:00:00', 'Perry', 3),
(37, 50, 'if (isGoodGame){ review.setStarRating(5); }', 'isGoodGame()', 18, '2017-04-12 00:00:00', 'Nickel', 5),
(38, 51, 'Ive built better games than this, and im 9.', 'Bad excuse for a game', 1, '2017-04-13 00:00:00', 'Mark', 1),
(39, 52, 'GG: Good Game', 'GG', 32, '2017-04-16 00:00:00', 'Heather', 4),
(40, 54, 'I recommend this game to all my pets!', 'Yay!!', 322, '2017-04-16 00:00:00', 'Mike', 5),
(41, 48, 'The average game is average.', 'Average', 322, '2017-04-12 00:00:00', 'Perry', 3),
(42, 50, 'if (isGoodGame){ review.setStarRating(5); }', 'isGoodGame()', 18, '2017-04-12 00:00:00', 'Nickel', 5),
(43, 51, 'Ive built better games than this, and im 9.', 'Bad excuse for a game', 1, '2017-04-13 00:00:00', 'Mark', 1),
(44, 52, 'GG: Good Game', 'GG', 32, '2017-04-16 00:00:00', 'Heather', 4),
(45, 54, 'I recommend this game to all my pets!', 'Yay!!', 322, '2017-04-16 00:00:00', 'Mike', 5),
(46, 55, '*cough*', '*burp*', 58, '2017-04-13 00:00:00', 'Perlite', 1),
(47, 59, 'Never got this game, but heard its bad', 'Cant find my keys', 58, '2017-04-11 00:00:00', 'Whom', 2),
(48, 60, 'Who makes games like this? The story is NON EXISTANT', 'No Story', 12, '2017-04-01 00:00:00', 'Jerry', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `GameID` (`GameID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Review`
--
ALTER TABLE `Review`
  ADD CONSTRAINT `Review_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
