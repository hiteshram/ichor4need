-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2014 at 01:25 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ichor`
--

-- --------------------------------------------------------

--
-- Table structure for table `abnegative`
--

CREATE TABLE IF NOT EXISTS `abnegative` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `abpositive`
--

CREATE TABLE IF NOT EXISTS `abpositive` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anegative`
--

CREATE TABLE IF NOT EXISTS `anegative` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apositive`
--

CREATE TABLE IF NOT EXISTS `apositive` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apositive`
--

INSERT INTO `apositive` (`fname`, `lname`, `gender`, `bloodgroup`, `mobile`, `residence`, `email`, `address`, `state`, `city`, `availability`, `username`) VALUES
('Hitesh Ram', 'Kotha', 'male', 'A+', 9491730170, 8662415817, 'hiteshram.kotha@gmail.com', 'D.No - 3-1-1\r\nRamrajyanagar\r\nAmbedhkar Road', 'Andhra Pradesh (AP)', 'Hyderabad', 'YES', 'hitesh'),
('sai', 'pradyumna', 'male', 'A+', 8886972313, 8886972313, 'saipradyumna8695@gmail.com', 'kanuru', 'Andhra Pradesh (AP)', 'Vijayawada', 'YES', 'saipradyumna007');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE IF NOT EXISTS `availability` (
  `username` varchar(30) NOT NULL,
  `available` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`username`, `available`) VALUES
('hitesh', 'YES'),
('krishna', 'YES'),
('saipradyumna007', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `bnegative`
--

CREATE TABLE IF NOT EXISTS `bnegative` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bnegative`
--

INSERT INTO `bnegative` (`fname`, `lname`, `gender`, `bloodgroup`, `mobile`, `residence`, `email`, `address`, `state`, `city`, `availability`, `username`) VALUES
('Krishna Teja', 'Nalluri', 'male', 'B-', 7730995475, 866247516, 'nalluri999@gmail.com', '3B4,Rajeswari Residency, Brundhavan Colony', 'Andhra Pradesh (AP)', 'Hyderabad', 'YES', 'krishna');

-- --------------------------------------------------------

--
-- Table structure for table `bombay`
--

CREATE TABLE IF NOT EXISTS `bombay` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpositive`
--

CREATE TABLE IF NOT EXISTS `bpositive` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_ichor`
--

CREATE TABLE IF NOT EXISTS `login_ichor` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_ichor`
--

INSERT INTO `login_ichor` (`fname`, `lname`, `username`, `password`) VALUES
('Hitesh Ram', 'Kotha', 'hitesh', 'khrvja8'),
('Krishna Teja', 'Nalluri', 'krishna', 'nalluri'),
('sai', 'pradyumna', 'saipradyumna007', '345678');

-- --------------------------------------------------------

--
-- Table structure for table `onegative`
--

CREATE TABLE IF NOT EXISTS `onegative` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opositive`
--

CREATE TABLE IF NOT EXISTS `opositive` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `availability` varchar(3) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE IF NOT EXISTS `phone` (
  `username` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(15) NOT NULL,
  `office` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`username`, `mobile`, `residence`, `office`) VALUES
('hitesh', 9491730170, 8662415817, 9246493216),
('krishna', 7730995475, 866247516, 866238155),
('saipradyumna007', 8886972313, 8886972313, 8666688888);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bloodgroup` varchar(30) NOT NULL,
  `weight` int(4) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `residence` bigint(10) NOT NULL,
  `office` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `DOLG` date NOT NULL,
  `often` varchar(20) NOT NULL,
  `Message` varchar(200) NOT NULL,
  `availability` varchar(10) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fname`, `lname`, `username`, `password`, `DOB`, `gender`, `bloodgroup`, `weight`, `mobile`, `residence`, `office`, `email`, `address`, `city`, `state`, `DOLG`, `often`, `Message`, `availability`) VALUES
('Hitesh Ram', 'Kotha', ' hitesh', ' khrvja', '1995-01-17', ' male', ' A+', 85, 9491730170, 8662415817, 9246493216, ' hiteshram.kotha@gmail.com', ' D.No - 3-1-1\r\nRamrajyanagar\r\nAmbedhkar Road', ' Hyderabad', ' Andhra Pradesh (AP)', '2014-06-01', ' Yet to Donate', ' It gives me satisfaction', 'YES'),
('Krishna Teja', 'Nalluri', ' krishna', ' nalluri', '1993-07-27', ' male', ' B-', 62, 7730995475, 866247516, 866238155, ' nalluri999@gmail.com', ' 3B4,Rajeswari Residency, Brundhavan Colony', ' Hyderabad', ' Andhra Pradesh (AP)', '2014-06-15', ' On need', ' safe a life with your blood', 'YES'),
('sai', 'pradyumna', ' saipradyumna007', ' 123456', '1995-06-08', ' male', ' A+', 70, 8886972313, 8886972313, 8666688888, ' saipradyumna8695@gmail.com', ' kanuru', ' Vijayawada', ' Andhra Pradesh (AP)', '2014-06-01', ' On need', ' Donating blood not only helps others but also helps in purifying the blood in our body', 'YES');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
