-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 01:55 PM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `81746_examen`
--

-- --------------------------------------------------------

--
-- Table structure for table `finalResults`
--

CREATE TABLE `finalResults` (
  `finalResults_id` int(11) NOT NULL,
  `firstPlace` int(11) NOT NULL,
  `secondPlace` int(11) NOT NULL,
  `thirdPlace` int(11) NOT NULL,
  `fourthPlace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `finalResults`
--

INSERT INTO `finalResults` (`finalResults_id`, `firstPlace`, `secondPlace`, `thirdPlace`, `fourthPlace`) VALUES
(1, 3, 16, 15, 18),
(2, 11, 14, 15, 19),
(3, 11, 16, 9, 17),
(4, 1, 5, 8, 18);

-- --------------------------------------------------------

--
-- Table structure for table `landen`
--

CREATE TABLE `landen` (
  `country_id` int(11) NOT NULL,
  `countryName` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `landen`
--

INSERT INTO `landen` (`country_id`, `countryName`) VALUES
(1, 'Engeland'),
(2, 'Oekraïne'),
(3, 'Duitsland'),
(4, 'Zwitserland'),
(5, 'Kroatië'),
(6, 'Spanje'),
(7, 'Polen'),
(8, 'Frankrijk'),
(9, 'België'),
(10, 'Italië'),
(11, 'Tsjechië'),
(12, 'Portugal'),
(13, 'Nederland'),
(14, 'Denemarken'),
(15, 'Wales'),
(16, 'Zweden'),
(17, 'Oostenrijk'),
(18, 'Turkije'),
(19, 'Rusland'),
(20, 'Finland');

-- --------------------------------------------------------

--
-- Table structure for table `poule`
--

CREATE TABLE `poule` (
  `poule_id` int(11) NOT NULL,
  `pouleName` varchar(60) NOT NULL,
  `resultsConfirmed` int(11) NOT NULL,
  `createdBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poule`
--

INSERT INTO `poule` (`poule_id`, `pouleName`, `resultsConfirmed`, `createdBy`) VALUES
(1, 'TOTO KNVB', 1, 80),
(2, 'test', 1, 1),
(3, 'test 1', 1, 1),
(4, 'Test poule', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userRank` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `userRank`) VALUES
(1, 'admin', '906072001efddf3e11e6d2b5782f4777fe038739', 2),
(80, 'Lazar', 'e7e33e758ffd70a9e54be4e8b58d800ce0d60272', 1),
(82, 'CmYAgSd4lW', '43b591c9aeff27bc9b446764bad4eeebc69cffb1', 0),
(83, 'K8ceJlFbUB', '51794e511c3db0733c37c2c5f43d30d6d72fc5b0', 0),
(84, '8niG7TkUnP', '3ac157bcce8bec8c8ff117740e59a0d05eddc95d', 0),
(85, '0etPeNiHmh', '20adec2164f4585a5344c60fa745bdbb9f033dcf', 0),
(86, 'UeNgyMsk5N', '1a30f9f2d28d3d165e6127b13b0772438868cc22', 0),
(87, '3FhUU84lbj', '026c62ce1180bb63f039907ded663333a11eff73', 0),
(88, 'UjC7lUiM6t', 'a168af2c18da07cf504b4b77a14ab4d7a80b91b4', 0),
(89, '4TKFhHiS03', '8098592daf742831dbf8596b063402a8bdea131b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userPoules`
--

CREATE TABLE `userPoules` (
  `userPoules_id` int(11) NOT NULL,
  `poule_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstPlace_countryID` int(11) DEFAULT NULL,
  `secondPlace_countryID` int(11) DEFAULT NULL,
  `thirdPlace_countryID` int(11) DEFAULT NULL,
  `fourthPlace_countryID` int(11) DEFAULT NULL,
  `placeUpdateTimer` datetime DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userPoules`
--

INSERT INTO `userPoules` (`userPoules_id`, `poule_id`, `user_id`, `firstPlace_countryID`, `secondPlace_countryID`, `thirdPlace_countryID`, `fourthPlace_countryID`, `placeUpdateTimer`, `points`) VALUES
(2, 1, 82, NULL, NULL, NULL, NULL, '2020-05-20 13:00:00', NULL),
(3, 1, 83, NULL, NULL, NULL, NULL, '2020-05-20 13:00:00', NULL),
(4, 1, 84, NULL, NULL, NULL, NULL, '2020-05-20 13:00:00', NULL),
(5, 1, 85, NULL, NULL, NULL, NULL, '2020-05-20 13:00:00', NULL),
(6, 2, 86, NULL, NULL, NULL, NULL, '2020-05-20 13:00:00', NULL),
(7, 3, 87, 1, 2, 3, 4, '2020-05-25 00:00:00', NULL),
(8, 4, 88, NULL, NULL, NULL, NULL, '2020-05-20 06:00:00', 5),
(9, 4, 89, NULL, NULL, NULL, NULL, '2020-05-20 06:00:00', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `finalResults`
--
ALTER TABLE `finalResults`
  ADD PRIMARY KEY (`finalResults_id`);

--
-- Indexes for table `landen`
--
ALTER TABLE `landen`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `poule`
--
ALTER TABLE `poule`
  ADD PRIMARY KEY (`poule_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `userPoules`
--
ALTER TABLE `userPoules`
  ADD PRIMARY KEY (`userPoules_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finalResults`
--
ALTER TABLE `finalResults`
  MODIFY `finalResults_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `landen`
--
ALTER TABLE `landen`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `poule`
--
ALTER TABLE `poule`
  MODIFY `poule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `userPoules`
--
ALTER TABLE `userPoules`
  MODIFY `userPoules_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
