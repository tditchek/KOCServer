-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2016 at 02:40 PM
-- Server version: 5.5.50-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `teddysap_couragers`
--

-- --------------------------------------------------------

--
-- Table structure for table `sDay`
--

CREATE TABLE IF NOT EXISTS `sDay` (
  `dayID` int(11) NOT NULL,
  `displayName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `available` tinyint(1) NOT NULL,
  `text_red` smallint(6) NOT NULL DEFAULT '0',
  `text_green` smallint(6) NOT NULL DEFAULT '0',
  `text_blue` smallint(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `dayID` (`dayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sDay`
--

INSERT INTO `sDay` (`dayID`, `displayName`, `available`, `text_red`, `text_green`, `text_blue`) VALUES
(1, 'Thursday', 1, 255, 255, 255),
(2, 'Friday', 1, 255, 255, 255),
(3, 'Shabbos', 1, 255, 255, 255),
(4, 'Sunday', 1, 255, 255, 255);

-- --------------------------------------------------------

--
-- Table structure for table `sEvent`
--

CREATE TABLE IF NOT EXISTS `sEvent` (
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasMap` tinyint(1) NOT NULL DEFAULT '0',
  `mapURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dayNum` int(11) NOT NULL,
  `eventID` int(11) NOT NULL,
  `time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sEvent`
--

INSERT INTO `sEvent` (`title`, `hasMap`, `mapURL`, `dayNum`, `eventID`, `time`, `details`) VALUES
('Load Buses', 0, '', 1, 1000, '8:15 AM', '@ 1602 Chestnut Avenue, Brooklyn, NY 11230'),
('Depart to New Roc City', 0, '', 1, 1005, '9:00 AM', '@ 29 Lecount Place, New Rochelle, NY 10801'),
('Lunch is Served', 0, '', 1, 1010, '12:00 PM', 'in private cafeteria near the arcades'),
('Mincha', 0, '', 1, 1015, '1:15 PM', 'in the cafeteria'),
('Load Buses', 0, '', 1, 1020, '1:30 PM', ''),
('Depart to DoubleTree Hotel', 0, '', 1, 1025, '2:00 PM', '@ 99 Erdman Way, Leonminster, MA 01453'),
('Arrive at hotel', 0, '', 1, 1030, '5:15 PM', 'check-in at Beethoven & Brahms Ballrooms. Freshen up!'),
('Maariv', 0, '', 1, 1035, '6:15 PM', 'in the Seminar Ampitheater'),
('Dinner', 0, '', 1, 1040, '6:30 PM', 'in the Grand Ballroom (Schubert, Strauss and Mozart Ballrooms). Remember your meds!'),
('The Big Show', 0, '', 1, 1045, '7:15 PM', 'in the Beethoven & Brahms Ballrooms. PREPARE TO BE AMAZED! Campers and Counselors: Be sure to have your photo taken by Esti Waldman for a special surprise gift! Wear your official 2016 Ski Madness Gear!'),
('The Annual Delicious.....', 0, '', 1, 1050, '8:15 PM', 'Challah Baking Bake-a-thon Bake-Bonanza!'),
('Sleep Time', 0, '', 1, 1055, '8:35 PM', 'Head to your rooms and get some sleep. We have a big Friday planned!'),
('Wake Up', 0, '', 2, 2001, '7:00 AM', ''),
('Shacharis', 0, '', 2, 2005, '7:30 AM', 'in the Junior Ballroom (Rodgers & Hammerstein Ballrooms - The KoC Tea Rooms)'),
('Breakfast', 0, '', 2, 2010, '8:00 AM', 'in the Grand Ballroom'),
('Load Buses', 0, '', 2, 2015, '8:30 AM', 'just outside the Grand Ballroom'),
('Depart to Museum of Science', 0, '', 2, 2020, '9:00 AM', '1 Science Park, Boston, MA 02114'),
('Get your fun on!', 0, '', 2, 2025, '10:00 AM', 'And eat lunch at your own convenience!'),
('Load Buses', 0, '', 2, 2030, '1:00 PM', 'for Departure back to hotel'),
('Get Ready', 0, '', 2, 2035, '2:15 PM', 'for Shabbos!'),
('Candle Lighting', 0, '', 2, 2040, '4:12 PM', 'in the Grand Ballroom'),
('Mincha/Maariv', 0, '', 2, 2045, '4:15 PM', 'in the Shul (Beethoven & Brahms Ballrooms)'),
('Shkia', 0, '', 2, 2050, '4:30 PM', ''),
('Shabbos Dinner', 0, '', 2, 2055, '5:30 PM', 'in the Grand Ballroom'),
('Super Duper Activities', 0, '', 2, 2060, '7:00 PM', 'and Emotionalizational Speeches in the Shul (Beethoven & Brahms Ballrooms).\r\n\r\nNote: Everybody must attend! Yeah! Even you! We''re looking at YOU!'),
('The Greatest Oneg', 0, '', 2, 2065, '8:15 PM', 'The World Has Ever Seen!'),
('Wake Up', 0, '', 3, 3001, '8:30 AM', 'Early Breakfast served in the Junior Ballrooms until 10:30 AM'),
('Shacharis in the Shul', 0, '', 3, 3005, '9:00 AM', '(Beethoven & Brahms Ballrooms)'),
('Shabbos Meal', 0, '', 3, 3010, '11:30 AM', 'in the Grand Ballroom'),
('Super Duper Activities', 0, '', 3, 3015, '1:00 PM', 'and Emotionalizational Speeches in the Shul (Beethoven & Brahms Ballrooms)'),
('Chill Time!', 0, '', 3, 3020, '2:00 PM', ''),
('Super Courage Bingo', 0, '', 3, 3025, '2:45 PM', 'in the Shul (Beethoven & Brahms Ballrooms)'),
('Mincha', 0, '', 3, 3030, '3:45 PM', 'in the Shul (Beethoven & Brahms Ballrooms)'),
('Shalosh Seudos', 0, '', 3, 3035, '4:15 PM', 'in the Grand Ballroom'),
('Maariv', 0, '', 3, 3040, '5:19 PM', 'in the Shul. Havdala will follow.'),
('Pack up', 0, '', 3, 3045, '5:30 PM', 'and bring your luggage downstairs to the Melava Malka.'),
('Melava Malka', 0, '', 3, 3050, '6:30 PM', 'and Concert in the Grand Ballroom! Party hard!'),
('Bedtime', 0, '', 3, 3055, '8:30 PM', 'Get an early night for skiing tomorrow! Get to bed y''all!'),
('Wake up, Couragers!', 0, '', 4, 4001, '5:50 AM', 'The big day has arrived!!!'),
('Shacharis', 0, '', 4, 4005, '6:20 AM', 'in the Shul. (Earliest time for tallis and tfillin)'),
('Breakfast', 0, '', 4, 4010, '6:50 AM', 'in the Grand Ballroom. You must come to breakfast already dressed to ski.'),
('Depart to Mount Snow', 0, '', 4, 4015, '7:35 AM', '39 Mount Snow Road, West Dover, VT 05356'),
('Arrive at', 0, '', 4, 4020, '9:50 AM', 'Mount Snow!!!'),
('Skiing', 1, 'trail_map', 4, 4025, '10:20 AM', 'Until 3:30 PM. Please note: the Grand Summit Ballroom will be reserved specifically for KoC. Take breaks when needed during the day and chill out there - our activity team will entertain you with games and snacks!  It is very important to come inside if y'),
('Hot Lunch', 0, '', 4, 4030, '12:00 PM', 'will be served at the Grand Summit Ballroom (last call for lunch is at 3:00 PM!)'),
('Mincha', 0, '', 4, 4035, '3:30 PM', ''),
('Photo Shoot', 0, '', 4, 4040, '3:45 PM', 'The Official KoC Ski Madness Winter Wonderland 2016 Photo Taking will take place in the Grand Summit Ballroom. '),
('Depart Home', 0, '', 4, 4045, '4:00 PM', 'Buses leave to Brooklyn. Hope you guys had fun!'),
('Arrive', 0, '', 4, 4050, '9:00 PM', 'in Brooklyn at: \r\n1602 Chestnut Avenue, Brooklyn, NY 11230');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
