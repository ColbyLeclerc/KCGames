-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2017 at 10:21 PM
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
-- Table structure for table `Development_Studio`
--

CREATE TABLE `Development_Studio` (
  `StudioID` int(11) NOT NULL,
  `Address` varchar(75) NOT NULL,
  `Studio_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `Game`
--

CREATE TABLE `Game` (
  `GameID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Genre` varchar(25) NOT NULL,
  `Release_Date` date NOT NULL,
  `Rating` varchar(5) NOT NULL,
  `Description` varchar(512) NOT NULL,
  `Stock_Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Game`
--

INSERT INTO `Game` (`GameID`, `Title`, `Genre`, `Release_Date`, `Rating`, `Description`, `Stock_Status`) VALUES
(1, 'Thor: God of Thunder', 'Action/Adventure', '2011-04-28', 'T', 'The game begins in medias res with Asgard being invaded by the J?tun (frost giants from Niflheim). Thor, meanwhile, is training with Sif and his brother Loki. Their training is interrupted, however, by the arrival of the j?tuns. While Loki leaves to inform Odin about the invasion, Thor is left to fight alone after Sif is frozen by one of the arriving j?tun.', 'In Stock'),
(2, 'Star Wars: The Force Unleashed II', 'Action/Adventure', '2010-10-26', 'T', 'Players control a clone of Starkiller, who himself was a secret apprentice to Darth Vader in The Force Unleashed. The clone embarks on a quest to find his identity and find Starkiller\'s love interest, Juno Eclipse', 'Out of Stock'),
(3, 'Mushroom Men: The Spore Wars', 'Action', '2008-10-28', 'E', 'The Mushroom Men video games were developed for Nintendo on the Nintendo DS and Wii systems.[1] Both games were developed by Red Fly Studio and published by Gamecock Media Group. The story revolves around a civil war between 3-inch-high (76 mm) Mushroom Men in a human world.', 'In Stock'),
(4, 'Ghostbusters: The Video Game', 'Action/Adventure', '2009-06-16', 'T', 'The game follows the player\'s character as a new recruit in the Ghostbusters, a team of parapsychologists who pursue and capture ghosts. The game features elements of typical third-person shooters, but instead of using a traditional gun, players are equipped with a "Proton Pack", a laser beam-like weapon, and a ghost trap to fight and capture ghosts', 'Out of Stock'),
(5, 'Food Network: Cook or Be Cooked', 'Simulation', '2009-11-03', 'E', 'Cook or Be Cooked contains twelve different meals to prepare; the player must go through recipes and complete the meals by completing minigames correctly. The game features a single player mode, a "pass and play" mode allowing up to four players to prepare one meal, and a multiplayer cook-off mode between two people', 'In Stock'),
(6, 'Fishing Master World Tour', 'Sports', '2007-03-31', 'E', 'A fishing video game for the Nintendo\'s Wii console that was released on September 18, 2007.[1] In this game the player uses the Wii Remote to fish. Most of the fish players can catch are real, but there are some fictional fish can be caught as the game progresses', 'In Stock'),
(7, 'Mushroom Men: Rise of the Fungi', 'Action/Adventure', '2008-10-28', 'E', 'The Mushroom Men video games were developed for Nintendo on the Nintendo DS and Wii systems.[1] Both games were developed by Red Fly Studio and published by Gamecock Media Group. The story revolves around a civil war between 3-inch-high (76 mm) Mushroom Men in a human world', 'In Stock'),
(8, 'Ghostbusters: The Video Game', 'Action/Adventure', '2009-06-16', 'E', 'The game follows the player\'s character as a new recruit in the Ghostbusters, a team of parapsychologists who pursue and capture ghosts. The game features elements of typical third-person shooters, but instead of using a traditional gun, players are equipped with a "Proton Pack", a laser beam-like weapon, and a ghost trap to fight and capture ghosts.', 'Out of Stock'),
(9, 'Donkey Kong Country Returns', 'Platformer', '2010-11-21', 'E', 'The game\'s story focuses on a group of evil creatures called Tikis known as the Tiki Tak Tribe that arrive on Donkey Kong Island,[11] and hypnotize the island\'s animals to steal Donkey Kong\'s bananas. This forces him to retrieve the hoard with the help of his nephew Diddy Kong. Donkey Kong Country Returns is the series\' first traditional home console installment since Donkey Kong Jungle Beat (2005), and also the first Donkey Kong Country entry not to involve video game developer Rare during its development.', 'Out of Stock'),
(10, 'Metroid Prime Trilogy', 'First Person Shooter', '2009-08-24', 'T', 'The compilation was first announced by Nintendo in May 2009, and was released in North America on August 24, 2009; in Europe on September 4, 2009; and in Australia on October 15, 2009. It was not released in Japan, because the Prime and Echoes ports were released as standalone games in the New Play Control!', 'Out of Stock'),
(11, 'Metroid Prime 3: Corruption', 'First Person Shooter', '2007-08-27', 'T', 'The story of Corruption is set six months after the events of Metroid Prime 2: Echoes, and follows bounty hunter Samus Aran as she assists the Galactic Federation in its fight against the Space Pirates. While fending off a Space Pirate assault, Samus and her fellow bounty hunters are attacked by her doppelg?nger, Dark Samus, who incapacitates them with a mutagenic material called Phazon.', 'Out of Stock'),
(12, 'Blast Factor', 'Shooter', '2010-05-14', 'T', 'In its pacing and structure, Alan Wake is similar to a thriller television series, with episodes that contain plot twists and cliffhangers. The game itself consists of six episodes, and the fiction is continued by two special episodes, titled "The Signal" and "The Writer", that were made available as downloadable content (DLC) within the same year of the game\'s release.', 'In Stock'),
(13, 'God of War Collection', 'Action/Adventure', '2009-11-17', 'T', 'God of War is an action-adventure video game series loosely based on Greek mythology. Debuting in 2005, the series has become a flagship title for the PlayStation brand and the character Kratos is one of its most popular characters. The series consists of seven games across multiple platforms', 'Out of Stock'),
(14, 'Star Wars: The Old Republic', 'MMORPG', '2011-12-20', 'T', 'This story takes place in the Star Wars fictional universe shortly after the establishment of a tenuous peace between the re-emergent Sith Empire and the Galactic Republic. The game features eight different classes. Each of the eight classes has a three act storyline that progresses as the character levels up.', 'Out of Stock'),
(15, 'Elmo\'s A to Zoo Adventure', 'Edutainment', '2010-10-19', 'E', 'In Sesame Street: Elmo\'s A-to-Zoo Adventure, kids head to the zoo with Elmo, Zoe and their animal friends, as they explore games based on a variety of literacy skills, including letter identification, letter sounds and word families', 'In Stock'),
(16, 'Cookie\'s Counting Carnival', 'Edutainment', '2010-10-19', 'E', 'In Sesame Street: Cookie\'s Counting Carnival, kids join Cookie Monster and Big Bird at a fun-filled carnival through gameplay steeped in math skills that include number identification, counting, shapes and pattern recognition.', 'In Stock'),
(17, 'Dora\'s Cooking Club', 'Party', '2004-05-02', 'E', 'Dora the Explorer: Barnyard Buddies is an action-adventure game developed and released by Global Star Software for the Sony PlayStation on November 18, 2003 in North America and released in the PAL regions on May 02, 2004. Dora and Boots take a trip to the farm, but when they arrive they discover that someone has left the gate open and all the animals have wandered of', 'In Stock'),
(18, 'Diego\'s Build and Rescue', 'Adventure', '2004-05-02', 'E', 'Dora the Explorer: Barnyard Buddies is an action-adventure game developed and released by Global Star Software for the Sony PlayStation on November 18, 2003 in North America and released in the PAL regions on May 02, 2004. Dora and Boots take a trip to the farm, but when they arrive they discover that someone has left the gate open and all the animals have wandered of', 'In Stock'),
(19, 'Zhu Zhu Pets: Wild Bunch', 'Action', '2009-01-02', 'E', 'ZhuZhu Pets were created by Russ Hornsby for his St. Louis company, Cepia LLC.[2] The name comes from Mandarin zh?zh? (Chinese: ??), meaning "little pig." In late 2009 Cepia employed only 16 people in the U.S. and 30 in China', 'In Stock'),
(20, 'Ben 10: The Rise of Hex', 'Puzzle', '2010-12-17', 'E', 'Ben 10: Alien Force ? The Rise of Hex is the fourth game in the Ben 10 video game series, the third game to be based on the Ben 10: Alien Force series, and the first downloadable game based on the series.', 'Out of Stock'),
(21, 'Agatha Christie: The ABC Murders', 'Adventure', '1936-01-06', 'E', 'The book features the characters of Hercule Poirot, Arthur Hastings and Chief Inspector Japp. The form of the novel is unusual, combining first- and third-person narrative. This approach was famously pioneered by Charles Dickens in Bleak House, and was tried by Agatha Christie in The Man in the Brown Suit. What is unusual in The A.B.C. Murders is that the third-person narrative is supposedly reconstructed by the first-person narrator, Hastings', 'In Stock'),
(22, 'Pirates vs Ninjas Dodgeball', 'Sports', '2008-09-03', 'E', 'The game is inspired by the popular internet meme Pirates versus Ninjas.[3] It is played between various oddball groups, including the eponymous Pirate and Ninja teams, as well as other teams like the zombies and robots. Players on each team behave stereotypically, e.g., zombies are slow and defensive.', 'In Stock'),
(23, 'Halo: Reach', 'First Person Shooter', '2010-09-14', 'T', 'Halo: Reach is a first-person shooter video game developed by Bungie and published by Microsoft Game Studios for the Xbox 360 home video game console. The sixth installment in the Halo series, Reach was released worldwide in September 2010. The game takes place in the year 2552, where humanity is locked in a war with the alien Covenant.', 'Out of Stock'),
(24, 'Call of Duty: Black Ops', 'First Person Shooter', '2010-11-09', 'M', 'Call of Duty: Black Ops is a first-person shooter video game,[5] developed by Treyarch and published by Activision. It was released worldwide on November 9, 2010 for Microsoft Windows, PlayStation 3, Xbox 360,[6] and Wii consoles,[7] with a separate version for Nintendo DS developed by n-Space', 'Out of Stock'),
(25, 'Call of Duty: World at War', 'First Person Shooter', '2008-11-11', 'M', 'Call of Duty: World at War is a 2008 first-person shooter video game developed by Treyarch and published by Activision for Microsoft Windows, PlayStation 3, Wii, and Xbox 360. The game is the fifth mainstream game of the Call of Duty series and returns the setting to World War II.', 'Out of Stock'),
(26, 'The Sims 3', 'Simulation', '2009-06-02', 'E', 'The Sims 3 is the third major title in the life simulation video game developed by The Sims Studio (Maxis) and published by Electronic Arts. It is the sequel to the best-selling computer game, The Sims 2. It was first announced that it was in development for PlayStation 3 and Wii in November 2006, and later announced for OS X and Microsoft Windows.', 'Out of Stock'),
(27, 'Dragon Age: Origins', 'RPG', '2009-11-03', 'E', 'Set in the fictional kingdom of Ferelden during a period of civil strife, the game puts the player in the role of a warrior, mage, or rogue coming from an elven, human, or dwarven background. The player character is recruited into the Grey Wardens, an ancient order that stands against demonic forces known as "Darkspawn", and is tasked with defeating the Archdemon that commands them and ending their invasion, known as the "Blight"', 'In Stock'),
(28, 'The Incredible Hulk', 'Action', '2008-06-13', 'T', 'Scientist Bruce Banner (Edward Norton) desperately seeks a cure for the gamma radiation that contaminated his cells and turned him into The Hulk. Cut off from his true love Betty Ross (Liv Tyler) and forced to hide from his nemesis, Gen. Thunderbolt Ross (William Hurt), Banner soon comes face-to-face with a new threat: a supremely powerful enemy known as The Abomination (Tim Roth).', 'In Stock'),
(29, 'Rage of the Gladiator', 'Action', '2010-03-15', 'T', 'The game begins in the arena, but the story is told in cut scenes after boss battles. The Gracius (the player)is the twin son of the King of Avalance, Marius making him a prince. Avalance is a Greco-Roman style City State, teeming with mythical creatures. The King took Gracius\'s mother, Maia, as a bride by defeating the nearby city of Angalore.', 'In Stock'),
(30, 'Disney\'s Epic Mickey', 'Action/Adventure', '2010-11-25', 'E', 'Epic Mickey is a platform video game designed by Warren Spector and developed by Junction Point Studios for the Wii console. The game focuses on Mickey Mouse, who accidentally damages a world created by Yen Sid for forgotten characters and concepts, and is forced to fix the world while combating antagonists with a magic paintbrush.', 'Out of Stock'),
(31, 'Ashen Empires', 'MMORPG', '2003-03-10', 'T', 'Ashen Empires is a two-dimensional massively multiplayer online role-playing game created by Jason "Lothgar" Ely and now owned by Iron Will Games. It was released for a free, open beta in 2002 and later officially released in 2003', 'In Stock'),
(32, 'Dransik Classic', 'MMORPG', '2003-03-10', 'E', 'The original Dransik game, now known as Dransik Classic, was built in honor of Ultima V by Jason Ely, one of the U8 developers and Doug Gesler.[citation needed] Its graphics resemble the tileset used in that game, but in SVGA.[1] Dransik Classic is still available for play using the Pixel Mine launcher.', 'Out of Stock'),
(33, 'Tiki Towers', 'Puzzle', '2008-12-22', 'E', 'Based around a tropical Tiki culture-theme, the game involves players directing a troupe of monkeys to retrieve bananas by building towers of bamboo scaffolding to reach the fruits, with the ultimate goal of collecting all bananas and having all monkeys reach the designated "exit"', 'In Stock'),
(34, 'Age of Booty', 'Party', '2008-10-15', 'E', 'Age of Booty is a downloadable real-time strategy video game created by Certain Affinity and published by Capcom. The game was released October 15, 2008 on Xbox Live Arcade, November 13, 2008 on PlayStation Network, and March 5, 2009 on Windows.', 'In Stock'),
(35, 'Planetstorm', 'Strategy', '2015-10-10', 'T', 'Angels Fall First: Planetstorm (Now titled as Angels Fall First; "AFF") is an online multiplayer first-person shooter, combining game-play elements of traditional squad-based shooters with space combat games, with a particular focus on the ability to pilot and crew capital ships, which also serve as infantry combat settings themselves', 'In Stock'),
(36, 'Fairy Godmother Tycoon', 'Strategy', '2007-04-30', 'T', 'Fairy Godmother Tycoon is a business simulation video game that was developed by Todd Kerpelman of Pogo.com in conjunction with Mock Science Inc. and was published by Electronic Arts. It was released for Microsoft Windows on April 30, 2007.', 'Out of Stock'),
(37, 'Mahjong Garden Deluxe', 'Mahjong', '1999-09-01', 'E', 'The website is free due to advertising sponsorships but during a game, it produces commercials that can last up to 20 seconds. Players are strongly encouraged to sign up for Club Pogo, a subscription service', 'Out of Stock'),
(38, 'Guns & Ammo', 'First Person Shooter', '2010-09-02', 'M', 'Reloaded P.O.I. Reloaded is the updated gun simulator that allows you to experience a variety of firearms from top manufacturers. Practice and test your skills at the world famous Scottsdale Gun Club.', 'In Stock'),
(39, 'Entranced', 'Music', '2009-11-25', 'E', 'Entranced is a fresh, finely-tuned visual music game that will blow you away. Get lost in the eye-melting graphics, beautiful visual effects, and innovative gameplay. Entranced appeals to fans of games like Rock Band, Guitar Hero, Rez, and Tap Tap Revenge.', 'In Stock'),
(40, 'Boogie Monsters', 'Music', '2008-07-15', 'E', 'Boogie Monsters is one of the hottest new slots around and it looks to answer the question as to if monsters can dance or not. It turns out that they can, as evidenced by this Micrograming release.', 'In Stock'),
(41, 'Aion', 'MMORPG', '2008-11-25', 'T', 'Aion is a massively multiplayer online role-playing game released by NCSOFT. The game combines PvP and PvE in a fantasy game environment. As of May 20, 2009, Aion had 3.5 million subscribers in Asia.', 'Out of Stock'),
(42, 'Lineage II', 'MMORPG', '2003-10-01', 'T', 'Lineage II is a massive multiplayer online role-playing game for Microsoft Windows, the second game in the Lineage series. It is a prequel to Lineage, and is set 150 years before the earlier game.', 'Out of Stock'),
(43, 'City of Heroes', 'MMORPG', '2007-04-27', 'E', 'City of Heroes was a massively multiplayer online role-playing game developed by Cryptic Studios and published by NCSOFT.', 'In Stock'),
(44, 'Bugdom 2', 'Edutainment', '2002-10-17', 'E', 'Bugdom 2 follows the adventure of a grasshopper named Skip as he tries to get his stolen knapsack from Bully Bee. Throughout the game, Sam the Snail and Sally the Chipmunk assist him.', 'In Stock'),
(45, 'Enigmo Deluxe', 'Action', '2010-04-01', 'E', 'Enigmo is a 3D puzzle game where the goal is to use the various puzzle pieces to direct water droplets into their containers.  The faster that the containers are filled, the more bonus points you get.  There are three types of liquids in the game:  Water, Oil, and Lava, and there is a specific container for each.  Once you have sent at least 40 droplets into each container then you have completed that level.', 'In Stock'),
(46, 'Otto Matic', 'Edutainment', '2001-12-04', 'E', 'Otto Matic is a 2001 action-adventure video game developed by Pangea Software and published by Aspyr Media for Mac OS X. It came bundled with iMac G3 and G4 computers. The game was later ported by Ideas From the Deep to Microsoft Windows in 2004.', 'In Stock'),
(47, 'Cro-Mag Rally', 'Racing', '1998-01-01', 'E', 'Cro-Mag Rally is a third-person racing/arcade game made by Pangea Software, which takes place in caveman times. It is available for Mac OS Classic, Mac OS X, iOS, and Windows Phone 7.', 'In Stock'),
(48, 'Nanosaur 2', 'Adventure', '2004-03-10', 'E', 'Nanosaur 2: Hatchling is a continuation of the original Nanosaur storyline. Nanosaur 2 is the first stereoscopic game released for the Mac.', 'In Stock'),
(49, 'Billy Frontier', 'First Person Shooter', '2008-08-08', 'E', 'Billy Frontier is an arcade style action game with a "cowboys in space" theme. You get to fight in duels, shootouts, stampedes, etc. It\'s the kind of game you\'ll want to pick up and play whenever you get that twitch to just shoot something and blow stuff up!', 'In Stock'),
(50, 'Enigmo 2', 'Action', '2009-09-02', 'E', 'Enigmo 2 was introduced in February 2006, and expands upon the basic principles set down by the original. Water is still a substance that can be manipulated, but lava and oil were swapped for laser beams and plasma particles. The game adds the dimension of depth to gameplay, and many solutions involving rotating the camera or objects in three dimensions.', 'In Stock'),
(51, 'Antimatter', 'Puzzle', '2008-11-30', 'E', 'Antimatter is the ultimate arcade game for the iPad, iPhone and iPod Touch! You control a stream of antimatter particles and use it to affect the Cosmic Strings while collecting powerups and bonus points. This game is so unique that it is hard to describe, but the graphics are stunning, and the gameplay is very addictive.', 'In Stock'),
(52, 'Attack of the Movies 3D', 'Light Gun', '2010-05-18', 'E', 'Attack of the Movies 3D is a rail shooter for the Nintendo Wii and Xbox 360. The Wii version of the game is the first 3D shooter designed for the console.', 'In Stock'),
(53, 'Swords', 'Fighting', '2010-09-28', 'T', 'Swords pits you against the best of the best from past, present, and future in the ultimate sword fighting contest. This is what you?ve trained for, this is your destiny.', 'Out of Stock'),
(54, 'We Wish You A Merry Christmas', 'Action', '2009-11-06', 'E', 'We Wish You a Merry Christmas is a Christmas-centric budget title for Wii. The party game features 13 minigames to play including Candy Cane Lanes, Present Catch, and Elf Hunt. It also includes an in-game Advent calendar.', 'In Stock'),
(55, 'Go Play Lumberjacks', 'Simulation', '2009-06-09', 'E', 'Players let the sawdust fly as they climb, chop, saw and logroll their way to victory in Go Play Lumberjacks! Using the Wii Remote as the ultimate timber-cutting contest tool, players test their skills through 15 events in five categories, including Axe Throwing, Climbing, Water Events and more.', 'Out of Stock'),
(56, 'Starport: Galactic Empires', 'MMORPG', '2004-02-03', 'T', 'Starport: Galactic Empires is a free, space-oriented, massively multiplayer online role-playing game which uses a third-person overhead view similar to that used in Asteroids.', 'Out of Stock'),
(57, 'Dementium: The Ward', 'Horror', '2007-10-31', 'M', 'Dementium: The Ward is a survival horror first-person shooter game developed by Renegade Kid for the Nintendo DS. The game was originally released in North America on October 31, 2007, courtesy of Gamecock Media Group.', 'In Stock'),
(58, 'Dementium II', 'Horror', '2010-05-04', 'M', 'Dementium II is a first person, survival horror video game developed for the Nintendo DS. It is the sequel to 2007\'s Dementium: The Ward, also for the Nintendo DS. The game was developed by Renegade Kid and published by SouthPeak Games.', 'In Stock'),
(59, 'Moon', 'First Person Shooter', '2009-01-13', 'T', 'Moon is a first-person shooter video game developed by Renegade Kid exclusively for the Nintendo DS.', 'In Stock'),
(60, 'ATV Wild Ride', 'Racing', '2011-03-30', 'E', 'Check your fear at the starting line! In ATV Wild Ride, you\'re thrown into a nitro-charged, off-road, trick-filled racing event featuring 24 tracks in six exotic locations around the globe! Compete in World Tour, Freestyle, Elimination, and more as you experience extreme speed, catch massive air, and nail spectacular airborne tricks! Hit the nitro and leave your competition in the dust!', 'Out of Stock'),
(61, 'Face Kart: Photo Finish', 'Racing', '2011-09-01', 'E', 'Photo Finish lets players tilt and turn the Nintendo 3DS to steer their photo customized speedsters through 20 unique race tracks, as they drift around corners, soar over chasms and speed past the competition.', 'In Stock'),
(62, 'Comic Jumper', 'Action', '2010-10-06', 'E', 'Comic Jumper: The Adventures of Captain Smiley is an action video game developed by Twisted Pixel Games published by Microsoft Game Studios.', 'In Stock'),
(63, 'The Maw', 'Action', '2009-01-21', 'E', 'The Maw is a 2009 action-adventure video game developed by Twisted Pixel Games. Released for Xbox 360, PlayStation 3, PlayStation Vita and Microsoft Windows, the game centers on the extraterrestrial Frank and a purple, amorphous creature called The Maw, who have crash-landed their spacecraft on an alien planet.', 'In Stock'),
(64, 'Splosion Man', 'Action', '2009-07-22', 'E', 'Splosion Man is a 2.5D action platform video game developed by Twisted Pixel Games for the Xbox 360\'s Xbox Live Arcade digital download service. It was released on July 22, 2009 as part of the 2009 Xbox Live Summer of Arcade.', 'In Stock'),
(65, 'Ms. \'Splosion Man', 'Action', '2011-07-13', 'E', 'Ms. Splosion Man is a platform video game developed by Twisted Pixel Games, and was released on Xbox 360 on July 13, 2011 as well as Windows Phone. It is the sequel to 2009\'s \'Splosion Man. The game takes place directly after \'Splosion Man.', 'In Stock'),
(66, 'The Gunstringer', 'Action', '2011-09-13', 'T', 'The Gunstringer is set as a play which takes place in the Old West. The game is played as though it were acted out on a theatre stage. It begins with live action footage in a theater (The Paramount Theater in Austin, TX) where people have attended to see the show.', 'In Stock');

--
-- Triggers `Game`
--
DELIMITER $$
CREATE TRIGGER `before_Game_update` BEFORE UPDATE ON `Game` FOR EACH ROW BEGIN
    INSERT INTO games_audit
    SET action = 'update',
    gameName = OLD.Title,
    changeDate = NOW();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `on_review_update` BEFORE UPDATE ON `Game` FOR EACH ROW BEGIN
    INSERT INTO games_audit
    SET 
    action = 'update',
    genre = OLD.Genre,
    changeDate = NOW();
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `games_audit`
--

CREATE TABLE `games_audit` (
  `id` int(11) NOT NULL,
  `gameName` varchar(100) DEFAULT NULL,
  `changeDate` datetime DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `genre` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games_audit`
--

INSERT INTO `games_audit` (`id`, `gameName`, `changeDate`, `action`, `genre`) VALUES
(1, 'Fishing Master World Tour', '2017-04-20 11:32:52', 'update', '0'),
(2, 'Fishing Master', '2017-04-20 12:43:45', 'update', '0'),
(5, 'Mushroom Men: The Spore Wars', '2017-04-21 12:00:00', 'update', NULL),
(6, NULL, '2017-04-21 12:00:00', 'update', 'Action'),
(7, 'Mushroom Men: The Spore Wars', '2017-04-21 12:00:35', 'update', NULL),
(8, NULL, '2017-04-21 12:00:35', 'update', 'MOBA');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Game_View`
--
CREATE TABLE `Game_View` (
`Title` varchar(100)
,`Studio_Name` varchar(50)
);

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

-- --------------------------------------------------------

--
-- Table structure for table `Platform`
--

CREATE TABLE `Platform` (
  `PlatformID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Year_Released` int(11) NOT NULL,
  `Company` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(7, 'PC', 1962, 'Various');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `Review_View`
--
CREATE TABLE `Review_View` (
`Title` varchar(100)
,`Author` varchar(25)
);

-- --------------------------------------------------------

--
-- Table structure for table `Sales`
--

CREATE TABLE `Sales` (
  `SalesID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL,
  `Unit_Price` double NOT NULL,
  `Units_Sold` int(11) NOT NULL,
  `Total_Revenue` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Structure for view `Game_View`
--
DROP TABLE IF EXISTS `Game_View`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kcgames`@`localhost` SQL SECURITY DEFINER VIEW `Game_View`  AS  select `g`.`Title` AS `Title`,`ds`.`Studio_Name` AS `Studio_Name` from ((`Game` `g` join `Development_Studio` `ds`) join `G_CreatedAt_DS` `ca`) where ((`g`.`GameID` = `ca`.`GameID`) and (`ca`.`StudioID` = `ds`.`StudioID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Review_View`
--
DROP TABLE IF EXISTS `Review_View`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kcgames`@`localhost` SQL SECURITY DEFINER VIEW `Review_View`  AS  select `r`.`Title` AS `Title`,`r`.`Author` AS `Author` from (`Game` `g` join `Review` `r`) where (`g`.`GameID` = `r`.`GameID`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Development_Studio`
--
ALTER TABLE `Development_Studio`
  ADD PRIMARY KEY (`StudioID`);

--
-- Indexes for table `Game`
--
ALTER TABLE `Game`
  ADD PRIMARY KEY (`GameID`),
  ADD KEY `game_id_index` (`Title`) COMMENT='Index on Title',
  ADD KEY `game_title_index` (`Title`) COMMENT='Index on Table';

--
-- Indexes for table `games_audit`
--
ALTER TABLE `games_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `G_CreatedAt_DS`
--
ALTER TABLE `G_CreatedAt_DS`
  ADD PRIMARY KEY (`GameID`,`StudioID`),
  ADD KEY `StudioID` (`StudioID`);

--
-- Indexes for table `G_PlayedOn_P`
--
ALTER TABLE `G_PlayedOn_P`
  ADD PRIMARY KEY (`GameID`,`PlatformID`),
  ADD KEY `PlatformID` (`PlatformID`);

--
-- Indexes for table `Platform`
--
ALTER TABLE `Platform`
  ADD PRIMARY KEY (`PlatformID`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `GameID` (`GameID`);

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
-- AUTO_INCREMENT for table `Development_Studio`
--
ALTER TABLE `Development_Studio`
  MODIFY `StudioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Game`
--
ALTER TABLE `Game`
  MODIFY `GameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `games_audit`
--
ALTER TABLE `games_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Platform`
--
ALTER TABLE `Platform`
  MODIFY `PlatformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `Sales`
--
ALTER TABLE `Sales`
  MODIFY `SalesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `G_CreatedAt_DS`
--
ALTER TABLE `G_CreatedAt_DS`
  ADD CONSTRAINT `G_CreatedAt_DS_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`),
  ADD CONSTRAINT `G_CreatedAt_DS_ibfk_2` FOREIGN KEY (`StudioID`) REFERENCES `Development_Studio` (`StudioID`);

--
-- Constraints for table `G_PlayedOn_P`
--
ALTER TABLE `G_PlayedOn_P`
  ADD CONSTRAINT `G_PlayedOn_P_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`),
  ADD CONSTRAINT `G_PlayedOn_P_ibfk_2` FOREIGN KEY (`PlatformID`) REFERENCES `Platform` (`PlatformID`);

--
-- Constraints for table `Review`
--
ALTER TABLE `Review`
  ADD CONSTRAINT `Review_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`);

--
-- Constraints for table `Sales`
--
ALTER TABLE `Sales`
  ADD CONSTRAINT `Sales_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`GameID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
