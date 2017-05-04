
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
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
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
-- RELATIONS FOR TABLE `Game`:
--

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
-- Indexes for dumped tables
--

--
-- Indexes for table `Game`
--
ALTER TABLE `Game`
  ADD PRIMARY KEY (`GameID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Game`
--
ALTER TABLE `Game`
  MODIFY `GameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
