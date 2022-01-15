-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 09:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyrics`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `year` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `year`, `artist_id`) VALUES
(46, 'Bark at the Moon', 1983, 98),
(45, 'Rust in Peace', 1990, 97),
(44, 'Paranoid', 1970, 96),
(43, 'Dethalbum III', 2012, 95),
(42, 'The Pick of Destiny', 2006, 94),
(41, 'Omega', 2020, 93),
(40, 'Mutter', 2001, 92),
(47, 'Rh-', 2003, 99),
(48, 'Repentless', 2015, 100),
(49, 'Back in Black', 1980, 101),
(50, 'Contraband', 2004, 102),
(51, 'Apocalyptic Love', 2012, 103);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(97, 'Megadeth'),
(96, 'Black Sabbath'),
(95, 'Dethklok'),
(94, 'Tenacious D'),
(93, 'Epica'),
(92, 'Rammstein'),
(98, 'Ozzy Osbourne'),
(99, 'Siddharta'),
(100, 'Slayer'),
(101, 'AC/DC'),
(102, 'Velvet Revolver'),
(103, 'Slash');


-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `lyrics` longtext COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `user_id`, `album_id`, `name`, `url`, `lyrics`) VALUES
(1, 2, 42, 'The Metal', NULL, 'You can\'t kill the metal\r\nThe metal will live on\r\nPunk Rock tried to kill the metal\r\nBut they failed, as they were smite to the ground\r\nNew wave tried to kill the metal\r\nBut they failed, as they were stricken down to the ground\r\nGrunge tried to kill the metal, hahahaha\r\nThey failed, as they were thrown to the ground\r\nAargh! yeah\r\nNo one can destroy the metal\r\nThe metal will strike you down with a vicious blow\r\nWe are the vanquished foes of the metal\r\nWe tried to win for why we do not know\r\nNew wave tried to destroy the metal, but the metal had its way\r\nGrunge then tried to dethrone the metal, but metal was in the way\r\nPunk Rock tried to destroy the metal, but metal was much too strong\r\nTechno tried to defile the metal, but techno was proven wrong\r\nYea!\r\nMetal!\r\nIt comes from hell!'),
(2, 1, 40, 'Halleluja', NULL, 'Er ist fromm und sehr sensibel\r\nAn seiner Wand ein Bild des Herrn\r\nEr wischt die Flecken von der Bibel\r\nDas Abendmahl verteilt er gern\r\nEr liebt die Knaben aus dem Chor\r\nSie halten ihre Seelen rein\r\nDoch Sorge macht ihm der Tenor\r\nSo muss er ihm am nächsten sein\r\nAuf seinem Nachttisch still und stumm\r\nEin Bild des Herrn er dreht es langsam um\r\nWenn die Turmuhr zweimal schlägt (hallelujah)\r\nFaltet er die Hände zum Gebet (hallelujah)\r\nEr ist ohne Weib geblieben (hallelujah)\r\nSo muss er seinen Nächsten lieben (hallelujah)\r\nDer junge Mann darf bei ihm bleiben\r\nDie Sünde nistet überm Bein\r\nSo hilft er gern sie auszutreiben\r\nBei Musik und Kerzenschein\r\nWenn die Turmuhr zweimal schlägt (hallelujah)\r\nFaltet er die Hände zum Gebet (hallelujah)\r\nEr ist ohne Weib geblieben (hallelujah)\r\nSo muss er seinen Nächsten lieben (hallelujah)\r\nWenn die Turmuhr zweimal schlägt (hallelujah)\r\nNimmt er den Jungen ins Gebet (hallelujah)\r\nEr ist der wahre Christ (hallelujah)\r\nUnd weiß was Nächstenliebe ist (hallelujah)\r\nDreh dich langsam um\r\nDreh dich um'),
(3, 1, 41, 'Abyss of Time: Countdown to Singularity', NULL, 'Fill the void in me\r\nSee life beyond the veil\r\nReplace all thoughts from the abyss\r\nWith cosmic energy\r\nIgnite the flame in thee\r\nFill out the tree of your life\r\nWe are rooted deep in the darkness and keep growing towards the light\r\nBe without your fears\r\nFor a thousand years\r\nSearch for stillness deep inside\r\nOne thought that grows in the abyss of time\r\nFills up the vast space with matter and life\r\nFree of the darkness that fetters the soul\r\nFind at the source the end of your goal\r\nFind the spark in me\r\nSee life beyond the dream\r\nReplace your darkest emotions\r\nWith pure divinity\r\nIgnite the flame in me\r\nUnite with your inner light\r\nWe should free ourselves from the shadows and the bondage of the night\r\nBe without your fears\r\nFor a thousand years\r\nBe the master of your life\r\nOne thought that grows in the abyss of time\r\nFills up the vast space with matter and life\r\nFree of the darkness that fetters the soul\r\nFind at the source the end of your goal\r\nFight back your fears forever\r\nBe the master of your life\r\nLearn to unlearn\r\nIn the beginning there was a timeless, space-less nothingness\r\nAnd into that nothingness came a thought, purposeful, all-pervading\r\nSo ended the Void\r\nSurge, the Demiurge\r\nShaper of a false universe\r\nSearch that deadly urge\r\nYour walls of self-protection are\r\nWalls of self-imprisonment\r\nBe without your fears\r\nFor a thousand years\r\nSearch for stillness deep inside\r\nStrive for harmony in duality to revise the book of life\r\nThere was one thought that grew in the abyss of time\r\nIt filled up the vast space with matter and life\r\nFreed from the darkness that fettered the soul\r\nWe found at the end our reason, our goal\r\nWe march on\r\nWe\'re counting down\r\nTo singularity while we drown\r\nWe\'re moving on\r\nTo master wisdom\r\nTo be free\r\nAh, ah'),
(4, 2, 43, 'Crush the Industry', NULL, 'The drones keep moving\r\nPush rocks up the mountain\r\nThe Ice will slow you\r\nYou wither and fray\r\nProtect your lifeblood\r\nThe power feeds you\r\nA slight sink in the structure\r\nAnd it all goes away\r\nCrush the industry\r\nNo security\r\nCapital is worthless now\r\nYour life I inside trade\r\nModernize\r\nDesensitize\r\nRe-colonize\r\nDownsize\r\nWatch it fall\r\nBefore your eyes\r\nThe numbers drop\r\nYour money dies\r\nEmptiness\r\nWhere there once was\r\nThere\'s nothing\r\nBorrowing\r\nFrom government\r\nThere\'s nothing\r\nCommodities\r\nThe dying swine\r\nThe foul\r\nChemical waste\r\nHarvesting\r\nThe rotting mouths\r\nThe molten gold is\r\nPoisoned trash\r\nCrush the industry\r\nNo security\r\nCapital is worthless now\r\nYour life I inside trade\r\nCrush the industry\r\nNo security\r\nCapital is worthless now\r\nYour life I inside trade\r\nCrush the industry! (Crush The Industry!)\r\nCrush the industry! (Crush The Industry!)\r\nCapital is worthless now (Crush The Industry!)\r\nYour life I inside trade! (Crush The Industry!)'),
(5, 3, 44, 'War Pigs', NULL, 'Generals gathered in their masses\r\nJust like witches at black masses\r\nEvil minds that plot destruction\r\nSorcerer of death\'s construction\r\nIn the fields, the bodies burning\r\nAs the war machine keeps turning\r\nDeath and hatred to mankind\r\nPoisoning their brainwashed minds\r\nOh lord, yeah!\r\nPoliticians hide themselves away\r\nThey only started the war\r\nWhy should they go out to fight?\r\nThey leave that role to the poor, yeah\r\nTime will tell on their power minds\r\nMaking war just for fun\r\nTreating people just like pawns in chess\r\nWait till their judgement day comes, yeah!\r\nNow in darkness, world stops turning\r\nAshes where their bodies burning\r\nNo more war pigs have the power\r\nHand of God has struck the hour\r\nDay of judgement, God is calling\r\nOn their knees, the war pigs crawling\r\nBegging mercy for their sins\r\nSatan laughing, spreads his wings\r\nOh lord, yeah!'),
(6, 3, 45, 'Hangar 18', NULL, 'Welcome to our fortress tall\r\nI\'ll take some time to show you around\r\nImpossible to break these walls\r\nFor, you see, the steel is much too strong\r\nComputer banks to rule the world\r\nInstruments to sight the stars\r\nPossibly I\'ve seen too much\r\nHangar 18, I know too much\r\nForeign life forms, inventory\r\nSuspended state of cryogenics\r\nSelective amnesia\'s the story\r\nBelieved, foretold, but who would suspect?\r\nThe military intelligence\r\nTwo words combined that can\'t make sense\r\nPossibly I\'ve seen too much\r\nHangar 18, I know too much'),
(7, 4, 46, 'Bark at the Moon', NULL, 'Screams break the silence\r\nWaking from the dead of night\r\nVengence is boiling\r\nHe\'s returned to kill the light\r\nThen when he\'s found who he\'s looking for\r\nListen in awe and you\'ll hear him\r\nBark at the moon\r\nYears spent in torment\r\nBuried in a nameless grave\r\nNow he has risen\r\nMiracles would have to save\r\nThose that the beast is looking for\r\nListen in awe and you\'ll hear him\r\nBark at the moon\r\nHey, yeah\r\nBark at the moon\r\nThey cursed and buried him\r\nAlong with shame\r\nAnd thought his timeless soul had gone (gone)\r\nIn empty burning hell--unholy one\r\nBut he\'s returned to prove them wrong\r\nSo wrong\r\nOh yeah, baby\r\nHowling in shadows\r\nLiving in a lunar spell\r\nHe finds his heaven\r\nSpewing from the mouth of hell\r\nThose that the beast is looking for\r\nListen in awe and you\'ll hear him\r\nBark at the moon.\r\nHey, yeah\r\nBark at the moon\r\nHey, yeah\r\nBark at the moon\r\nWhoa Whoa Yeah,\r\nBark at the moon\r\n(Howls)'),
(8, 4, 47, 'Japan', NULL, 'Dom je vedno bolj oddaljen stran\r\nBela ptica nese me drugam\r\nDruge zvezde zdaj me grejejo\r\nHladno sonce naše je zašlo\r\n\r\nGledam ven v temo\r\nKaplje na okno padajo\r\nNi me strah za jutrišnji dan\r\nTo mora biti raj\r\n\r\nBele iskre v nebo\r\nV temi se vidi horizont\r\nIn edinstven ocean\r\nSe ga dotika tam\r\n\r\nKrona mehka sede na glavo\r\nDože smo odvrgli z radostjo\r\nVsak pogled v sebi nosi mir\r\nPles ob ognju naj prežene zver\r\n\r\nZletijo bele iskre v nebo\r\nV temi se vidi horizont\r\nIn edinstven ocean\r\nSe ga dotika tam\r\n\r\nGledam ven v temo\r\nKaplje z okna izginejo\r\nNi me strah za jutrišnji dan\r\nTo mora biti raj, je raj, je raj, je raj, je raj, je raj...\r\nDruge zvezde zdej me grejejo\r\nHladno sonce naše je zašlo\r\nVsak pogled v sebi nosi mir\r\nPles ob ognju naj prežene zver\r\n\r\nZletijo bele iskre v nebo\r\nV temi se vidi horizont\r\nIn edinstven ocean\r\nSe ga dotika tam\r\n\r\nBele iskre v nebo\r\nV temi se vidi horizont\r\nIn edinstven ocean\r\nSe ga dotika tam'),
(9, 5, 48, 'Repentless', NULL, 'Arrogance, violence, world in disarray\r\nDealing with insanity every fuckin\' day\r\nI hate the life, hate the fame, hate the fuckin\' scene\r\nPissing match of egos, fuck their vanity\r\nAin\'t got the time, I don\'t want anything from you\r\nFeeding on my tolerance is all you fuckin\' do\r\nNo looking back, no regrets, no apologies\r\nWhat you get is what you see\r\nLive fast\r\nOn high\r\nRepentless\r\nLet it ride\r\nMy songs relive the atrocities of war\r\nCan\'t take society any fuckin\' more\r\nIntensity, anarchy, hatred amplified\r\nPlaying this shit is all that keeps me alive\r\nLeave it all on the road living on the stage\r\nThis is my life where I kill it everyday\r\nSo take your shot, bottom\'s up, this is no lie\r\nI\'ll be beating this guitar \'til the day I die\r\nLive fast\r\nOn high\r\nRepentless\r\nLet it ride\r\nI hate the life, hate the fame, hate fuckin\' scene\r\nPissing match of egos, fuck their vanity\r\nAin\'t got the time, I don\'t want anything from you\r\nFeeding on my tolerance is all you fuckin\' do\r\nNo looking back, no regrets, no apologies\r\nWhat you get is what you see\r\nWe\'re all killing ourselves a little more everyday\r\nLive fast\r\nOn high\r\nRepentless\r\nLet it ride'),
(10, 5, 49, 'Hells Bells', NULL, 'I\'m rolling thunder, pouring rain\r\nI\'m coming on like a hurricane\r\nMy lightning\'s flashing across the sky\r\nYou\'re only young, but you\'re gonna die\r\nI won\'t take no prisoners, won\'t spare no lives\r\nNobody\'s putting up a fight\r\nI got my bell, I\'m gonna take you to hell\r\nI\'m gonna get ya, Satan get ya\r\nHells bells\r\nHells bells, you got me ringing\r\nHells bells, my temperature\'s high\r\nHells bells\r\nI\'ll give you black sensations up and down your spine\r\nIf you\'re into evil, you\'re a friend of mine\r\nSee the white light flashing as I split the night\r\nCos if good\'s on the left then I\'m sticking to the right\r\nI won\'t take no prisoners, won\'t spare no lives\r\nNobody\'s puttin\' up a fight\r\nI got my bell, I\'m gonna take you to hell\r\nI\'m gonna get ya, Satan get ya\r\nHells bells\r\nHells bells, you got me ringing\r\nHells bells, my temperature\'s high\r\nHells bells\r\nHells bells, Satan\'s coming to you\r\nHells bells, he\'s ringing them now\r\nThose hells bells, the temperature\'s high\r\nHells bells, across the sky\r\nHells bells, they\'re taking you down\r\nHells bells, they\'re dragging you down\r\nHells bells, gonna split the night\r\nHells bells, there\'s no way to fight\r\nHells bells'),
(11, 6, 50, 'Slither', NULL, 'Hey\r\nHey\r\nHey\r\nWhen you look you see right through me\r\nCut the rope, fell to my knees\r\nFallen, broken every single time\r\nAlways keep me under finger\r\nThat\'s the spot where you would chew me\r\nBut I see sometime pleasure in my mind\r\nYeah, here comes the water\r\nIt comes to wash away the sins of you and I\r\nThis time you see\r\nHey\r\nHey\r\nHey\r\nWhen you seek me you destroy me\r\nRape my mind and smell the poppy\'s\r\nFallen blood in every single time\r\nAlways keep me under finger\r\nThat\'s the spot where you might linger\r\nBut I see sometime the pleasure in my mind\r\nYeah, here comes the water\r\nIt comes to wash away the sins of you and I\r\nThis time you see\r\nLike holy water\r\nIt only burns you faster than you\'ll ever dry\r\nThis time with me\r\nWhen you look, you see right through me\r\nCut the rope, fell to my knees\r\nFalling and bloating every single time\r\nYeah, here comes the water\r\nIt comes to wash away the sins of you and I\r\nThis time you see\r\nLike holy water\r\nIt only burns you faster than you\'ll ever dry\r\nThis time with me\r\nHey\r\nHey\r\nHey'),
(12, 6, 51, 'No More Heroes', NULL, 'Took a shot in the dark\r\nThough the aim was true\r\nStill it missed the mark\r\nAs we wait for a hero we can\'t find\r\nNow I know, now I realize\r\nIt\'s a hard line\r\nOnce you cross you\'re on your own\r\nBut I won\'t lie, I\'m not satisfied\r\nWe can\'t wait much longer\r\nWhen your heroes, turn to the enemy\r\nAnd there\'s nothing left to hold\r\nWhen your heroes, give only apologies\r\nI won\'t deny it leaves me cold\r\nOnce again, you let us fall\r\nStill you ease our minds and are sure to stall\r\nIn the end, everything\'s gonna be alright\r\nBut they won\'t\r\nNow I realize, these are hard times\r\nWe can\'t fight them on our own\r\nBut I won\'t lie, I\'m not satisfied\r\nWho will save tomorrow?\r\nWhen your heroes, turn to the enemy\r\nAnd there\'s nothing left to hold\r\nWhen your heroes, give only apologies\r\nI won\'t deny it leaves me cold\r\nHope we\'re still alive\r\nStill alive\r\nOh, oh, oh\r\nWe\'re still alive\r\nStill alive in the end\r\nNow I know\r\nNow I realize, these are hard times\r\nWe can\'t face them on our own\r\nBut I won\'t lie, I\'m not satisfied\r\nWho will save tomorrow?\r\nWhen your heroes, turn to the enemy\r\nAnd there\'s nothing left to hold\r\nWhen your heroes, give only apologies\r\nI won\'t deny it leaves me cold\r\nWhen your heroes, turn to the enemy\r\nAnd there\'s nothing left to hold\r\nWhen your heroes, give only apologies\r\nI won\'t deny it leaves me cold\r\nIf we\'re still alive\r\nStill alive\r\nOh, oh, oh\r\nIf we\'re still alive\r\nI would never doubt you again');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'user1@gmail.com', NULL, '$2y$10$ySkT17UNM/EdJBK/7uZXrOjJ/6Fcy5oBsK0x7c8fUCARgts3dd8ga', NULL, '2021-05-23 15:38:33', '2021-05-23 15:38:33'),
(2, 'user2', 'user2@gmail.com', NULL, '$2y$10$bHE9D8JP.d0TPA6WzhURIe.mwd88dIVB0ul7/d8kWNpxj1IOKVVbm', NULL, '2021-05-23 15:38:49', '2021-05-23 15:38:49'),
(3, 'user3', 'user3@gmail.com', NULL, '$2y$10$G4EQ8TH/6os/wEgc5KhDpeV8pZb9EzNm7oqgamoVlixXL9/Sjzjh2', NULL, '2021-05-21 15:49:46', '2021-05-21 15:49:46'),
(4, 'user4', 'user4@gmail.com', NULL, '$2y$10$Kc9ZbqA8lZ8IN/IcvGSvXOwNvTjVRWFdAli90QYhVipWwwu4bGoye', NULL, '2021-05-23 15:39:10', '2021-05-23 15:39:10'),
(5, 'user5', 'user5@gmail.com', NULL, '$2y$10$SHTa91bHIqwh.uUvKobuuOE5kFIhTYtZmbzdOMUrrfpWzXOL80cem', NULL, '2021-05-23 15:39:33', '2021-05-23 15:39:33'),
(6, 'user6', 'user6@gmail.com', NULL, '$2y$10$LjJrluTdsXapEoFDZIJWE.N5T2ielc/Ioy/iKKeRCtSI0RSj8VVT2', NULL, '2021-05-23 17:23:53', '2021-05-23 17:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `vote` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `song_id`, `vote`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 1),
(7, 1, 2, -1),
(8, 2, 2, -1),
(9, 3, 2, -1),
(10, 4, 2, -1),
(11, 5, 2, -1),
(12, 6, 2, -1),
(13, 1, 3, -1),
(14, 2, 3, 1),
(15, 3, 3, 1),
(16, 4, 3, -1),
(17, 5, 3, 1),
(18, 6, 3, -1),
(285, 1, 3, -1),
(286, 2, 3, -1),
(287, 3, 3, -1),
(288, 4, 3, -1),
(289, 5, 3, 1),
(290, 6, 3, 1),
(291, 1, 4, 1),
(292, 2, 4, 1),
(293, 3, 4, -1),
(294, 4, 4, -1),
(295, 5, 4, 1),
(296, 6, 4, -1),
(297, 1, 5, 1),
(298, 2, 5, 1),
(299, 3, 5, -1),
(300, 4, 5, -1),
(301, 5, 5, 1),
(302, 6, 5, -1),
(303, 1, 6, -1),
(304, 2, 6, -1),
(305, 3, 6, -1),
(306, 4, 6, -1),
(307, 5, 6, -1),
(308, 6, 6, -1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;


--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
