-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 03:42 AM
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
-- Database: `uiu`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Id` int(11) NOT NULL,
  `Title` text DEFAULT NULL,
  `Credit_Hour` int(11) DEFAULT NULL,
  `Room` text DEFAULT NULL,
  `Faculty` text DEFAULT NULL,
  `Section` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Id`, `Title`, `Credit_Hour`, `Room`, `Faculty`, `Section`) VALUES
(1, 'Introduction to Computer Science', 3, 'Room A', 'John Doe', 'A1'),
(2, 'Data Structures and Algorithms', 4, 'Room B', 'Jane Smith', 'B1'),
(3, 'Database Management Systems', 3, 'Room C', 'Michael Johnson', 'C1'),
(4, 'Web Development', 3, 'Room D', 'Emily Brown', 'D1'),
(5, 'Artificial Intelligence', 4, 'Room E', 'David Lee', 'E1');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Name` text DEFAULT NULL,
  `Designation` text DEFAULT NULL,
  `Room` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Designation`, `Room`) VALUES
('John Doe', 'Professor', 'Room 101'),
('Jane Smith', 'Assistant Professor', 'Room 102'),
('Michael Johnson', 'Associate Professor', 'Room 103'),
('Emily Brown', 'Lecturer', 'Room 104'),
('David Lee', 'Adjunct Faculty', 'Room 105');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
