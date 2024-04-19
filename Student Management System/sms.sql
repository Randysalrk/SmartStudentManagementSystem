-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2023 at 12:03 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `Topic` varchar(50) NOT NULL,
  `announce` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`Topic`, `announce`) VALUES
('Exam Notice', 'fgsd dsfsdfsdfs vd fdvfsdf'),
('Special News', 'News is not Important');

-- --------------------------------------------------------

--
-- Table structure for table `lcattendence`
--

CREATE TABLE IF NOT EXISTS `lcattendence` (
  `LecID` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lcattendence`
--

INSERT INTO `lcattendence` (`LecID`, `Date`) VALUES
('Lec-1023', '2023-09-14'),
('Lec-5056', '2023-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE IF NOT EXISTS `lecture` (
  `LecID` varchar(50) NOT NULL,
  `FullName` varchar(250) NOT NULL,
  `IDNo` varchar(15) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `DOB` date NOT NULL,
  `CourseName` text NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`LecID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`LecID`, `FullName`, `IDNo`, `Address`, `DOB`, `CourseName`, `Password`) VALUES
('Lec-1023', 'Chandike12', '754213645', '452/A Gampaha &', '1970-06-05', 'HNDIT', '1212'),
('Lec-7854', 'Kumara', '75482163v', '45/A as', '2020-10-27', 'HNDIT', '45');

-- --------------------------------------------------------

--
-- Table structure for table `stattendence`
--

CREATE TABLE IF NOT EXISTS `stattendence` (
  `RegNo` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stattendence`
--

INSERT INTO `stattendence` (`RegNo`, `Date`) VALUES
('TAN/IT/0002', '2023-09-16'),
('TAN/IT/0002', '2023-09-15'),
('TAN/IT', '2023-09-09'),
('Tan/02222', '2023-09-23'),
('TAN/IT/0002', '2023-09-16'),
('TAN/IT/0002', '2023-09-17'),
('TAN/IT/0002', '2023-09-18'),
('TAN/IT/0002', '2023-09-19'),
('TAN/IT/0002', '2023-09-22'),
('TAN/IT/0002', '2023-09-20'),
('TAN/IT/2021/0014', '2023-09-20'),
('TAN/IT/0002', '2023-09-20'),
('TAN/IT/0002', '2023-09-20'),
('TAN/IT/0002', '2023-09-20'),
('TAN/IT/0002', '2023-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `RegNo` varchar(50) NOT NULL,
  `FullName` varchar(150) NOT NULL,
  `IDNo` varchar(15) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `image` blob,
  PRIMARY KEY (`RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`RegNo`, `FullName`, `IDNo`, `Address`, `DOB`, `CourseName`, `Password`, `image`) VALUES
('TAN/IT/0002', 'P.L.W.Kumara', '991441034v', '554/1 Temple Road', '1999-05-23', 'HNDE', '1234', ''),
('TAN/IT/00025', 'chamod', '452', '452', '2023-09-21', 'HNDIT', '4536', NULL),
('TAN/IT/0003', 'wasa', '7548', '45/a', '2023-09-20', 'HNDIT', '4521', NULL),
('TAN/IT/0006', 'Yasindu', '2001456325', 'Radampola Dikwella', '2001.06.03', 'HNDIT', '456745', ''),
('TAN/IT/0008', '12', '12', '21', '2023-09-15', 'HNDIT', '12', NULL),
('TAN/IT/2020/100', 'Gayan45', '452122333v', '86/A ATM', '2000-10-06', 'HNDE', '4521', ''),
('TAN/IT/2021/0014', 'Menaka', '20001547856', '45/A Ambalantota', '2000-06-20', 'HNDIT', '4563', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
