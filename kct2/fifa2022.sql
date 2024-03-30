-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 05:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fifa2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `groupx`
--

CREATE TABLE `groupx` (
  `Team` varchar(50) NOT NULL,
  `Point` int(11) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groupx`
--

INSERT INTO `groupx` (`Team`, `Point`, `Position`) VALUES
('Team1', 0, 0),
('Team2', 0, 0),
('Team3', 0, 0),
('Team4', 0, 0),
('Team5', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `matchy`
--

CREATE TABLE `matchy` (
  `TeamA` varchar(50) DEFAULT NULL,
  `GoalA` int(11) DEFAULT NULL,
  `TeamB` varchar(50) DEFAULT NULL,
  `GoalB` int(11) DEFAULT NULL,
  `PointA` int(11) DEFAULT NULL,
  `PointB` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matchy`
--

INSERT INTO `matchy` (`TeamA`, `GoalA`, `TeamB`, `GoalB`, `PointA`, `PointB`) VALUES
('Team1', 2, 'Team2', 1, 3, 0),
('Team3', 0, 'Team4', 3, 0, 3),
('Team5', 1, 'Team1', 1, 1, 1),
('Team2', 2, 'Team3', 2, 1, 1),
('Team4', 0, 'Team5', 2, 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groupx`
--
ALTER TABLE `groupx`
  ADD PRIMARY KEY (`Team`);

--
-- Indexes for table `matchy`
--
ALTER TABLE `matchy`
  ADD KEY `TeamA` (`TeamA`),
  ADD KEY `TeamB` (`TeamB`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `matchy`
--
ALTER TABLE `matchy`
  ADD CONSTRAINT `matchy_ibfk_1` FOREIGN KEY (`TeamA`) REFERENCES `groupx` (`Team`),
  ADD CONSTRAINT `matchy_ibfk_2` FOREIGN KEY (`TeamB`) REFERENCES `groupx` (`Team`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
