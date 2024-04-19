-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 24, 2023 at 08:54 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
CREATE TABLE IF NOT EXISTS `announcement` (
  `Topic` varchar(50) NOT NULL,
  `announce` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lcattendence`
--

DROP TABLE IF EXISTS `lcattendence`;
CREATE TABLE IF NOT EXISTS `lcattendence` (
  `LecID` varchar(16) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`LecID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
CREATE TABLE IF NOT EXISTS `lecture` (
  `IDNo` varchar(16) NOT NULL,
  `Fullname` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `DOB` date NOT NULL,
  `CourseName` varchar(5) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`IDNo`),
  UNIQUE KEY `IDNo` (`IDNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stattendence`
--

DROP TABLE IF EXISTS `stattendence`;
CREATE TABLE IF NOT EXISTS `stattendence` (
  `RegNo` varchar(16) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`RegNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `Fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IDNo` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `CourseName` text NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Photo` bit(64) NOT NULL,
  PRIMARY KEY (`IDNo`),
  UNIQUE KEY `IDNo` (`IDNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
